unit LancamentoContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, ComCtrls, Buttons, StdCtrls, DB,
  DBCtrls, CellEditors, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Mask, DateUtils,
  Menus,ComObj,wwdblook, Wwdbdlg, XDBGrids,RXDBCtrl, SUIDBCtrls, SUIButton, SUIImagePanel,
  SUIGroupBox, SUIRadioGroup,  sLabel, ImgList,
  frxClass, frxDBSet, Calendar, CalPanel,  System.ImageList,
  RxCurrEdit, RxToolEdit, System.Math;

type
  TFrmLancamentoContrato = class(TForm)
    pgcContrato: TPageControl;
    tbGrid: TTabSheet;
    pnlNav: TPanel;
    Grid: TDBGrid;
    spbIncluir: TSpeedButton;
    spbAlterar: TSpeedButton;
    spbExcluir: TSpeedButton;
    dsContratos: TDataSource;
    tbEdit: TTabSheet;
    pnlFooterEdit: TPanel;
    spbCancelar: TSpeedButton;
    spbSalvar: TSpeedButton;
    Bevel1: TBevel;
    cbxContrato: TDBComboBox;
    Label2: TLabel;
    cbxCarct: TDBComboBox;
    Label3: TLabel;
    cbxTipoPlano: TDBComboBox;
    Label4: TLabel;
    Bevel2: TBevel;
    pgcEditContrato: TPageControl;
    tbSimples: TTabSheet;
    tbContratoVenda: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblParcelas: TLabel;
    cbxComprador: TComboBoxEditor;
    cbxImovel: TComboBoxEditor;
    cbxVendedor: TComboBoxEditor;
    tbContratoAluguel: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    cbxProprietario: TComboBoxEditor;
    cbxImovelAluguel: TComboBoxEditor;
    cbxInquilino: TComboBoxEditor;
    cbxFiador: TComboBoxEditor;
    Label10: TLabel;
    DBMemo2: TDBMemo;
    Label11: TLabel;
    cbxCliente: TComboBoxEditor;
    edtVencimentoSimples: TDateEdit;
    Label12: TLabel;
    Label23: TLabel;
    rdbAtivoInativo: TDBRadioGroup;
    dsView: TDataSource;
    dsParcela: TDataSource;
    edtValorSimples: TEdit;
    dsImovelVenda: TDataSource;
    edtParcelas: TEdit;
    rdgTipoVenda: TRadioGroup;
    lblVencimentoVenda: TLabel;
    cbxContratoFiador: TCheckBox;
    dsImovelAluguel: TDataSource;
    edtVigencia: TEdit;
    Label30: TLabel;
    Label13: TLabel;
    edtDataInicio: TDateEdit;
    Label14: TLabel;
    edtDataTermino: TDateEdit;
    Label15: TLabel;
    edtVencimentoPrimeiroDia: TEdit;
    Label8: TLabel;
    Label16: TLabel;
    edtCarenciaDias: TEdit;
    Label21: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    edtMultaAtraso: TEdit;
    edtJurosMora: TEdit;
    edtDesconto: TEdit;
    edtDescontoDia: TEdit;
    edtFinalidade: TEdit;
    mmObs: TMemo;
    Label22: TLabel;
    spbImprimir: TSpeedButton;
    pnlPesquisa: TPanel;
    Label1: TLabel;
    edtPesquisa: TEdit;
    SpeedButton1: TSpeedButton;
    spbBoletos: TSpeedButton;
    tbBoletos: TTabSheet;
    Panel1: TPanel;
    spbVoltar: TSpeedButton;
    spbGerarBoleto: TSpeedButton;
    GridParcelas: TDBGrid;
    GridBoletos: TDBGrid;
    myLabel3d1: TsLabelFX;
    img22: TImageList;
    spbExcluirBoleto: TSpeedButton;
    spbImprimirBoleto: TSpeedButton;
    dsCrediario: TDataSource;
    cbxTipoContrato: TComboBox;
    spbGerarBoletosSiace: TSpeedButton;
    cbxImprimirTodos: TCheckBox;
    edtVencimentoVenda: TDateEdit;
    cbxCentroCusto: TComboBoxEditor;
    Label27: TLabel;
    dsImovelCompra: TDataSource;
    tbContratoCompra: TTabSheet;
    Label28: TLabel;
    Label29: TLabel;
    lblParcelaCompra: TLabel;
    Label34: TLabel;
    cbxImovelCompra: TComboBoxEditor;
    cbxVendedorCompra: TComboBoxEditor;
    edtParcelaCompra: TEdit;
    rgpTipoCompra: TRadioGroup;
    edtDataCompra: TDateEdit;
    cbxCentroCustoCompra: TComboBoxEditor;
    Label35: TLabel;
    Label31: TLabel;
    edtValorCompra: TEdit;
    edtJurosParcela: TEdit;
    lblJurosParcela: TLabel;
    lblPorcent: TLabel;
    edtAvista: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    edtIntermediacao: TEdit;
    Label36: TLabel;
    edtValorProposta: TEdit;
    lblEntrada: TLabel;
    edtEntrada: TEdit;
    lblSaldoFinanciar: TLabel;
    edtSaldoFinanciar: TEdit;
    spbSomar: TSpeedButton;
    lblValorParce: TLabel;
    lblValorParcela: TLabel;
    cbxGerarTotos: TCheckBox;
    cbxExcluirTodos: TCheckBox;
    spbRelatorioContrato: TSpeedButton;
    frxDBDataset: TfrxDBDataset;
    frxReport: TfrxReport;
    qrContratoPrazo: TFDQuery;
    qrContratoPrazoEMPRESA: TStringField;
    qrContratoPrazoEMPRESA_CNPJ: TStringField;
    qrContratoPrazoEMPRESA_FONE: TStringField;
    qrContratoPrazoEMPRESA_LOGO: TBlobField;
    qrContratoPrazoCOMPRADOR_NOME: TStringField;
    qrContratoPrazoCOMPRADOR_CPF_CNPJ: TStringField;
    qrContratoPrazoCOMPRADOR_FONE: TStringField;
    qrContratoPrazoCOMPRADOR_ENDERECO: TStringField;
    qrContratoPrazoVENDEDOR_NOME: TStringField;
    qrContratoPrazoVENDEDOR_CPF_CNPJ: TStringField;
    qrContratoPrazoVENDEDOR_FONE: TStringField;
    qrContratoPrazoVENDEDOR_ENDERECO: TStringField;
    qrContratoPrazoIMOVEL_ENDERECO: TStringField;
    qrContratoPrazoVALOR_BRUTO: TBCDField;
    qrContratoPrazoINTERMEDIACAO: TBCDField;
    qrContratoPrazoVALOR_PROPOSTA: TBCDField;
    qrContratoPrazoENTRADA: TBCDField;
    qrContratoPrazoSALDO_FINANCIAR: TBCDField;
    qrContratoPrazoPARCELAS: TIntegerField;
    qrContratoPrazoJUROS: TBCDField;
    qrContratoPrazoVENCIMENTO: TDateField;
    qrContratoPrazoVALOR_PARCELAS: TBCDField;
    qrContratoPrazoVALOR_TOTAL_PARCELAS: TBCDField;
    qrContratoPrazoID_CONTRATO: TIntegerField;
    qrContratoPrazoID: TIntegerField;
    rdgParcelaEntrada: TRadioGroup;
    edtParcelasEntrada: TEdit;
    lblParcelasEntrada: TLabel;
    qrContratoVista: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    BlobField1: TBlobField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    IntegerField1: TIntegerField;
    BCDField6: TBCDField;
    DateField1: TDateField;
    BCDField7: TBCDField;
    BCDField8: TBCDField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    edtEntreMeses: TEdit;
    lblEntreMeses: TLabel;
    lblEntreMesMeses: TLabel;
    spbCancelarContrato: TSpeedButton;
    tbCancelaContrato: TTabSheet;
    Bevel3: TBevel;
    Label9: TLabel;
    Bevel4: TBevel;
    Label37: TLabel;
    lblReembolsoValor: TLabel;
    lblReembolsoTotalParcelas: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    lblReembolsoTotalPago: TLabel;
    spbCancelarReembolso: TSpeedButton;
    spbConfirmarReembolso: TSpeedButton;
    DBGrid1: TDBGrid;
    Bevel6: TBevel;
    Label42: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    SpeedButton2: TSpeedButton;
    gbxPagamento: TGroupBox;
    Label47: TLabel;
    spbPesquisaConta: TSpeedButton;
    Label48: TLabel;
    Label49: TLabel;
    edtCodigoConta: TEdit;
    edtNomeConta: TEdit;
    edtDocumento: TEdit;
    cbxDeposito: TCheckBox;
    cbxCompensarInclusao: TCheckBox;
    edtDataPredatado: TDateEdit;
    edtValorCaixa: TCurrencyEdit;
    edtValorBanco: TCurrencyEdit;
    edtValorCheques: TCurrencyEdit;
    edtValorTotal: TCurrencyEdit;
    edtValorReembolso: TCurrencyEdit;
    Label38: TLabel;
    Bevel5: TBevel;
    edtMotivo: TEdit;
    Label39: TLabel;
    qrcaixa_mov: TFDQuery;
    QInsCheque: TFDQuery;
    qrCrediarioCancelar: TFDQuery;
    qrCrediarioCancelarCODIGO: TIntegerField;
    qrCrediarioCancelarCODIGO_COMPRA: TIntegerField;
    qrCrediarioCancelarCODIGO_CLIENTE: TIntegerField;
    qrCrediarioCancelarDATA_COMPRA: TDateField;
    qrCrediarioCancelarDATA_VENCIMENTO: TDateField;
    qrCrediarioCancelarHISTORICO: TStringField;
    qrCrediarioCancelarUSUARIO_VENDA: TStringField;
    qrCrediarioCancelarSITUACAO: TStringField;
    qrCrediarioCancelarVALOR_COMPRA: TBCDField;
    qrCrediarioCancelarVALOR_JUROS: TBCDField;
    qrCrediarioCancelarVALOR_ACRESCIMO: TBCDField;
    qrCrediarioCancelarVALOR_DESCONTO: TBCDField;
    qrCrediarioCancelarVALOR_PAGO: TBCDField;
    qrCrediarioCancelarPARCELA: TStringField;
    qrCrediarioCancelarCOD_EMPRESA: TIntegerField;
    qrCrediarioCancelarTIPO: TStringField;
    qrCrediarioCancelarNOME_SACADO: TStringField;
    qrCrediarioCancelarANO: TStringField;
    qrCrediarioCancelarMES: TStringField;
    qrCrediarioCancelarID_CONTRATO: TIntegerField;
    qrCrediarioCancelarID_CT_PARCELA: TIntegerField;
    qrCrediarioCancelarVLR_GRAFICA: TBCDField;
    qrCrediarioCancelarN_OS: TStringField;
    dsCrediarioCancelar: TDataSource;
    procedure cbxVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure spbIncluirClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
    procedure spbSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure spbExcluirClick(Sender: TObject);
    procedure cbxImovelKeyPress(Sender: TObject; var Key: Char);
    procedure cbxCompradorKeyPress(Sender: TObject; var Key: Char);
    procedure rdgTipoVendaClick(Sender: TObject);
    procedure cbxProprietarioKeyPress(Sender: TObject; var Key: Char);
    procedure cbxImovelAluguelKeyPress(Sender: TObject; var Key: Char);
    procedure cbxInquilinoKeyPress(Sender: TObject; var Key: Char);
    procedure cbxFiadorKeyPress(Sender: TObject; var Key: Char);
    procedure cbxContratoFiadorClick(Sender: TObject);
    procedure edtDataInicioChange(Sender: TObject);
    procedure spbAlterarClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure edtVencimentoPrimeiroDiaKeyPress(Sender: TObject;
      var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spbImprimirClick(Sender: TObject);
    procedure spbBoletosClick(Sender: TObject);
    procedure GridParcelasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure spbVoltarClick(Sender: TObject);
    procedure GridParcelasCellClick(Column: TColumn);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure spbGerarBoletoClick(Sender: TObject);
    procedure spbExcluirBoletoClick(Sender: TObject);
    procedure spbImprimirBoletoClick(Sender: TObject);
    procedure cbxTipoContratoChange(Sender: TObject);
    procedure spbGerarBoletosSiaceClick(Sender: TObject);
    procedure cbxContratoClick(Sender: TObject);
    procedure cbxClienteKeyPress(Sender: TObject; var Key: Char);
    procedure rgpTipoCompraClick(Sender: TObject);
    procedure edtValorCompraEnter(Sender: TObject);
    procedure edtValorCompraExit(Sender: TObject);
    procedure cbxVendedorCompraKeyPress(Sender: TObject; var Key: Char);
    procedure cbxImovelCompraKeyPress(Sender: TObject; var Key: Char);
    procedure cbxCentroCustoCompraKeyPress(Sender: TObject; var Key: Char);
    procedure cbxCentroCustoKeyPress(Sender: TObject; var Key: Char);
    procedure edtJurosParcelaEnter(Sender: TObject);
    procedure edtJurosParcelaExit(Sender: TObject);
    procedure cbxImovelCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxImovelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxImovelAluguelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxCompradorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxProprietarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxInquilinoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxFiadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxCentroCustoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxCentroCustoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtAvistaEnter(Sender: TObject);
    procedure edtAvistaExit(Sender: TObject);
    procedure spbSomarClick(Sender: TObject);
    procedure cbxGerarTotosClick(Sender: TObject);
    procedure cbxVendedorCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spbRelatorioContratoClick(Sender: TObject);
    procedure rdgParcelaEntradaClick(Sender: TObject);
    procedure spbCancelarContratoClick(Sender: TObject);
    procedure spbCancelarReembolsoClick(Sender: TObject);
    procedure edtValorCaixaExit(Sender: TObject);
    procedure spbPesquisaContaClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure spbConfirmarReembolsoClick(Sender: TObject);
  private
    { Private declarations }
    procedure PesquisaCliente(Pesquisa: String; Campo: TComboBoxEditor);
    procedure PesquisaImovel(Pesquisa: String; Campo: TComboBoxEditor);
    procedure PesquisaCentroCusto(Pesquisa: String; Campo: TComboBoxEditor);
    function SalvaCampos(Tabela, Nome, Condicao,Field: String):Integer;
    function ValorImovel(QualValor: String; ID: Integer): Currency;
    function PassaNomeCliente(ID: Integer): string;
    function PassaNomeCentroCusto(ID: Integer): string;
    function PassaNomeImovel(ID: Integer): string;
    function Extenso(Valor: Extended; Moeda: Boolean;
  Tipo: Integer): String;
    function MessageDlgAde(Msg: string; AType: TMsgDlgType;
  AButtons:TMsgDlgButtons; IndiceHelp: LongInt; DefButton: TMOdalResult;
  Portugues: Boolean): Word;
  public
    { Public declarations }
    function ConverteReais(Valor: String): Currency;
    function ConverteText(Valor: String): string;
    procedure AlteraValorCustoImovel(ID_IMOVEL: Integer);
    procedure AlteraEstoqueImovel(ID_IMOVEL: Integer; Estoque: Currency);
    procedure CalculaValores(Avista,intermed,Entrada: Currency);
  ///  function Power(Base, Exponent: Extended): Extended;
  end;

var
  FrmLancamentoContrato: TFrmLancamentoContrato;
  ReeembolsoValorpago: Currency;

  implementation

uses uDMMovimentacao, ModulodeDados, extenso1, Principal,
  Titulos, Udmcob, ModulodeDadosConsultas, TitulosBancarios, BoletoSiace,
  OnGuard, OgUtil, ModuleDados1, PesquisaImoveis, ConsClientes,
  loc_centrocusto, DMOS1, ConsContaBancariapas, contaspagar_cheque,
  Ubibli1;

const
  wdDoNotSaveChanges = 0;
  Wireless: array[1..9] of string = ('100K','200K','300K','400K','500K','600K','700K','800K','OUTROS');
  Siace: array[1..2] of string = ('Mensalidade','OUTROS');
  Venda: array[1..2] of string = ('Venda','OUTROS');
  Compra: array[1..2] of string = ('Compra','OUTROS');
  Aluguel: array[1..2] of string = ('Aluguel','OUTROS');

{$R *.dfm}

{ TFrmLancamentoContrato }

procedure TFrmLancamentoContrato.PesquisaCliente(Pesquisa: String; Campo: TComboBoxEditor);
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(Self);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Clear;
  if Pesquisa = '' then
    qr.SQL.Add('SELECT NOME_RS FROM CLIENTES')
  else
    qr.SQL.Add('SELECT NOME_RS FROM CLIENTES WHERE NOME_RS LIKE ' + QuotedStr('%'+UpperCase(Pesquisa)+'%'));
  qr.Open;

  Campo.Items.Clear;
  while not qr.Eof do
  begin
    Campo.Items.Add(qr.FieldByName('NOME_RS').AsString);
    qr.Next;
  end;
  qr.Destroy;
end;

function TFrmLancamentoContrato.SalvaCampos(Tabela, Nome,Condicao,Field : String):Integer;
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(Self);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Clear;
  qr.SQL.Add('SELECT * FROM ' + Tabela + ' WHERE '+ Condicao + ' = ' +QuotedStr(Nome));
  qr.Open;
  Result:= qr.FieldByName(Field).AsInteger;
  qr.Destroy;
end;

function TFrmLancamentoContrato.ValorImovel(QualValor: String; ID: Integer): Currency;
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(Self);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Clear;
  qr.SQL.Add('SELECT * FROM VIEW_IMOVEL WHERE ID  = ' +InttoStr(ID));
  qr.Open;
  Result:= qr.FieldByName(QualValor).AsCurrency;
  qr.Destroy;
end;

function TFrmLancamentoContrato.PassaNomeCliente(ID: Integer): string;
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(Self);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Clear;
  qr.SQL.Add('SELECT NOME_RS FROM CLIENTES WHERE CODIGO  = ' +InttoStr(ID));
  qr.Open;
  Result:= qr.FieldByName('NOME_RS').AsString;
  qr.Destroy;
end;

function TFrmLancamentoContrato.PassaNomeImovel(ID: Integer): string;
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(Self);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Clear;
  qr.SQL.Add('SELECT ENDERECO FROM VIEW_IMOVEL WHERE ID  = ' +InttoStr(ID));
  qr.Open;
  Result:= qr.FieldByName('ENDERECO').AsString;
  qr.Destroy;
end;

procedure TFrmLancamentoContrato.cbxVendedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PesquisaCliente(cbxVendedor.Text,cbxVendedor);
end;

procedure TFrmLancamentoContrato.spbIncluirClick(Sender: TObject);
begin
  dsContratos.DataSet.Insert;
  pgcContrato.ActivePage:= tbEdit;
  pgcEditContrato.ActivePage:= tbSimples;
  edtVencimentoSimples.Clear;
  edtValorSimples.Text:= '';
  PesquisaCliente('',cbxCliente);
  cbxCliente.Text:= '';
end;

procedure TFrmLancamentoContrato.spbCancelarClick(Sender: TObject);
begin
  pgcContrato.ActivePage:= tbGrid;
  dsContratos.DataSet.Cancel;
end;

procedure TFrmLancamentoContrato.spbSalvarClick(Sender: TObject);
var
  Vendedor,Comprador,Imovel,Cliente,I,A,ParcelaEntrada,Contrato,Fiador,CentroCusto: Integer;
  MSG: string;
  ValorParcela, JurosParcela,ValorComJuros: Currency;
  qr,qrCT: TFDQuery;
  dtaux : TDateTime;
  DT: string;
  Days: Extended;
begin
  dtAux := (StrToDate (edtVencimentoVenda.Text));

  Contrato:= dsContratos.DataSet.FieldByName('ID').AsInteger;
  if cbxContrato.Text = '' then
    MSG:= 'Selecione um tipo de contrato!';
  if cbxCarct.Text = '' then
     MSG:= 'Selecione uma caractetistica!';
  if cbxTipoPlano.Text = '' then
    MSG:= 'Selecione um tipo de plano!';

  if MSG <> '' then
  begin
    //Application.MessageBox((MSG),'Atenção',MB_ICONWARNING);
     MessageDlg((MSG), mtInformation,[mbOk], 0);
    Exit;
  end;
    
  if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'WIRELESS BANDA LARGA') or
     (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'SIACE SISTEMAS') then
  begin
    Cliente:= SalvaCampos('CLIENTES',cbxCliente.Text,'NOME_RS','CODIGO');
    if edtVencimentoSimples.Date = null then
      MSG:= 'Data de vencimento encontra-se vazia!';
    if edtValorSimples.Text = '' then
      MSG:= 'O valor do contrato encontra-se vazio!';
    if not (rdbAtivoInativo.ItemIndex = 0) and not (rdbAtivoInativo.ItemIndex = 1) then
      MSG:= 'Verifique se o contrato está ativo ou inativo!';
    if Cliente = 0 then
      MSG:= 'Cliente selecionado não existe!!!';

    if MSG <> '' then
    begin
     // Application.MessageBox(PAnsiChar(MSG),'Atenção',MB_ICONWARNING);
       MessageDlg((MSG), mtInformation,[mbOk], 0);
      Exit;
    end;
  end
  else
  if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'VENDA DE IMÓVEL') then
  begin
    Vendedor:= SalvaCampos('CLIENTES',cbxVendedor.Text,'NOME_RS','CODIGO');
    Imovel:= SalvaCampos('VIEW_IMOVEL',cbxImovel.Text,'ENDERECO','ID');
    CentroCusto:= SalvaCampos('CENTRO_CUSTO',cbxCentroCusto.Text,'DESCRICAO','COD_CENTRO');
    qr:= TFDQuery.Create(Self);
    qr.Connection:= DM.Coneccao;
    qr.SQL.Clear;
    if dsImovelVenda.DataSet.Filtered = True then
    begin
      if Imovel <> dsImovelVenda.DataSet.FieldByName('ID_IMOVEL').AsInteger then
      begin
        qr.SQL.Add('SELECT SITUACAO FROM PRODUTOS_IMOVEL WHERE ID = ' + IntToStr(Imovel));
        qr.Open;
        if (qr.FieldByName('SITUACAO').AsString = 'VENDIDO') or
           (qr.FieldByName('SITUACAO').AsString = 'ALUGADO') then
        begin
          Imovel:= 0;
        end;
        qr.Destroy;
      end;
    end
    else
    begin
      qr.SQL.Add('SELECT SITUACAO FROM PRODUTOS_IMOVEL WHERE ID = ' + IntToStr(Imovel));
      qr.Open;
      if (qr.FieldByName('SITUACAO').AsString = 'VENDIDO') or
         (qr.FieldByName('SITUACAO').AsString = 'ALUGADO') then
      begin
        Imovel:= 0;
      end;
      qr.Destroy;
    end;
    Comprador:= SalvaCampos('CLIENTES',cbxComprador.Text,'NOME_RS','CODIGO');
    if Vendedor = 0 then
      MSG:= 'Vendedor selecionado não existe!!!';
    if Imovel = 0 then
      MSG:= 'Imóvel selecionado não existe, ou já se encontra vendindo!!!';
    if Comprador = 0 then
      MSG:= 'Comprador selecionado não existe!!!';
    if (Vendedor = Comprador) or (Comprador = Vendedor) then
      MSG:= 'Vendedor não pode ser o mesmo Comprador, ou vice-versa!!!';
    if edtVencimentoVenda.Date = null then
      MSG:= 'Data de vencimento encontra-se vazia!';
    if (edtParcelas.Visible = True) and (edtParcelas.Text = '') then
      MSG:= 'Selecione a quantidade de parcelas!';
    {if (edtJurosParcela.Visible = True) and (edtJurosParcela.Text = '') then
      MSG:= 'Selecione o juros de parcelas!';}
    if CentroCusto = 0 then
      MSG:= 'Centro de Custo não existe!';
    if rdgTipoVenda.ItemIndex = 1 then
    begin
      if lblValorParcela.caption = '0,00' then
        MSG:= 'É necessário somar!';

      if (rdgParcelaEntrada.ItemIndex = 0) and (edtParcelasEntrada.Text = '') then
        MSG:= 'É necessário colocar a quantidade de parcelas da entrada!';
      if (rdgParcelaEntrada.ItemIndex = 0) and (edtParcelasEntrada.Text = '0') then
        MSG:= 'É necessário colocar a quantidade de parcelas da entrada!';

      if (edtEntreMeses.Text = '') or (edtEntreMeses.Text = '0') then
        MSG:= 'É necessário colocar entre meses!';

    end;

    if MSG <> '' then
    begin
     // Application.MessageBox(PAnsiChar(MSG),'Atenção',MB_ICONWARNING);
      MessageDlg((MSG), mtInformation,[mbOk], 0);
      Exit;
    end;
  end
  else
  if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'COMPRA DE IMÓVEL') then
  begin
    Vendedor:= SalvaCampos('CLIENTES',cbxVendedorCompra.Text,'NOME_RS','CODIGO');
    Imovel:= SalvaCampos('VIEW_IMOVEL',cbxImovelCompra.Text,'ENDERECO','ID');
    CentroCusto:= SalvaCampos('CENTRO_CUSTO',cbxCentroCustoCompra.Text,'DESCRICAO','COD_CENTRO');

    if Vendedor = 0 then
      MSG:= 'Vendedor selecionado não existe!!!';
    if Imovel = 0 then
      MSG:= 'Imóvel selecionado não existe, ou já se encontra vendindo!!!';
    if edtDataCompra.Date = null then
      MSG:= 'Data de vencimento encontra-se vazia!';
    if (edtParcelaCompra.Visible = True) and (edtParcelaCompra.Text = '') then
      MSG:= 'Selecione a quantidade de parcelas!';
    if CentroCusto = 0 then
      MSG:= 'Centro de Custo não existe!';

    if MSG <> '' then
    begin
      //Application.MessageBox(PAnsiChar(MSG),'Atenção',MB_ICONWARNING);
      MessageDlg((MSG), mtInformation,[mbOk], 0);
      Exit;
    end;
  end
  else
  if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'ALUGUEL DE IMÓVEL')  then
  begin
    Vendedor:= SalvaCampos('CLIENTES',cbxProprietario.Text,'NOME_RS','CODIGO');
    Imovel:= SalvaCampos('VIEW_IMOVEL',cbxImovelAluguel.Text,'ENDERECO','ID');
    qr:= TFDQuery.Create(Self);
    qr.Connection:= DM.Coneccao;
    qr.SQL.Clear;
    if dsImovelAluguel.DataSet.Filtered = True then
    begin
      if Imovel <> dsImovelAluguel.DataSet.FieldByName('ID_IMOVEL').AsInteger then
      begin
        qr.SQL.Add('SELECT SITUACAO FROM PRODUTOS_IMOVEL WHERE ID = ' + IntToStr(Imovel));
        qr.Open;
        if (qr.FieldByName('SITUACAO').AsString = 'VENDIDO') or
           (qr.FieldByName('SITUACAO').AsString = 'ALUGADO') then
        begin
          Imovel:= 0;
        end;
        qr.Destroy;
      end;
    end
    else
    begin
      qr.SQL.Add('SELECT SITUACAO FROM PRODUTOS_IMOVEL WHERE ID = ' + IntToStr(Imovel));
      qr.Open;
      if (qr.FieldByName('SITUACAO').AsString = 'VENDIDO') or
         (qr.FieldByName('SITUACAO').AsString = 'ALUGADO') then
      begin
        Imovel:= 0;
      end;
      qr.Destroy;
    end;
    Comprador:= SalvaCampos('CLIENTES',cbxInquilino.Text,'NOME_RS','CODIGO');
    if cbxContratoFiador.Checked = True then
    begin
      Fiador:= SalvaCampos('CLIENTES',cbxFiador.Text,'NOME_RS','CODIGO');
      if Fiador = 0 then
        MSG:= 'Fiador selecionado não existe!!!';
    end;

    if Vendedor = 0 then
      MSG:= 'Proprietário selecionado não existe!!!';
    if Imovel = 0 then
      MSG:= 'Imóvel selecionado não existe, ou já se encontra alugado!!!';
    if Comprador = 0 then
      MSG:= 'Inquilino selecionado não existe!!!';
    if (Vendedor = Comprador) or (Comprador = Vendedor) then
      MSG:= 'Proprietário não pode ser o mesmo Inquilino, ou vice-versa!!!';
    if edtVigencia.Text = '' then
      MSG:= 'O campo Vigência encontra-se vazio!';
    if edtMultaAtraso.Text = '' then
      MSG:= 'O campo Multa atraso encontra-se vazio!';
    if edtDataInicio.date = Null then
      MSG:= 'O campo Data Inicio encontra-se vazio!';
    if edtVencimentoPrimeiroDia.text = '' then
      MSG:= 'O campo Vencimento do primeiro dia encontra-se vazio!';
    if edtCarenciaDias.text = '' then
      MSG:= 'O campo Carencia encontra-se vazio!';
   { if edtJurosMora.text = '' then
      MSG:= 'O campo Juros mora encontra-se vazio!'; }
    if edtDesconto.text = '' then
      MSG:= 'O campo Desconto encontra-se vazio!';
    if edtDescontoDia.text = '' then
      MSG:= 'O campo Desconto Dia encontra-se vazio!';
    if edtFinalidade.text = '' then
      MSG:= 'O campo Finalidade encontra-se vazio!';

    if MSG <> '' then
    begin
     // Application.MessageBox(PAnsiChar(MSG),'Atenção',MB_ICONWARNING);
      MessageDlg((MSG), mtInformation,[mbOk], 0);
      Exit;
    end;
  end;

  dsContratos.DataSet.Post;
  if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'WIRELESS BANDA LARGA') or
     (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'SIACE SISTEMAS') then
  begin
    try
      if dsParcela.DataSet.Filtered = True then
      begin
        qr:= TFDQuery.Create(Self);
        qr.Connection:= DM.Coneccao;
        qr.SQL.Clear;
        qr.SQL.Add('DELETE FROM MV_CT_PARCELA WHERE ID_CONTRATO = ' + IntToStr(Contrato));
        qr.ExecSQL;
        dsParcela.DataSet.Filtered:= False;
        qr.Destroy;
      end;
    except
       Application.MessageBox('Não é possivel fazer a alteração desse contrato.'+
       ' Verifique se ele já possue boletos gerados!','Atenção',MB_ICONWARNING);
       Exit;
    end;

    dsParcela.DataSet.Insert;
    dsParcela.DataSet.FieldByName('ID_CONTRATO').AsInteger:= Contrato;
    dsParcela.DataSet.FieldByName('ID_CLIENTE').AsInteger:= Cliente;
    dsParcela.DataSet.FieldByName('NUMERO').AsInteger:= 1;
    dsParcela.DataSet.FieldByName('VALOR').AsCurrency:= StrToCurr(edtValorSimples.text);
    dsParcela.DataSet.FieldByName('LANCAMENTO').AsDateTime:= Now;
    dsParcela.DataSet.FieldByName('VENCIMENTO').AsDateTime:= edtVencimentoSimples.Date;
    dsParcela.DataSet.FieldByName('SITUACAO').asstring:= 'A';
    dsParcela.DataSet.Post;
  end
  else
  if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'VENDA DE IMÓVEL') then
  begin
    if dsImovelVenda.DataSet.Filtered = True then
      dsImovelVenda.DataSet.Edit
    else
      dsImovelVenda.DataSet.Insert;

    dsImovelVenda.DataSet.FieldByName('ID_CONTRATO').AsInteger:= Contrato;
    dsImovelVenda.DataSet.FieldByName('ID_COMPRADOR').AsInteger:= Comprador;
    dsImovelVenda.DataSet.FieldByName('ID_VENDEDOR').AsInteger:= Vendedor;
    dsImovelVenda.DataSet.FieldByName('ID_IMOVEL').AsInteger:= Imovel;
    dsImovelVenda.DataSet.FieldByName('ID_CENTRO_CUSTO').AsInteger:= CentroCusto;

    if rdgTipoVenda.ItemIndex = 0 then
    begin
      dsImovelVenda.DataSet.FieldByName('TIPO').AsString:= 'A-Vista';
      ValorParcela:= ConverteReais(edtAvista.text);
    end
    else
    begin
      {try
        qrCT:= TFDQuery.Create(nil);
        qrCT.Connection:= DM.Coneccao;
        qrCT.SQL.Add('INSERT INTO CONTABILIDADE (ID_PLANO_CONTA,ID_CONTRATO,LANCAMENTO,VALOR) VALUES (:PLANO,:CONTRATO,:LANCAMENTO,:VALOR)');
        qrCT.ParamByName('PLANO').AsInteger:= 61;
        qrCT.ParamByName('CONTRATO').AsInteger:= Contrato;
        qrCT.ParamByName('LANCAMENTO').AsDateTime:= now;
        qrCT.ParamByName('VALOR').AsCurrency:= ConverteReais(edtValorProposta.text);
        qrCT.ExecSQL;

        qrCT.SQL.Clear;
        qrCT.SQL.Add('INSERT INTO CONTABILIDADE (ID_PLANO_CONTA,ID_CONTRATO,LANCAMENTO,VALOR) VALUES (:PLANO,:CONTRATO,:LANCAMENTO,:VALOR)');
        qrCT.ParamByName('PLANO').AsInteger:= 111;
        qrCT.ParamByName('CONTRATO').AsInteger:= Contrato;
        qrCT.ParamByName('LANCAMENTO').AsDateTime:= now;
        qrCT.ParamByName('VALOR').AsCurrency:= ConverteReais(edtValorProposta.text);
        qrCT.ExecSQL;

        qrCT.SQL.Clear;
        qrCT.SQL.Add('INSERT INTO CONTABILIDADE (ID_PLANO_CONTA,ID_CONTRATO,LANCAMENTO,VALOR) VALUES (:PLANO,:CONTRATO,:LANCAMENTO,:VALOR)');
        qrCT.ParamByName('PLANO').AsInteger:= 282;
        qrCT.ParamByName('CONTRATO').AsInteger:= Contrato;
        qrCT.ParamByName('LANCAMENTO').AsDateTime:= now;
        qrCT.ParamByName('VALOR').AsCurrency:= ConverteReais(edtIntermediacao.text);
        qrCT.ExecSQL;

        qrCT.SQL.Clear;
        qrCT.SQL.Add('INSERT INTO CONTABILIDADE (ID_PLANO_CONTA,ID_CONTRATO,LANCAMENTO,VALOR) VALUES (:PLANO,:CONTRATO,:LANCAMENTO,:VALOR)');
        qrCT.ParamByName('PLANO').AsInteger:= 78;
        qrCT.ParamByName('CONTRATO').AsInteger:= Contrato;
        qrCT.ParamByName('LANCAMENTO').AsDateTime:= now;
        qrCT.ParamByName('VALOR').AsCurrency:= ConverteReais(edtIntermediacao.text);
        qrCT.ExecSQL;

        //No lançamento do contrato será criado um título apagar automaticamente no
        //cadastro do intermediário (vendedor)

        qrCT.SQL.Clear;
        qrCT.SQL.Add('INSERT INTO CONTABILIDADE (ID_PLANO_CONTA,ID_CONTRATO,LANCAMENTO,VALOR) VALUES (:PLANO,:CONTRATO,:LANCAMENTO,:VALOR)');
        qrCT.ParamByName('PLANO').AsInteger:= 111;
        qrCT.ParamByName('CONTRATO').AsInteger:= Contrato;
        qrCT.ParamByName('LANCAMENTO').AsDateTime:= now;
        qrCT.ParamByName('VALOR').AsCurrency:= ConverteReais(edtEntrada.text);
        qrCT.ExecSQL;

        qrCT.SQL.Clear;
        qrCT.SQL.Add('INSERT INTO CONTABILIDADE (ID_PLANO_CONTA,ID_CONTRATO,LANCAMENTO,VALOR) VALUES (:PLANO,:CONTRATO,:LANCAMENTO,:VALOR)');
        qrCT.ParamByName('PLANO').AsInteger:= 20;
        qrCT.ParamByName('CONTRATO').AsInteger:= Contrato;
        qrCT.ParamByName('LANCAMENTO').AsDateTime:= now;
        qrCT.ParamByName('VALOR').AsCurrency:= ConverteReais(edtEntrada.text);
        qrCT.ExecSQL;
      except
        Application.MESSAGEBOX('Erro no Plano de Contas! Certifique-se que seu Plano de Contas está atualizado para Imobiliária.',
        'Error no Banco!', MB_ICONERROR);
        Exit;
      end;   }

      //No  lançamento  do  contrato  será  criado  um  título  a receber  automaticamente  no
      //cadastro do comprador.

      if rdgParcelaEntrada.ItemIndex = 1 then
      begin
        if dsCrediario.DataSet.Active = False then
          dsCrediario.DataSet.Open;

        dsCrediario.DataSet.Insert;
        dsCrediario.DataSet.FieldByName('CODIGO_COMPRA').Value:= null;
        dsCrediario.DataSet.FieldByName('CODIGO_CLIENTE').Value:= Comprador;
        dsCrediario.DataSet.FieldByName('DATA_COMPRA').AsDateTime:= Now;
        dsCrediario.DataSet.FieldByName('DATA_VENCIMENTO').AsDateTime:= Now + 4;
        dsCrediario.DataSet.FieldByName('HISTORICO').AsString:= 'BOLETO A RECEBER referente Entrada do contrato N° ' + IntToStr(Contrato);
        dsCrediario.DataSet.FieldByName('USUARIO_VENDA').AsString:= FormPrincipal.UserLogado;
        dsCrediario.DataSet.FieldByName('SITUACAO').AsString:= 'A';
        dsCrediario.DataSet.FieldByName('VALOR_COMPRA').AsFloat:= ConverteReais(edtEntrada.text);
        dsCrediario.DataSet.FieldByName('VALOR_JUROS').Value:= 0;
        dsCrediario.DataSet.FieldByName('VALOR_ACRESCIMO').Value:= 0;
        dsCrediario.DataSet.FieldByName('VALOR_DESCONTO').Value:= 0;
        dsCrediario.DataSet.FieldByName('VALOR_PAGO').Value:= 0;
        dsCrediario.DataSet.FieldByName('PARCELA').AsInteger:= 1;
        dsCrediario.DataSet.FieldByName('COD_EMPRESA').AsInteger:= DM.SDS_EmpresaCODIGO.Value;
        dsCrediario.DataSet.FieldByName('TIPO').Value:= 'BOL';
        dsCrediario.DataSet.FieldByName('NOME_SACADO').value:= Cliente;
        dsCrediario.DataSet.FieldByName('MES').Value:= FormatDateTime('yyyy',dtaux);
        dsCrediario.DataSet.FieldByName('ANO').Value:= FormatDateTime('mm',dtaux);
        dsCrediario.DataSet.FieldByName('ID_CONTRATO').Value:= Contrato;
        dsCrediario.DataSet.FieldByName('ID_CT_PARCELA').Value:= null;
        dsCrediario.DataSet.FieldByName('VLR_GRAFICA').Value:= null;
        dsCrediario.DataSet.FieldByName('N_OS').Value:= null;
        dsCrediario.DataSet.FieldByName('CODIGO').Value:= 1;
        dsCrediario.DataSet.Post;

        dsCrediario.DataSet.close;
        dsCrediario.DataSet.Open;

        dsImovelVenda.DataSet.FieldByName('PARCELA_ENTRADA').AsString:= 'N';
        ParcelaEntrada:= 0;
      end
      else
      begin
        dsImovelVenda.DataSet.FieldByName('PARCELA_ENTRADA').AsString:= 'S';
        dsImovelVenda.DataSet.FieldByName('PARCELAS_ENTRADA').AsInteger:= StrToInt(edtParcelasEntrada.text);
        ParcelaEntrada:= StrtoInt(edtParcelasEntrada.Text);
      end;
      {
      dsCrediario.DataSet.Open;

      try
        qrCT.SQL.Clear;
        qrCT.SQL.Add('INSERT INTO CONTABILIDADE (ID_PLANO_CONTA,ID_CONTRATO,LANCAMENTO,VALOR) VALUES (:PLANO,:CONTRATO,:LANCAMENTO,:VALOR)');
        qrCT.ParamByName('PLANO').AsInteger:= 193;
        qrCT.ParamByName('CONTRATO').AsInteger:= Contrato;
        qrCT.ParamByName('LANCAMENTO').AsDateTime:= now;
        qrCT.ParamByName('VALOR').AsCurrency:= ((StrToInt(edtParcelas.text) * ConverteReais(lblValorParcela.Caption)) + ConverteReais(edtEntrada.Text));
        qrCT.ExecSQL;

        qrCT.SQL.Clear;
        qrCT.SQL.Add('INSERT INTO CONTABILIDADE (ID_PLANO_CONTA,ID_CONTRATO,LANCAMENTO,VALOR) VALUES (:PLANO,:CONTRATO,:LANCAMENTO,:VALOR)');
        qrCT.ParamByName('PLANO').AsInteger:= 102;
        qrCT.ParamByName('CONTRATO').AsInteger:= Contrato;
        qrCT.ParamByName('LANCAMENTO').AsDateTime:= now;
        qrCT.ParamByName('VALOR').AsCurrency:= ((StrToInt(edtParcelas.text) * ConverteReais(lblValorParcela.Caption)) + ConverteReais(edtEntrada.Text));
        qrCT.ExecSQL;
      except
        Application.MESSAGEBOX('Erro no Plano de Contas! Certifique-se que seu Plano de Contas está atualizado para Imobiliária.',
        'Error no Banco!', MB_ICONERROR);
        Exit;
      end;  }

      dsImovelVenda.DataSet.FieldByName('TIPO').AsString:= 'A-Prazo';
      dsImovelVenda.DataSet.FieldByName('JUROS').asfloat:= ConverteReais(edtJurosParcela.text);
      dsImovelVenda.DataSet.FieldByName('ENTRE_MESES').AsInteger:= StrToInt(edtEntreMeses.text);
      dsImovelVenda.DataSet.FieldByName('INTERMEDIACAO').AsCurrency:= ConverteReais(edtIntermediacao.text);
      dsImovelVenda.DataSet.FieldByName('VALOR_PROPOSTA').AsCurrency:= ConverteReais(edtValorProposta.text);
      dsImovelVenda.DataSet.FieldByName('ENTRADA').AsCurrency:= ConverteReais(edtEntrada.text);
      dsImovelVenda.DataSet.FieldByName('SALDO_FINANCIAR').AsCurrency:= ConverteReais(edtSaldoFinanciar.text);
      ValorParcela:= ConverteReais(lblValorParcela.Caption);
    end;

    dsImovelVenda.DataSet.FieldByName('VENDA_VISTA').AsCurrency:= ConverteReais(edtAvista.text);

    dsImovelVenda.DataSet.Post;
    AlteraEstoqueImovel(Imovel,0);

    try
      if dsImovelVenda.DataSet.Filtered = True then
      begin
        qr:= TFDQuery.Create(Self);
        qr.Connection:= DM.Coneccao;
        qr.SQL.Clear;
        qr.SQL.Add('DELETE FROM MV_CT_PARCELA WHERE ID_CONTRATO = ' + IntToStr(Contrato));
        qr.ExecSQL;
        dsImovelVenda.DataSet.Filtered:= False;
        qr.Destroy;
      end;
    except
       Application.MessageBox('Não é possivel fazer a alteração desse contrato.'+
       ' Verifique se ele já possue boletos gerados!','Atenção',MB_ICONWARNING);
       Exit;
    end;

    A:= 1;
    if rdgParcelaEntrada.ItemIndex = 0 then
    begin
      for A:= 1 to StrtoInt(edtParcelasEntrada.Text) do
      begin
        dsParcela.DataSet.Insert;
        dsParcela.DataSet.FieldByName('ID_CONTRATO').AsInteger:= Contrato;
        dsParcela.DataSet.FieldByName('ID_CLIENTE').AsInteger:= Comprador;
        dsParcela.DataSet.FieldByName('NUMERO').AsInteger:= A;
        dsParcela.DataSet.FieldByName('VALOR').AsCurrency:= ConverteReais(edtEntrada.text) / StrToInt(edtParcelasEntrada.text);
        dsParcela.DataSet.FieldByName('LANCAMENTO').AsDateTime:= Now;
        dsParcela.DataSet.FieldByName('VENCIMENTO').AsDateTime:= IncMonth(edtVencimentoVenda.Date,A -1);
        dsParcela.DataSet.FieldByName('SITUACAO').asstring:= 'A';
        dsParcela.DataSet.Post;
      end;
    end;

    for I:= A to (Strtoint(edtParcelas.TExt) + ParcelaEntrada)   do
    begin
      dsParcela.DataSet.Insert;
      dsParcela.DataSet.FieldByName('ID_CONTRATO').AsInteger:= Contrato;
      dsParcela.DataSet.FieldByName('ID_CLIENTE').AsInteger:= Comprador;
      dsParcela.DataSet.FieldByName('NUMERO').AsInteger:= I;
      dsParcela.DataSet.FieldByName('VALOR').AsCurrency:= ValorParcela;
      dsParcela.DataSet.FieldByName('LANCAMENTO').AsDateTime:= Now;

      if rdgTipoVenda.ItemIndex = 1 then
        dsParcela.DataSet.FieldByName('VENCIMENTO').AsDateTime:= IncMonth(edtVencimentoVenda.Date,(I * StrToInt(edtEntreMeses.text)) - A)
      else
        dsParcela.DataSet.FieldByName('VENCIMENTO').AsDateTime:= edtVencimentoVenda.Date;

      dsParcela.DataSet.FieldByName('SITUACAO').asstring:= 'A';
      dsParcela.DataSet.Post;
    end;
  end
  else
  if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'COMPRA DE IMÓVEL') then
  begin
    if dsImovelCompra.DataSet.Filtered = True then
      dsImovelCompra.DataSet.Edit
    else
      dsImovelCompra.DataSet.Insert;
    dsImovelCompra.DataSet.FieldByName('ID_CONTRATO').AsInteger:= Contrato;
    dsImovelCompra.DataSet.FieldByName('ID_VENDEDOR').AsInteger:= Vendedor;
    dsImovelCompra.DataSet.FieldByName('ID_IMOVEL').AsInteger:= Imovel;
    dsImovelCompra.DataSet.FieldByName('ID_CENTRO_CUSTO').AsInteger:= CentroCusto;
    dsImovelCompra.DataSet.FieldByName('DATA_COMPRA').AsDateTime:= edtDataCompra.date;
    dsImovelCompra.DataSet.FieldByName('VALOR').AsFloat:= ConverteReais(edtValorCompra.text);
    if rgpTipoCompra.ItemIndex = 0 then
    begin
      dsImovelCompra.DataSet.FieldByName('TIPO').AsString:= 'A-Vista';
      dsImovelCompra.DataSet.FieldByName('PARCELAS').AsInteger:= 1;
    end
    else
    begin
      dsImovelCompra.DataSet.FieldByName('TIPO').AsString:= 'A-Prazo';
      dsImovelCompra.DataSet.FieldByName('PARCELAS').AsInteger:= StrtoInt(edtParcelaCompra.text);
    end;

    dsImovelCompra.DataSet.Post;
    AlteraValorCustoImovel(Imovel);

    try
      if dsParcela.DataSet.Filtered = True then
      begin
        qr:= TFDQuery.Create(Self);
        qr.Connection:= DM.Coneccao;
        qr.SQL.Clear;
        qr.SQL.Add('DELETE FROM MV_CT_PARCELA WHERE ID_CONTRATO = ' + IntToStr(Contrato));
        qr.ExecSQL;
        dsParcela.DataSet.Filtered:= False;
        qr.Destroy;
      end;
    except
       Application.MessageBox('Não é possivel fazer a alteração desse contrato.'+
       ' Verifique se ele já possue boletos gerados!','Atenção',MB_ICONWARNING);
       Exit;
    end;

    dsParcela.DataSet.Insert;
    dsParcela.DataSet.FieldByName('ID_CONTRATO').AsInteger:= Contrato;
    dsParcela.DataSet.FieldByName('ID_CLIENTE').AsInteger:= Cliente;
    dsParcela.DataSet.FieldByName('NUMERO').AsInteger:= 1;
    dsParcela.DataSet.FieldByName('VALOR').AsCurrency:= ConverteReais(edtValorCompra.text);
    dsParcela.DataSet.FieldByName('LANCAMENTO').AsDateTime:= Now;
    dsParcela.DataSet.FieldByName('VENCIMENTO').AsDateTime:= edtDataCompra.Date;
    dsParcela.DataSet.FieldByName('SITUACAO').asstring:= 'F';
    dsParcela.DataSet.Post;
  end
  else
  if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'ALUGUEL DE IMÓVEL') then
  begin
    if dsImovelAluguel.DataSet.Filtered = True then
      dsImovelAluguel.DataSet.Edit
    else
      dsImovelAluguel.DataSet.Insert;
    dsImovelAluguel.DataSet.Insert;
    dsImovelAluguel.DataSet.FieldByName('ID_CONTRATO').AsInteger:= Contrato;
    dsImovelAluguel.DataSet.FieldByName('ID_INQUILINO').AsInteger:= Comprador;
    dsImovelAluguel.DataSet.FieldByName('ID_PROPRIETARIO').AsInteger:= Vendedor;
    dsImovelAluguel.DataSet.FieldByName('ID_IMOVEL').AsInteger:= Imovel;
    if Fiador > 0 then
      dsImovelAluguel.DataSet.FieldByName('ID_FIADOR').AsInteger:= Fiador;
    dsImovelAluguel.DataSet.FieldByName('DATA_INICIO').AsDateTime:= edtDataInicio.Date;
    dsImovelAluguel.DataSet.FieldByName('DATA_TERMINO').AsDateTime:= edtDataTermino.Date;
    dsImovelAluguel.DataSet.FieldByName('FINALIDADE').AsString:= edtFinalidade.Text;
    dsImovelAluguel.DataSet.FieldByName('PRAZO').AsInteger:= StrtoInt(edtVigencia.Text);
    dsImovelAluguel.DataSet.FieldByName('PG_VENCIMENTO_DIA').AsInteger:= StrtoInt(edtVencimentoPrimeiroDia.Text);
    dsImovelAluguel.DataSet.FieldByName('DIAS_CARENCIA').AsInteger:= StrtoInt(edtCarenciaDias.Text);
    dsImovelAluguel.DataSet.FieldByName('MULTA_ATRASO').AsInteger:= StrtoInt(edtMultaAtraso.Text);
    dsImovelAluguel.DataSet.FieldByName('JUROS_MORA').AsInteger:= StrtoInt(edtJurosMora.Text);
    dsImovelAluguel.DataSet.FieldByName('DESCONTO').AsInteger:= StrtoInt(edtDesconto.Text);
    dsImovelAluguel.DataSet.FieldByName('DESCONTO_DIAS').AsInteger:= StrtoInt(edtDescontoDia.Text);
    dsImovelAluguel.DataSet.FieldByName('OBS').AsString:= mmObs.Text;
    if cbxContratoFiador.Checked = True then
      dsImovelAluguel.DataSet.FieldByName('FIADOR').AsString:= 'S'
    else
      dsImovelAluguel.DataSet.FieldByName('FIADOR').AsString:= 'N';
      
    dsImovelAluguel.DataSet.Post;

    ValorParcela:= ValorImovel('ALUGUEL',Imovel) / StrToInt(edtVigencia.text);
    try
      if dsImovelAluguel.DataSet.Filtered = True then
      begin
        qr:= TFDQuery.Create(Self);
        qr.Connection:= DM.Coneccao;
        qr.SQL.Clear;
        qr.SQL.Add('DELETE FROM MV_CT_PARCELA WHERE ID_CONTRATO = ' + IntToStr(Contrato));
        qr.ExecSQL;
        dsImovelAluguel.DataSet.Filtered:= False;
        qr.Destroy;
      end;
    except
       Application.MessageBox('Não é possivel fazer a alteração desse contrato.'+
       ' Verifique se ele já possue boletos gerados!','Atenção',MB_ICONWARNING);
       Exit;
    end;

    for I:= 1 to Strtoint(edtVigencia.TExt) do
    begin
      dsParcela.DataSet.Insert;
      dsParcela.DataSet.FieldByName('ID_CONTRATO').AsInteger:= Contrato;
      dsParcela.DataSet.FieldByName('ID_CLIENTE').AsInteger:= Comprador;
      dsParcela.DataSet.FieldByName('NUMERO').AsInteger:= I;
      dsParcela.DataSet.FieldByName('VALOR').AsCurrency:= ValorParcela;
      dsParcela.DataSet.FieldByName('LANCAMENTO').AsDateTime:= Now;
      dsParcela.DataSet.FieldByName('VENCIMENTO').AsDateTime:=
       IncMonth(StrToDateTime(edtDataInicio.text),I);
      dsParcela.DataSet.FieldByName('SITUACAO').asstring:= 'A';
      dsParcela.DataSet.Post;
    end;
  end;

  if dsContratos.DataSet.Filtered = True then
    dsContratos.DataSet.Filtered:= False;
  pgcContrato.ActivePage:= tbGrid;
  dsView.DataSet.Refresh;
  dsView.DataSet.Filtered:= False;
  dsContratos.DataSet.Filtered:= False;
  dsParcela.DataSet.Filtered:= False;
  dsImovelVenda.DataSet.Filtered:= False;
  dsImovelAluguel.DataSet.Filtered:= False;
end;

procedure TFrmLancamentoContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsView.DataSet.Close;
  dsContratos.DataSet.Close;
  dsImovelVenda.DataSet.Close;
  dsImovelAluguel.DataSet.Close;
  dsCrediario.DataSet.Close;
  dsParcela.DataSet.Close;
  dsImovelCompra.DataSet.Close;
end;

procedure TFrmLancamentoContrato.FormCreate(Sender: TObject);
begin
  dsView.DataSet.Open;
  dsContratos.DataSet.Open;
  dsParcela.DataSet.Open;
  dsImovelVenda.DataSet.Open;
  dsImovelAluguel.DataSet.Open;
  dsCrediario.DataSet.Open;
  dsImovelCompra.DataSet.Open;
  pgcContrato.ActivePage:= tbGrid;
end;

procedure TFrmLancamentoContrato.spbExcluirClick(Sender: TObject);
begin
  try
    dsContratos.DataSet.Filter:= 'ID = ' + IntToStr(dsView.DataSet.FieldByName('ID').AsInteger);
    dsContratos.DataSet.Filtered:= True;

    if not dsContratos.DataSet.IsEmpty then
    begin
      if Application.MESSAGEBOX('Deseja realmente Excluir o contrato selecionado?',
       'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
        dsContratos.DataSet.Delete;
      end;
    end;
    dsContratos.DataSet.Filtered:= False;
    dsView.DataSet.Refresh;
  except
    Application.MessageBox('O contrato selecionado possue dependencia com os boletos gerado no mesmo.'+
    #13+'Caso queira exclui-lo, é necessário exclui os seus boletos gerados.','Atenção',MB_ICONWARNING);
  end;
end;

procedure TFrmLancamentoContrato.cbxImovelKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PesquisaImovel(cbxImovel.Text,cbxImovel);
end;

procedure TFrmLancamentoContrato.cbxCompradorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PesquisaCliente(cbxComprador.Text,cbxComprador);
end;

procedure TFrmLancamentoContrato.PesquisaImovel(Pesquisa: String;
  Campo: TComboBoxEditor);
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(Self);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Clear;
  if Pesquisa = '' then
    qr.SQL.Add('SELECT ENDERECO FROM VIEW_IMOVEL')
  else
    qr.SQL.Add('SELECT * FROM VIEW_IMOVEL WHERE ENDERECO LIKE ' + QuotedStr('%'+Pesquisa+'%'));
  qr.Open;

  Campo.Items.Clear;
  while not qr.Eof do
  begin
    Campo.Items.Add(qr.FieldByName('ENDERECO').AsString);
    qr.Next;
  end;
  qr.Destroy;
end;

procedure TFrmLancamentoContrato.rdgTipoVendaClick(Sender: TObject);
begin
  if rdgTipoVenda.ItemIndex = 0 then
  begin
    lblParcelas.Visible:= False;
    edtParcelas.Visible:= False;
    edtParcelas.Text:= '1';
    lblJurosParcela.visible:= False;
    edtJurosParcela.visible:= False;
    lblPorcent.visible:= False;
    edtJurosParcela.text:= '0,00';
    lblEntrada.Visible:= False;
    lblSaldoFinanciar.Visible:= False;
    lblValorParce.Visible:= False;
    lblValorParcela.Visible:= False;
    edtEntrada.Visible:= False;
    edtSaldoFinanciar.Visible:= False;
    spbSomar.Visible:= False;
    rdgParcelaEntrada.Visible:= False;
    lblParcelasEntrada.Visible:= False;
    edtParcelasEntrada.Visible:= False;
    lblEntreMeses.Visible:= False;
    lblEntreMesMeses.Visible:= False;
    edtEntreMeses.Visible:= False;
  end
  else
  begin
    edtParcelas.Text:= '1';
    lblParcelas.Visible:= True;
    edtParcelas.Visible:= True;
    lblJurosParcela.visible:= True;
    edtJurosParcela.visible:= True;
    lblPorcent.visible:= True;
    lblEntrada.Visible:= True;
    lblSaldoFinanciar.Visible:= True;
    lblValorParce.Visible:= True;
    lblValorParcela.Visible:= True;
    edtEntrada.Visible:= True;
    edtSaldoFinanciar.Visible:= True;
    spbSomar.Visible:= True;
    edtJurosParcela.text:= '0,00';
    rdgParcelaEntrada.Visible:= True;
    lblEntreMeses.Visible:= True;
    lblEntreMesMeses.Visible:= True;
    edtEntreMeses.Visible:= True;
  end;
end;

procedure TFrmLancamentoContrato.cbxProprietarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PesquisaCliente(cbxProprietario.Text,cbxProprietario);
end;

procedure TFrmLancamentoContrato.cbxImovelAluguelKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PesquisaImovel(cbxImovelAluguel.Text,cbxImovelAluguel);
end;

procedure TFrmLancamentoContrato.cbxInquilinoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PesquisaCliente(cbxInquilino.Text,cbxInquilino);
end;

procedure TFrmLancamentoContrato.cbxFiadorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PesquisaCliente(cbxFiador.Text,cbxFiador);
end;

procedure TFrmLancamentoContrato.cbxContratoFiadorClick(Sender: TObject);
begin
  if cbxContratoFiador.Checked = True then
  begin
    cbxFiador.Visible:= True;
    cbxFiador.text:= '';
    PesquisaCliente('',cbxFiador);
  end
  else
    cbxFiador.Visible:= False;
end;

procedure TFrmLancamentoContrato.edtDataInicioChange(Sender: TObject);
begin
  edtDataTermino.Date:=  IncMonth(edtDataInicio.Date, StrToInt(edtVigencia.text));
end;

procedure TFrmLancamentoContrato.spbAlterarClick(Sender: TObject);
var
  i : Integer;
  Alterar: Boolean;
  qr: TFDQuery;
begin
  Alterar:= True;

  qr:= TFDQuery.Create(Self);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Clear;
  qr.SQL.Add('SELECT * FROM CREDIARIO WHERE ID_CONTRATO = ' + IntToStr(dsView.DataSet.fieldbyName('ID').asinteger));
  qr.open;
  if not qr.IsEmpty then
    Alterar:= False;
  qr.Destroy;

  if Alterar = True then
  begin
    dsContratos.DataSet.Filter:= 'ID = ' + IntToStr(dsView.DataSet.fieldbyName('ID').asinteger);
    dsContratos.DataSet.Filtered:= True;

    if not dsContratos.DataSet.IsEmpty then
    begin
      cbxCarct.Items.Clear;
      if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'WIRELESS BANDA LARGA') then
      begin
        for I := 1 to 9 do
        begin
          cbxCarct.Items.Add(Wireless[I]);
        end;
      end
      else
      if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'SIACE SISTEMAS') then
      begin
        for I := 1 to 2 do
        begin
          cbxCarct.Items.Add(Siace[I]);
        end;
      end
      else
      if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'VENDA DE IMÓVEL')then
      begin
        for I := 1 to 2 do
        begin
          cbxCarct.Items.Add(Venda[I]);
        end;
      end
      else
      if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'COMPRA DE IMÓVEL')then
      begin
        pgcEditContrato.ActivePage:= tbContratoCompra;
        for I := 1 to 2 do
        begin
          cbxCarct.Items.Add(Compra[I]);
        end;
      end
      else
      if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'ALUGUEL DE IMÓVEL')then
      begin
        pgcEditContrato.ActivePage:= tbContratoAluguel;
        for I := 1 to 2 do
        begin
          cbxCarct.Items.Add(Aluguel[I]);
        end;
      end;
      dsContratos.DataSet.Edit;
      if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'WIRELESS BANDA LARGA') or
        (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'SIACE SISTEMAS') then
      begin
        pgcEditContrato.ActivePage:= tbSimples;
        dsParcela.DataSet.Filter:= 'ID_CONTRATO = ' + IntToStr(dsContratos.DataSet.fieldbyname('ID').AsInteger);
        dsParcela.DataSet.Filtered:= True;
        if not dsParcela.DataSet.IsEmpty then
        begin
          cbxCliente.Text:= PassaNomeCliente(dsParcela.DataSet.fieldbyname('ID_CLIENTE').AsInteger);
          edtVencimentoSimples.date:= dsParcela.DataSet.fieldbyname('VENCIMENTO').AsDateTime;
          edtValorSimples.Text:=  CurrToStr(dsParcela.DataSet.fieldbyname('VALOR').AsCurrency);
        end;
      end
      else
      if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'VENDA DE IMÓVEL')then
      begin
        pgcEditContrato.ActivePage:= tbContratoVenda;
        dsImovelVenda.DataSet.Filter:= 'ID_CONTRATO = ' + IntToStr(dsContratos.DataSet.fieldbyname('ID').AsInteger);
        dsImovelVenda.DataSet.Filtered:= True;
        if not dsImovelVenda.DataSet.IsEmpty then
        begin
          cbxVendedor.Text:= PassaNomeCliente(dsImovelVenda.DataSet.fieldbyname('ID_VENDEDOR').AsInteger);
          cbxComprador.Text:= PassaNomeCliente(dsImovelVenda.DataSet.fieldbyname('ID_COMPRADOR').AsInteger);
          cbxImovel.Text:= PassaNomeImovel(dsImovelVenda.DataSet.fieldbyname('ID_IMOVEL').AsInteger);
          cbxCentroCusto.text:= PassaNomeCentroCusto(dsImovelVenda.DataSet.fieldbyname('ID_CENTRO_CUSTO').AsInteger);
          if dsImovelVenda.DataSet.fieldbyname('TIPO').AsString = 'A-Vista' then
          begin
            rdgTipoVenda.ItemIndex:= 0;
            rdgParcelaEntrada.Visible:= False;
            lblParcelasEntrada.Visible:= False;
            edtParcelasEntrada.Visible:= False;
            lblEntreMeses.Visible:= False;
            lblEntreMesMeses.Visible:= False;
            edtEntreMeses.Visible:= False;
          end
          else
          begin
            rdgTipoVenda.ItemIndex:= 1;
            edtEntrada.Text:= FloatToStrF(dsImovelVenda.DataSet.fieldbyname('ENTRADA').AsCurrency,ffNumber,12,2);
            edtSaldoFinanciar.Text:= FloatToStrF(dsImovelVenda.DataSet.fieldbyname('SALDO_FINANCIAR').AsCurrency,ffNumber,12,2);

            if dsImovelVenda.DataSet.fieldbyname('PARCELA_ENTRADA').AsString = 'S' then
            begin
              rdgParcelaEntrada.Visible:= True;
              rdgParcelaEntrada.ItemIndex:= 0;
              lblParcelasEntrada.Visible:= True;
              edtParcelasEntrada.Visible:= True;
              edtParcelasEntrada.Text:= IntToStr(dsImovelVenda.DataSet.fieldbyname('PARCELAS_ENTRADA').asinteger);
            end
            else
            begin
              rdgParcelaEntrada.Visible:= True;
              rdgParcelaEntrada.ItemIndex:= 1;
            end;

            lblEntreMeses.Visible:= True;
            lblEntreMesMeses.Visible:= True;
            edtEntreMeses.Visible:= True;
            edtEntreMeses.Text:= IntToStr(dsImovelVenda.DataSet.fieldbyname('ENTRE_MESES').asinteger);
          end;
          dsParcela.DataSet.Filter:= 'ID_CONTRATO = ' + IntToStr(dsView.DataSet.fieldbyname('ID').Asinteger);
          dsParcela.DataSet.Filtered:= True;
          dsParcela.DataSet.First;
          edtVencimentoVenda.Date:= dsParcela.DataSet.fieldbyname('VENCIMENTO').AsDateTime;

          edtParcelas.Text:= '0';
        
          if dsParcela.DataSet.IsEmpty then
          begin
            edtParcelas.Text:= '1';
          end;

          while not dsParcela.DataSet.Eof do
          begin
            edtParcelas.Text:= IntToStr(StrToInt(edtParcelas.Text) + 1);
            dsParcela.DataSet.next;
          end;

          if dsImovelVenda.DataSet.fieldbyname('PARCELA_ENTRADA').AsString = 'S' then
            edtParcelas.Text:= IntToStr(StrToInt(edtParcelas.text) - dsImovelVenda.DataSet.fieldbyname('PARCELAS_ENTRADA').asinteger);


          edtAvista.Text:= FloatToStrF(dsImovelVenda.DataSet.fieldbyname('VENDA_VISTA').AsCurrency,ffNumber,12,2);
          edtIntermediacao.Text:= FloatToStrF(dsImovelVenda.DataSet.fieldbyname('INTERMEDIACAO').AsCurrency,ffNumber,12,2);
          edtValorProposta.Text:= FloatToStrF(dsImovelVenda.DataSet.fieldbyname('VALOR_PROPOSTA').AsCurrency,ffNumber,12,2);
          lblValorParcela.caption:= FloatToStrF(dsParcela.DataSet.fieldbyname('VALOR').AsCurrency,ffNumber,12,2);
          dsParcela.DataSet.Filtered:= False;
          edtJurosParcela.Text:=  FloatToStrF(dsImovelVenda.DataSet.fieldbyname('JUROS').AsCurrency,ffNumber,12,2);
        end;
      end
      else
      if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'COMPRA DE IMÓVEL')then
      begin
        pgcEditContrato.ActivePage:= tbContratoCompra;
        dsParcela.DataSet.Filter:= 'ID_CONTRATO = ' + IntToStr(dsContratos.DataSet.fieldbyname('ID').AsInteger);
        dsParcela.DataSet.Filtered:= True;
        if not dsParcela.DataSet.IsEmpty then
        begin
          edtDataCompra.date:= dsParcela.DataSet.fieldbyname('VENCIMENTO').AsDateTime;
          edtValorCompra.Text:=  CurrToStr(dsParcela.DataSet.fieldbyname('VALOR').AsCurrency);
        end;

        dsImovelCompra.DataSet.Filter:= 'ID_CONTRATO = ' + IntToStr(dsContratos.DataSet.fieldbyname('ID').AsInteger);
        dsImovelCompra.DataSet.Filtered:= True;
        if not dsImovelCompra.DataSet.IsEmpty then
        begin
          cbxVendedorCompra.Text:= PassaNomeCliente(dsImovelCompra.DataSet.fieldbyname('ID_VENDEDOR').AsInteger);
          cbxImovelCompra.Text:= PassaNomeImovel(dsImovelCompra.DataSet.fieldbyname('ID_IMOVEL').AsInteger);
          cbxCentroCustoCompra.text:= PassaNomeCentroCusto(dsImovelCompra.DataSet.fieldbyname('ID_CENTRO_CUSTO').AsInteger);
          if dsImovelCompra.DataSet.fieldbyname('TIPO').AsString = 'A-Vista' then
            rdgTipoVenda.ItemIndex:= 0
          else
            rdgTipoVenda.ItemIndex:= 1;

          edtParcelaCompra.Text:= InttoStr(dsImovelCompra.DataSet.fieldbyname('PARCELAS').AsInteger);
          edtValorCompra.text:= FloatToStrF(dsImovelCompra.DataSet.fieldbyname('VALOR').Asfloat,ffCurrency,12,2);
          edtDataCompra.date:= dsImovelCompra.DataSet.fieldbyname('DATA_COMPRA').AsDateTime;
        end;
      end
      else
      if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'ALUGUEL DE IMÓVEL')then
      begin
        pgcEditContrato.ActivePage:= tbContratoAluguel;
        dsImovelAluguel.DataSet.Filter:= 'ID_CONTRATO = ' + IntToStr(dsContratos.DataSet.fieldbyname('ID').AsInteger);
        dsImovelAluguel.DataSet.Filtered:= True;
        if not dsImovelAluguel.DataSet.IsEmpty then
        begin
          cbxProprietario.Text:= PassaNomeCliente(dsImovelAluguel.DataSet.fieldbyname('ID_PROPRIETARIO').AsInteger);
          cbxInquilino.Text:= PassaNomeCliente(dsImovelAluguel.DataSet.fieldbyname('ID_INQUILINO').AsInteger);
          cbxImovelAluguel.Text:= PassaNomeImovel(dsImovelAluguel.DataSet.fieldbyname('ID_IMOVEL').AsInteger);
          if dsImovelAluguel.DataSet.fieldbyname('FIADOR').AsString = 'S' then
          begin
            cbxContratoFiador.Checked:= True;
            cbxFiador.Visible:= True;
            cbxFiador.Text:= PassaNomeCliente(dsImovelAluguel.DataSet.fieldbyname('ID_FIADOR').AsInteger);
          end
          else
          begin
            cbxContratoFiador.Checked:= False;
            cbxFiador.Visible:= False;
          end;
          edtVigencia.text:= IntToStr(dsImovelAluguel.DataSet.fieldbyname('PRAZO').AsInteger);
          edtDataInicio.Date:= dsImovelAluguel.DataSet.fieldbyname('DATA_INICIO').AsDateTime;
          edtDataTermino.Date:= dsImovelAluguel.DataSet.fieldbyname('DATA_TERMINO').asDateTime;
          edtVencimentoPrimeiroDia.Text:= IntToStr(dsImovelAluguel.DataSet.fieldbyname('PG_VENCIMENTO_DIA').AsInteger);
          edtCarenciaDias.Text:= IntToStr(dsImovelAluguel.DataSet.FieldByName('DIAS_CARENCIA').AsInteger);
          edtMultaAtraso.Text:= IntToStr(dsImovelAluguel.DataSet.FieldByName('MULTA_ATRASO').AsInteger);
          edtJurosMora.Text:= IntToStr(dsImovelAluguel.DataSet.FieldByName('JUROS_MORA').AsInteger);
          edtDesconto.Text:= IntToStr(dsImovelAluguel.DataSet.FieldByName('DESCONTO').AsInteger);
          edtDescontoDia.Text:= IntToStr(dsImovelAluguel.DataSet.FieldByName('DESCONTO_DIAS').AsInteger);
          mmObs.Lines.Clear;
          mmObs.Lines.Add(dsImovelAluguel.DataSet.FieldByName('OBS').AsString);
        end;
      end;
      pgcContrato.ActivePage:= tbEdit;
    end
    else
    begin
      dsContratos.DataSet.Filtered:= False;
    end;
  end
  else
  begin
    Application.MessageBox('Não é possivel fazer a alteração desse contrato.'+
       ' Verifique se ele já possue boletos gerados!','Atenção',MB_ICONWARNING);
  end;
end;

procedure TFrmLancamentoContrato.edtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if (cbxTipoContrato.Text <> 'TODOS') then
    begin
      dsView.DataSet.Filter:= 'CONTRATO = '+QuotedStr(cbxTipoContrato.Text)+
      ' AND CLIENTE LIKE ' + QuotedStr('%'+edtPesquisa.Text+'%');
      dsView.DataSet.Filtered:= True;
    end
    else
    if (cbxTipoContrato.Text = 'TODOS') then
    else
    begin
      dsView.DataSet.Filter:= 'CLIENTE LIKE ' + QuotedStr('%'+edtPesquisa.Text+'%');
      dsView.DataSet.Filtered:= True;
    end;

    if (dsView.DataSet.IsEmpty) then
      dsView.DataSet.Filtered:= False;
  end;
end;

procedure TFrmLancamentoContrato.edtVencimentoPrimeiroDiaKeyPress(
  Sender: TObject; var Key: Char);
begin
  if not (key in ['1'..'9',#08]) then
    Key:= #0;
end;

procedure TFrmLancamentoContrato.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
end;

procedure TFrmLancamentoContrato.SpeedButton1Click(Sender: TObject);
begin
  if (cbxTipoContrato.Text <> 'TODOS') then
  begin
    dsView.DataSet.Filter:= 'CONTRATO = '+QuotedStr(cbxTipoContrato.Text)+
    ' AND CLIENTE LIKE ' + QuotedStr('%'+edtPesquisa.Text+'%');
    dsView.DataSet.Filtered:= True;
  end
  else
  if (cbxTipoContrato.Text = 'TODOS') then
  else
  begin
    dsView.DataSet.Filter:= 'CLIENTE LIKE ' + QuotedStr('%'+edtPesquisa.Text+'%');
    dsView.DataSet.Filtered:= True;
  end;

  if (dsView.DataSet.IsEmpty) then
    dsView.DataSet.Filtered:= False;
end;

procedure TFrmLancamentoContrato.spbImprimirClick(Sender: TObject);
  var
  MSWord: Variant;
  qr: TFDQuery;
begin
  if dsView.DataSet.FieldByName('CONTRATO').AsString = 'ALUGUEL DE IMÓVEL' then
  begin
    try
      qr:= TFDQuery.Create(nil);
      qr.Connection:= DM.Coneccao;
      qr.SQL.Add('SELECT * FROM VIEW_CONTRATO_ALUGUEL WHERE ID = ' +
      IntToStr(dsView.DataSet.FieldByName('ID').AsInteger));
      qr.Open;

      //Configuração Proprietario
      MSWord := CreateOleObject('Word.Application');
      MSWord.Documents.Open(ExtractFIlePath(Application.ExeName) + '\contratos\Contrato Aluguel.doc');

      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<prop_nome>', ReplaceWith :=
            qr.FieldByName('CTP_NOME').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<prop_nacionalidade>', ReplaceWith :=
            qr.FieldByName('CTP_NATURALIDADE').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<prop_estado_civil>', ReplaceWith :=
            qr.FieldByName('CTP_ESTADO_CIVIL').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<prop_cpf_cnpj>', ReplaceWith :=
            qr.FieldByName('CTP_CPF_CNPJ').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<prop_rg>', ReplaceWith :=
            qr.FieldByName('CTP_RG').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<prop_orgao_expedidor>', ReplaceWith :=
            qr.FieldByName('CTP_ORGAO_EMISSOR').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<prop_cidade>', ReplaceWith :=
            qr.FieldByName('CTP_CIDADE').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<prop_estado>', ReplaceWith :=
            qr.FieldByName('CTP_ESTADO').AsString,Replace := 2);


    //Configuração Inquilino
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<inq_nome>', ReplaceWith :=
            qr.FieldByName('CTI_NOME').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<inq_tipo_pessoa>', ReplaceWith :=
            qr.FieldByName('CTI_TIPO_PESSOA').AsString,Replace := 2);

      if qr.FieldByName('CTI_TIPO_PESSOA').AsString = 'F' then
         MSWord.ActiveDocument.Content.Find.Execute(FindText := '<inq_ps_esc>', ReplaceWith := 'CPF')
      else
         MSWord.ActiveDocument.Content.Find.Execute(FindText := '<inq_ps_esc>', ReplaceWith := 'CNPJ');

      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<inq_nacionalidade>', ReplaceWith :=
            qr.FieldByName('CTI_NATURALIDADE').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<inq_estado_civil>', ReplaceWith :=
            qr.FieldByName('CTI_ESTADO_CIVIL').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<inq_cpf_cnpj>', ReplaceWith :=
            qr.FieldByName('CTI_CPF_CNPJ').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<inq_rg>', ReplaceWith :=
            qr.FieldByName('CTI_RG').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<inq_orgao_expedidor>', ReplaceWith :=
            qr.FieldByName('CTI_ORGAO_EMISSOR').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<inq_telefone>', ReplaceWith :=
            qr.FieldByName('CTI_TELEFONE').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<inq_cidade>', ReplaceWith :=
            qr.FieldByName('CTI_CIDADE').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<inq_estado>', ReplaceWith :=
            qr.FieldByName('CTI_ESTADO').AsString,Replace := 2);

    //Configuração Imovel
//        MSWord.ActiveDocument.Content.Find.Execute(FindText := '<imovel_tipo>', ReplaceWith :=
//            qr.FieldByName('IMT_DESCRICAO').AsString,Replace := 2);
//        MSWord.ActiveDocument.Content.Find.Execute(FindText := '<imovel_subtipo>', ReplaceWith :=
//            qr.FieldByName('IMTS_DESCRICAO').AsString,Replace := 2);
        MSWord.ActiveDocument.Content.Find.Execute(FindText := '<imovel_endereco>', ReplaceWith :=
            qr.FieldByName('IM_ENDERECO').AsString,Replace := 2);
        MSWord.ActiveDocument.Content.Find.Execute(FindText := '<imovel_bairro>', ReplaceWith :=
            qr.FieldByName('IM_BAIRRO').AsString,Replace := 2);
        MSWord.ActiveDocument.Content.Find.Execute(FindText := '<imovel_cidade>', ReplaceWith :=
            qr.FieldByName('IM_CIDADE').AsString,Replace := 2);
        MSWord.ActiveDocument.Content.Find.Execute(FindText := '<imovel_estado>', ReplaceWith :=
            qr.FieldByName('IM_ESTADO').AsString,Replace := 2);
        MSWord.ActiveDocument.Content.Find.Execute(FindText := '<imovel_cep>', ReplaceWith :=
            qr.FieldByName('IM_CEP').AsString,Replace := 2);
        MSWord.ActiveDocument.Content.Find.Execute(FindText := '<imovel_energia>', ReplaceWith :=
            qr.FieldByName('IM_ENERGIA').AsString,Replace := 2);
        MSWord.ActiveDocument.Content.Find.Execute(FindText := '<imovel_agua>', ReplaceWith :=
            qr.FieldByName('IM_AGUA').AsString,Replace := 2);
        MSWord.ActiveDocument.Content.Find.Execute(FindText := '<imovel_valor>', ReplaceWith :=
            qr.FieldByName('VALOR').AsString,Replace := 2);

        MSWord.ActiveDocument.Content.Find.Execute(FindText := '<imovel_valor_es>', ReplaceWith :=
            Extenso(qr.FieldByName('VALOR').AsFloat,True,0),Replace := 2);

        MSWord.ActiveDocument.Content.Find.Execute(FindText := '<imovel_descricao>', ReplaceWith :=
            qr.FieldByName('IMA_OBS').AsString,Replace := 2);


    //Configuração Contrato
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<cont_prazo_locacao>', ReplaceWith :=
          qr.FieldByName('IMA_PRAZO').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<cont_prazo_locacao_es>', ReplaceWith :=
          Extenso(qr.FieldByName('IMA_PRAZO').AsInteger,False,0),Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<cont_finalidade>', ReplaceWith :=
          qr.FieldByName('IMA_FINALIDADE').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<cont_data_inicio>', ReplaceWith :=
          qr.FieldByName('IMA_DATA_INICIO').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<cont_data_termino>', ReplaceWith :=
          qr.FieldByName('IMA_DATA_TERMINO').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<cont_dia_vencimento>', ReplaceWith :=
          qr.FieldByName('IMA_VENCIMENTO').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<cont_dia_vencimento_es>', ReplaceWith :=
          Extenso(qr.FieldByName('IMA_VENCIMENTO').AsInteger,False,0),Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<cont_dias_carencia>', ReplaceWith :=
          qr.FieldByName('IMA_CARENCIA').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<cont_dias_carencia_es>', ReplaceWith :=
          Extenso(qr.FieldByName('IMA_CARENCIA').AsInteger,False,0),Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<cont_multa_atraso>', ReplaceWith :=
          qr.FieldByName('IMA_MULTA_ATRASO').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<cont_multa_atraso_es>', ReplaceWith :=
          Extenso(qr.FieldByName('IMA_MULTA_ATRASO').AsInteger,false,0),Replace := 2);
       MSWord.ActiveDocument.Content.Find.Execute(FindText := '<cont_juros_mora>', ReplaceWith :=
          qr.FieldByName('IMA_JUROS_MORA').AsString,Replace := 2);
       MSWord.ActiveDocument.Content.Find.Execute(FindText := '<cont_juros_mora_es>', ReplaceWith :=
          Extenso(qr.FieldByName('IMA_JUROS_MORA').AsInteger,false,0),Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<data_hoje>', ReplaceWith := DateToStr(now));
      MSWord.ActiveDocument.PrintOut(Copies := 1);

      MSWord.ActiveDocument.Close(wdDoNotSaveChanges);

      MSWord.Quit;
      MSWord := Unassigned;
      qr.Destroy;
    except
      Application.MessageBox('Erro ao tentar gerar o contrato, Contate o suporte!',
                             'Erro do sistema',MB_ICONERROR);
      MSWord.Quit;
      MSWord := Unassigned;
      qr.Destroy;
    end;
  end
  else
  if dsView.DataSet.FieldByName('CONTRATO').AsString = 'VENDA DE IMÓVEL' then
  begin
    //try
      qr:= TFDQuery.Create(nil);
      qr.Connection:= DM.Coneccao;
      qr.SQL.Add('SELECT * FROM VIEW_CONTRATO_VENDA WHERE ID = ' +
      IntToStr(dsView.DataSet.FieldByName('ID').AsInteger));
      qr.Open;

      //Configuração Comprador
      MSWord := CreateOleObject('Word.Application');
      MSWord.Documents.Open(ExtractFIlePath(Application.ExeName) + '\contratos\Contrato Venda.doc');

      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<CP_NOME>', ReplaceWith :=
            qr.FieldByName('CP_NOME').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<CP_CPF_CNPJ>', ReplaceWith :=
            qr.FieldByName('CP_CPF_CNPJ').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<CP_PROFISSAO>', ReplaceWith :=
            qr.FieldByName('CP_PROFISSAO').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<CP_ESTADO_CIVIL>', ReplaceWith :=
            qr.FieldByName('CP_ESTADO_CIVIL').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<CP_ENDERECO>', ReplaceWith :=
            qr.FieldByName('CP_ENDERECO').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<CP_TELEFONE>', ReplaceWith :=
            qr.FieldByName('CP_TELEFONE').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<CP_EMAIL>', ReplaceWith :=
            qr.FieldByName('CP_EMAIL').AsString,Replace := 2);

      //Configuração de conjuge de comprador
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<CJ_NOME>', ReplaceWith :=
            qr.FieldByName('CJ_NOME').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<CJ_CPF>', ReplaceWith :=
            qr.FieldByName('CJ_CPF').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<CJ_PROFISSAO>', ReplaceWith :=
            qr.FieldByName('CJ_PROFISSAO').AsString,Replace := 2);


    //Configuração Vendedor
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<PR_NOME>', ReplaceWith :=
            qr.FieldByName('PR_NOME').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<PR_CPF_CNPJ>', ReplaceWith :=
            qr.FieldByName('PR_CPF_CNPJ').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<PR_PROFISSAO>', ReplaceWith :=
            qr.FieldByName('PR_PROFISSAO').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<PR_ESTADO_CIVIL>', ReplaceWith :=
            qr.FieldByName('PR_ESTADO_CIVIL').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<PR_ENDERECO>', ReplaceWith :=
            qr.FieldByName('PR_ENDERECO').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<PR_TELEFONE>', ReplaceWith :=
            qr.FieldByName('PR_TELEFONE').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<PR_EMAIL>', ReplaceWith :=
            qr.FieldByName('PR_EMAIL').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<PR_BANCO>', ReplaceWith :=
            qr.FieldByName('PR_BANCO').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<PR_AGENCIA>', ReplaceWith :=
            qr.FieldByName('PR_AGENCIA').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<PR_CONTA>', ReplaceWith :=
            qr.FieldByName('PR_CONTA').AsString,Replace := 2);

      //Configuração de conjuge de comprador
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<PRJ_NOME>', ReplaceWith :=
            qr.FieldByName('PRJ_NOME').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<PRJ_CPF>', ReplaceWith :=
            qr.FieldByName('PRJ_CPF').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<PRJ_PROFISSAO>', ReplaceWith :=
            qr.FieldByName('PRJ_PROFISSAO').AsString,Replace := 2);

    //Configuração Imovel
      MSWord.ActiveDocument.Content.Find.Execute(FindText := 'IM_MATRICULA>', ReplaceWith :=
          qr.FieldByName('IM_MATRICULA').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<IM_CARTORIO>', ReplaceWith :=
          qr.FieldByName('IM_CARTORIO').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<IM_ENDERECO>', ReplaceWith :=
          qr.FieldByName('IM_ENDERECO').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<IM_VALOR>', ReplaceWith :=
          qr.FieldByName('IM_VALOR').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<IM_VALOR_ES>', ReplaceWith :=
        Extenso(qr.FieldByName('IM_VALOR').AsFloat,True,0),Replace := 2);

    //Configuração Contrato
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<CV_COMISSAO>', ReplaceWith :=
          qr.FieldByName('COMISSAO').AsString,Replace := 2);
      MSWord.ActiveDocument.Content.Find.Execute(FindText := '<CV_COMISSAO_ES>', ReplaceWith :=
          Extenso(qr.FieldByName('COMISSAO').AsFloat,True,0),Replace := 2);
      MSWord.ActiveDocument.PrintOut(Copies := 1);

      MSWord.ActiveDocument.Close(wdDoNotSaveChanges);

      MSWord.Quit;
      MSWord := Unassigned;
      qr.Destroy;
    //except
//      Application.MessageBox('Erro ao tentar gerar o contrato, Contate o suporte!',
//                             'Erro do sistema',MB_ICONERROR);
//      MSWord.Quit;
//      MSWord := Unassigned;
//      qr.Destroy;
    //end;
  end;
end;

function TFrmLancamentoContrato.Extenso(Valor: Extended; Moeda: Boolean;
  Tipo: Integer): String;
var
  Centavos, Centena, Milhar, Milhao, Bilhao, Texto : string;
const
  Unidades: array [1..9] of string = ('um', 'dois', 'três','quatro','cinco',
  'seis', 'sete', 'oito','nove');
  Dez     : array [1..9] of string = ('onze', 'doze', 'treze', 'quatorze',
  'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove');
  Dezenas : array [1..9] of string = ('dez', 'vinte', 'trinta',
  'quarenta', 'cinqüenta', 'sessenta', 'setenta', 'oitenta', 'noventa');
  Centenas: array [1..9] of string = ('cento', 'duzentos', 'trezentos',
  'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos',
  'novecentos');
  function ifs( Expressao: Boolean; CasoVerdadeiro, CasoFalso:String): String;
  begin
    if Expressao then
      Result := CasoVerdadeiro
    else
      Result :=CasoFalso;
  end;
  function MiniExtenso( Valor: ShortString ): string;
  var
    Unidade, Dezena, Centena: String;
  begin
    if (Valor[2] = '1') and (Valor[3] <> '0') then
    begin
      Unidade := Dez[StrToInt(Valor[3])];
      Dezena := '';
    end
    else
    begin
     if Valor[2] <> '0' then
       Dezena := Dezenas[StrToInt(Valor[2])];
     if Valor[3] <> '0' then
       unidade := Unidades[StrToInt(Valor[3])];
    end;
    if (Valor[1] = '1') and (Unidade = '') and (Dezena = '') then
      centena := 'cem'
    else
      if Valor[1] <> '0' then
        Centena := Centenas[StrToInt(Valor[1])]
      else
        Centena := '';

    Result := Centena + ifs( (Centena <> '') and ((Dezena <> '') or
    (Unidade <> '')),' e ', '') + Dezena + ifs( (Dezena <> '') and
    (Unidade <> ''), ' e ','') + Unidade;
  end;
begin
  if Valor = 0 then
  begin
    if Moeda then
      Result := ''
    else
      Result := 'zero';

    Exit;
  end;

  Texto := FormatFloat( '000000000000.00', Valor );
  Centavos := MiniExtenso( '0' + Copy( Texto, 14, 2 ) );
  Centena  := MiniExtenso( Copy( Texto, 10, 3 ) );
  Milhar   := MiniExtenso( Copy( Texto,  7, 3 ) );

  if Milhar <> '' then
    Milhar := Milhar + ' mil';

  Milhao   := MiniExtenso( Copy( Texto,  4, 3 ) );

  if Milhao <> '' then
  begin
    Milhao := Milhao
    + ifs( Copy( Texto, 4,
    3 ) = '001', ' milhão', ' milhões');
  end;

  Bilhao   := MiniExtenso( Copy( Texto,  1, 3 ) );

  if Bilhao <> '' then
  begin
    Bilhao := Bilhao + ifs( Copy( Texto, 1, 3 ) = '001', ' bilhão',
    ' bilhões');
  end;

  Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar +
  Centena <> ''),
  ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ',
  Milhao + Milhar + Centena ) > 0), ', ', ' e '), '') +
  Milhao + ifs( (Milhao <> '') and (Milhar + Centena <> ''),
  ifs((Pos(' e ', Milhao) > 0) or
  (Pos( ' e ', Milhar + Centena ) > 0 ),', ',    ' e '), '') +
  Milhar + ifs( (Milhar <> '') and
  (Centena <> ''), ifs(Pos( ' e ', Centena ) > 0, ', ', ' e '),'') +
  Centena;

  if Moeda then
  begin
    if Tipo=0 then
    begin
      if (Bilhao <> '') and (Milhao + Milhar + Centena = '') then
        Result := Bilhao + ' de reais'
      else
      if (Milhao <> '') and (Milhar + Centena = '') then
        Result := Milhao + ' de reais'
      else
        Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar +
        Centena <> ''), ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ',
        Milhao +Milhar + Centena ) > 0), ', ', ' e '), '') + Milhao + ifs(
        (Milhao <> '') and (Milhar + Centena <> ''), ifs((Pos(' e ',
        Milhao) > 0) or (Pos( ' e ', Milhar + Centena ) > 0 ),', ',
        ' e '), '') + Milhar + ifs( (Milhar <> '') and (Centena <> ''),
        ifs(Pos( ' e ', Centena ) > 0, ', ', ' e '),'') +
        Centena + ifs( Int(Valor) = 1, ' real', ' reais');
      if Centavos <> '' then
      begin
        if Valor > 1 then
          Result := Result + ' e ' + Centavos + ifs( Copy(
          Texto, 14, 2 )= '01', ' centavo', ' centavos' )
        else
          Result := Centavos + ifs( Copy( Texto, 14, 2 )= '01',
          ' centavo', ' centavos' );
      end;
    end
    else
    begin
      if (Bilhao <> '') and (Milhao + Milhar + Centena = '') then
        Result := Bilhao + ' de dolares americanos'
      else
      if (Milhao <> '') and (Milhar + Centena = '') then
        Result := Milhao + ' de dolares americanos'
      else
        Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar +
        Centena <> ''), ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ',
        Milhao + Milhar + Centena ) > 0),', ', ' e '), '') + Milhao +
        ifs( (Milhao <> '') and (Milhar + Centena <> ''), ifs((Pos(' e ',
        Milhao) > 0) or (Pos( ' e ', Milhar + Centena ) > 0 ),', ',
        ' e '), '') + Milhar + ifs( (Milhar <> '') and (Centena <> ''),
        ifs(Pos( ' e ', Centena ) > 0,', ', ' e '),'') + Centena + ifs(
        Int(Valor) = 1, ' dolar americano', ' dolares americanos');

      if Centavos <> '' then
      begin
        if Valor > 1 then
          Result := Result + ' e ' + Centavos + ifs( Copy( Texto, 14, 2 )=
          '01', ' cent', ' cents' )
        else
          Result := Centavos + ifs( Copy( Texto, 14, 2 )= '01', ' cent', ' ' +
          'cents' );
      end;
    end;
  end;
end;

procedure TFrmLancamentoContrato.spbBoletosClick(Sender: TObject);
begin
  DMMovimentacao.qrMV_CONTRATO.Refresh;
  DMMovimentacao.qrCREDIARIO.Refresh;
  DMMovimentacao.qrMV_CT_PARCELA.Refresh;

  if (dsView.DataSet.FieldByName('CONTRATO').AsString = 'COMPRA DE IMÓVEL')then
  begin
    Application.MessageBox('Não existe boleto para quando se faz uma compra de imóvel!','Atenção',MB_ICONINFORMATION);
    Exit;
  end;

  if not dsView.DataSet.IsEmpty then
  begin
    dsCrediario.DataSet.Refresh;
    dsCrediario.DataSet.Filter:= 'ID_CONTRATO = ' + IntToStr(dsView.DataSet.fieldbyname('ID').Asinteger); //+ ' ORDER BY PARCELA';
    dsCrediario.DataSet.Filtered:= True;
    dsCrediario.DataSet.Refresh;
    while not dsCrediario.DataSet.Eof do
    begin
      if dsCrediario.DataSet.fieldbyname('SITUACAO').AsString = 'F' then
      begin
        dsParcela.DataSet.Filter:= 'ID = ' + IntToStr(dsCrediario.DataSet.fieldbyname('ID_CT_PARCELA').Asinteger);
        dsParcela.DataSet.Filtered:= True;
        if dsParcela.DataSet.fieldbyname('SITUACAO').AsString = 'A' then
        begin
          dsParcela.DataSet.Edit;
          dsParcela.DataSet.fieldbyname('SITUACAO').AsString:= 'F';
          dsParcela.DataSet.Post;
        end;
      end;
      dsCrediario.DataSet.Next;
    end;
    dsCrediario.DataSet.Refresh;
    dsParcela.DataSet.Filtered:= False;
    dsParcela.DataSet.Filter:= 'ID_CONTRATO = ' + IntToStr(dsView.DataSet.fieldbyname('ID').Asinteger);
    dsParcela.DataSet.Filtered:= True;
    pgcContrato.ActivePage:= tbBoletos;
  end;
end;

procedure TFrmLancamentoContrato.GridParcelasDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.FieldName = 'BOLETO_GERADO' then
  begin
    GridParcelas.Canvas.FillRect(Rect);
    if dsParcela.DataSet.fieldbyname('SITUACAO').AsString = 'A' then
    begin
      if dsParcela.DataSet.FieldByName('BOLETO_GERADO').AsInteger = 0 then
        img22.Draw(GridParcelas.Canvas,Rect.Left +25,Rect.Top + 0,0)
      else
        img22.Draw(GridParcelas.Canvas,Rect.Left +25,Rect.Top + 0,1);
    end
    else
      img22.Draw(GridParcelas.Canvas,Rect.Left +25,Rect.Top + 0,1);
  end
  else
  if Column.FieldName = 'SITUACAO' then
  begin
    GridParcelas.Canvas.FillRect(Rect);
    if dsParcela.DataSet.FieldByName('SITUACAO').AsString = 'A' then
      img22.Draw(GridParcelas.Canvas,Rect.Left +38,Rect.Top + 0,2)
    else
      img22.Draw(GridParcelas.Canvas,Rect.Left +38,Rect.Top + 0,3);
  end;
end;

procedure TFrmLancamentoContrato.spbVoltarClick(Sender: TObject);
begin
  dsParcela.DataSet.Filtered:= False;
  dsCrediario.DataSet.Filtered:= False;
  pgcContrato.ActivePage:= tbGrid;
end;

procedure TFrmLancamentoContrato.GridParcelasCellClick(Column: TColumn);
var
  qr: TFDQuery;
begin
  if Column.FieldName = 'BOLETO_GERADO' then
  begin
    qr:= TFDQuery.Create(nil);
    qr.Connection:= DM.Coneccao;
    qr.SQL.Add('SELECT ID_CT_PARCELA FROM CREDIARIO WHERE ID_CT_PARCELA = ' +
    IntToStr(dsParcela.DataSet.FieldByName('ID').AsInteger));
    qr.Open;
    if qr.IsEmpty then
    begin
      dsParcela.DataSet.Edit;
      if dsParcela.DataSet.FieldByName('BOLETO_GERADO').AsInteger = 0 then
        dsParcela.DataSet.FieldByName('BOLETO_GERADO').AsInteger:= 1
      else
        dsParcela.DataSet.FieldByName('BOLETO_GERADO').AsInteger:= 0;
      dsParcela.DataSet.Post;
    end
    else
    begin
      Application.MessageBox('O boleto desta parcela já se encontra gerado!','Atenção',MB_ICONWARNING);
    end;
  end;
end;

procedure TFrmLancamentoContrato.GridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.FieldName = 'SITUACAO' then
  begin
    Grid.Canvas.FillRect(Rect);
    if dsView.DataSet.FieldByName('SITUACAO').AsString = 'A' then
      img22.Draw(Grid.Canvas,Rect.Left +12,Rect.Top + 0,2)
    else
      img22.Draw(Grid.Canvas,Rect.Left +12,Rect.Top + 0,3);
  end;
end;

procedure TFrmLancamentoContrato.spbGerarBoletoClick(Sender: TObject);
var
  qr: TFDQuery;
  Gerados,NaoGerados,JaGerados: Integer;
  Relatorio: string;
begin
  Gerados:= 0;
  NaoGerados:= 0;
  JaGerados:= 0;
  dsParcela.DataSet.First;
  while not dsParcela.DataSet.Eof do
  begin
    if dsParcela.DataSet.FieldByName('BOLETO_GERADO').AsInteger = 1 then
    begin
      qr:= TFDQuery.Create(nil);
      qr.Connection:= DM.Coneccao;
      qr.SQL.Add('SELECT ID_CT_PARCELA FROM CREDIARIO WHERE ID_CT_PARCELA = ' +
      IntToStr(dsParcela.DataSet.FieldByName('ID').AsInteger));
      qr.Open;

      if qr.IsEmpty then
      begin
        dsCrediario.DataSet.Insert;
        dsCrediario.DataSet.FieldByName('CODIGO_COMPRA').Value:= null;
        dsCrediario.DataSet.FieldByName('CODIGO_CLIENTE').Value:=
        dsParcela.DataSet.FieldByName('ID_CLIENTE').AsInteger;
        dsCrediario.DataSet.FieldByName('DATA_COMPRA').AsDateTime:=
        dsParcela.DataSet.FieldByName('LANCAMENTO').AsDateTime;
        dsCrediario.DataSet.FieldByName('DATA_VENCIMENTO').AsDateTime:=
        dsParcela.DataSet.FieldByName('VENCIMENTO').AsDateTime;
        dsCrediario.DataSet.FieldByName('HISTORICO').AsString:=
        'Contrato Nº'+' '+IntToStr(dsView.DataSet.FieldByName('ID').asInteger);
        dsCrediario.DataSet.FieldByName('HISTORICO').AsString:= FormPrincipal.UserLogado;
        dsCrediario.DataSet.FieldByName('SITUACAO').AsString:= 'A';
        dsCrediario.DataSet.FieldByName('VALOR_COMPRA').AsFloat:=
        dsParcela.DataSet.FieldByName('VALOR').AsFloat;
        dsCrediario.DataSet.FieldByName('VALOR_JUROS').Value:= 0;
        dsCrediario.DataSet.FieldByName('VALOR_ACRESCIMO').Value:= 0;
        dsCrediario.DataSet.FieldByName('VALOR_DESCONTO').Value:= 0;
        dsCrediario.DataSet.FieldByName('VALOR_PAGO').Value:= 0;
        dsCrediario.DataSet.FieldByName('PARCELA').AsInteger:=
        dsParcela.DataSet.FieldByName('NUMERO').AsInteger;
        dsCrediario.DataSet.FieldByName('COD_EMPRESA').AsInteger:=
        DM.SDS_EmpresaCODIGO.Value;
        dsCrediario.DataSet.FieldByName('TIPO').Value:= 'BOL';
        dsCrediario.DataSet.FieldByName('NOME_SACADO').value:=
        dsView.DataSet.FieldByName('CLIENTE').Value;
        dsCrediario.DataSet.FieldByName('MES').Value:= FormatDateTime('yyyy',now);
        dsCrediario.DataSet.FieldByName('ANO').Value:= FormatDateTime('mm',now);
        dsCrediario.DataSet.FieldByName('ID_CONTRATO').Value:=
        dsView.DataSet.FieldByName('ID').asInteger;
        dsCrediario.DataSet.FieldByName('ID_CT_PARCELA').Value:=
        dsParcela.DataSet.FieldByName('ID').Value;
        dsCrediario.DataSet.FieldByName('VLR_GRAFICA').Value:= null;
        dsCrediario.DataSet.FieldByName('N_OS').Value:= null;
        dsCrediario.DataSet.Post;
        Gerados:= Gerados + 1;
      end
      else
      if not qr.IsEmpty then
      begin
        JaGerados:= JaGerados + 1;
      end;

      qr.Destroy;
    end
    else
      NaoGerados:= NaoGerados + 1;

    dsParcela.DataSet.Next;
  end;
  dsCrediario.DataSet.Refresh;
  Relatorio:= '||=======================||'+#13+
              '|| RETATÓRIO DE GERAÇÃO  '+#13+
              '||                       '+#13+
              '|| Gerados    : '+IntToStr(Gerados)+'     '+#13+
              '|| Não Gerados: '+IntToStr(NaoGerados)+'     '+#13+
              '|| Já Gerados : '+IntToStr(JaGerados)+'     '+#13+
              '||=======================||';
 // Application.MessageBox(PAnsiChar(Relatorio),'Operação Concluida.',MB_ICONINFORMATION);
  MessageDlg((Relatorio), mtInformation,[mbOk], 0);
end;

procedure TFrmLancamentoContrato.spbExcluirBoletoClick(Sender: TObject);
var
  I: Integer;
begin
  try
    if not dsCrediario.DataSet.IsEmpty then
    begin
      if cbxExcluirTodos.Checked = False then
      begin
        if Application.MESSAGEBOX('Deseja Excluir o boleto selecionado?',
           'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
        begin
          dsParcela.DataSet.Filter:= 'ID = ' + IntToStr(dsCrediario.DataSet.fieldbyname('ID_CT_PARCELA').asinteger);
          dsParcela.DataSet.Filtered:= True;
          dsParcela.DataSet.Edit;
          dsParcela.DataSet.FieldByName('BOLETO_GERADO').AsInteger:= 0;
          dsParcela.DataSet.Post;
          dsParcela.DataSet.Filtered:= False;
          dsParcela.DataSet.Filter:= 'ID_CONTRATO = ' + IntToStr(dsView.DataSet.fieldbyname('ID').asinteger);
          dsParcela.DataSet.Filtered:= True;
          dsCrediario.DataSet.Delete;
        end;
      end
      else
      begin
        if Application.MESSAGEBOX('Deseja Excluir todos os boletos?',
           'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
        begin
          for I:= 0 to Pred(dsCrediario.DataSet.RecordCount) do
          begin
            dsParcela.DataSet.Filter:= 'ID = ' + IntToStr(dsCrediario.DataSet.fieldbyname('ID_CT_PARCELA').asinteger);
            dsParcela.DataSet.Filtered:= True;
            dsParcela.DataSet.Edit;
            dsParcela.DataSet.FieldByName('BOLETO_GERADO').AsInteger:= 0;
            dsParcela.DataSet.Post;
            dsCrediario.DataSet.Delete;
            dsCrediario.DataSet.First;
          end;
          dsParcela.DataSet.Filtered:= False;
          dsParcela.DataSet.Filter:= 'ID_CONTRATO = ' + IntToStr(dsView.DataSet.fieldbyname('ID').asinteger);
          dsParcela.DataSet.Filtered:= True;
        end;
      end;
    end;
  except
    Application.MessageBox('Esse boleto já se encontra Pago, logo não podera ser excluido!','Atenção',MB_ICONERROR);
    dsParcela.DataSet.Filtered:= False;
    dsParcela.DataSet.Filter:= 'ID_CONTRATO = ' + IntToStr(dsView.DataSet.fieldbyname('ID').asinteger);
    dsParcela.DataSet.Filtered:= True;
  end;
end;

function TFrmLancamentoContrato.MessageDlgAde(Msg: string; AType: TMsgDlgType; AButtons:TMsgDlgButtons;
IndiceHelp: LongInt; DefButton: TMOdalResult; Portugues: Boolean): Word;
var
I: Integer;
Mensagem: TForm;
begin
  Mensagem := CreateMessageDialog(Msg, AType, Abuttons);
  Mensagem.HelpContext := IndiceHelp;
  with Mensagem do
  begin
    for i := 0 to ComponentCount - 1 do
    begin
      if (Components[i] is TButton) then
      begin
        if (TButton(Components[i]).ModalResult = DefButton) then
        begin
          ActiveControl := TWincontrol(Components[i]);
        end;
      end;
    end;
    if Portugues then
    begin
      if Atype = mtConfirmation then
        Caption := 'Confirmação'
      else if AType = mtWarning then
        Caption := 'Aviso'
      else if AType = mtError then
        Caption := 'Erro'
      else if AType = mtInformation then
        Caption := 'Informação';
    end;
  end;
  if Portugues then
  begin
    TButton(Mensagem.FindComponent('YES')).Caption := '&Todos';
    TButton(Mensagem.FindComponent('NO')).Caption := '&Um a Um';
    TButton(Mensagem.FindComponent('CANCEL')).Caption := '&Cancelar';
    TButton(Mensagem.FindComponent('ABORT')).Caption := '&Abortar';
    TButton(Mensagem.FindComponent('RETRY')).Caption := '&Repetir';
    TButton(Mensagem.FindComponent('IGNORE')).Caption := '&Ignorar';
    TButton(Mensagem.FindComponent('ALL')).Caption := '&Todos';
    TButton(Mensagem.FindComponent('HELP')).Caption := 'A&juda';
  end;
  Result := Mensagem.ShowModal;
  Mensagem.Free;
end;

procedure TFrmLancamentoContrato.spbImprimirBoletoClick(Sender: TObject);
var
  qrCrediario: TFDQuery;
begin
  if not dsCrediario.DataSet.IsEmpty then
  begin
    if cbxImprimirTodos.Checked = False then
    begin
      try
        FrmTitulosBancarios:= TFrmTitulosBancarios.Create(nil);
        FrmTitulosBancarios.Tag:= 1;
        FrmTitulosBancarios.ID_CREDIARIO:= dsCrediario.DataSet.fieldbyname('CODIGO').AsInteger;
        FrmTitulosBancarios.ShowModal;
      finally
        FreeAndNil(FrmTitulosBancarios);
      end;
    end
    else
    begin
      try
        FrmTitulosBancarios:= TFrmTitulosBancarios.Create(nil);
        FrmTitulosBancarios.Tag:= 2;
        FrmTitulosBancarios.ID_CONTRATO:= dsView.DataSet.fieldbyname('ID').AsInteger;
        FrmTitulosBancarios.ShowModal;
      finally
        FreeAndNil(FrmTitulosBancarios);
      end;
    end;
  end;
end;

procedure TFrmLancamentoContrato.cbxTipoContratoChange(Sender: TObject);
begin
  if (cbxTipoContrato.ItemIndex = 2) then
    spbGerarBoletosSiace.Visible:= True
  else
    spbGerarBoletosSiace.Visible:= False;
end;

procedure TFrmLancamentoContrato.spbGerarBoletosSiaceClick(
  Sender: TObject);
begin
  try
    FrmBoletoSiace:= TFrmBoletoSiace.Create(nil);
    FrmBoletoSiace.ShowModal;
  finally
    FreeAndNil(FrmBoletoSiace);
  end;
end;

procedure TFrmLancamentoContrato.cbxContratoClick(Sender: TObject);
var
  I: Integer;
begin
  cbxCarct.Items.Clear;
  if cbxContrato.ItemIndex = 0 then
  begin
    pgcEditContrato.ActivePage:= tbSimples;
    for I := 1 to 9 do
    begin
      cbxCarct.Items.Add(Wireless[I]);
    end;
  end
  else
  if cbxContrato.ItemIndex = 1 then
  begin
    pgcEditContrato.ActivePage:= tbSimples;
    for I := 1 to 2 do
    begin
      cbxCarct.Items.Add(Siace[I]);
    end;
  end
  else
  if cbxContrato.ItemIndex = 2 then
  begin
    pgcEditContrato.ActivePage:= tbContratoVenda;
    for I := 1 to 2 do
    begin
      cbxCarct.Items.Add(Venda[I]);
    end;
    cbxComprador.Text:= '';
    cbxImovel.Text:= '';
    cbxVendedor.Text:= '';
    cbxCentroCusto.text:= '';
    if dsImovelVenda.DataSet.Filtered = False then
    begin
      edtParcelas.Visible:= False;
      lblParcelas.Visible:= False;
      lblJurosParcela.visible:= False;
      edtJurosParcela.visible:= False;
      lblPorcent.visible:= False;
      edtEntrada.Visible:= False;
      edtSaldoFinanciar.Visible:= False;
      lblEntrada.Visible:= False;
      lblSaldoFinanciar.Visible:= False;
      lblValorParce.Visible:= False;
      lblValorParcela.Visible:= False;
      spbSomar.Visible:= False;
      rdgParcelaEntrada.Visible:= False;
      lblParcelasEntrada.Visible:= False;
      edtParcelasEntrada.Visible:= False;
      lblEntreMeses.Visible:= False;
      lblEntreMesMeses.Visible:= False;
      edtEntreMeses.Visible:= False;
    end;
    rdgTipoVenda.ItemIndex:= 0;
    edtIntermediacao.Text:= '';
    edtAvista.Text:= '';
    edtValorProposta.text:= '';
    PesquisaCliente('',cbxComprador);
    PesquisaImovel('',cbxImovel);
    PesquisaCliente('',cbxVendedor);
    PesquisaCentroCusto('',cbxCentroCusto);
  end
  else
  if cbxContrato.ItemIndex = 3 then
  begin
    pgcEditContrato.ActivePage:= tbContratoCompra;
    for I := 1 to 2 do
    begin
      cbxCarct.Items.Add(Compra[I]);
    end;
    cbxVendedorCompra.Text:= '';
    cbxImovelCompra.Text:= '';
    cbxCentroCustoCompra.Text:= '';
    rgpTipoCompra.ItemIndex:= 0;
    lblParcelaCompra.visible:= False;
    edtParcelaCompra.visible:= False;
    edtValorCompra.text:= '';
    PesquisaCliente('',cbxVendedorCompra);
    PesquisaImovel('',cbxImovelCompra);
    PesquisaCliente('',cbxVendedorCompra);
    PesquisaCentroCusto('',cbxCentroCustoCompra);
  end
  else
  if cbxContrato.ItemIndex = 4 then
  begin
    pgcEditContrato.ActivePage:= tbContratoAluguel;
    for I := 1 to 2 do
    begin
      cbxCarct.Items.Add(Aluguel[I]);
    end;
    cbxFiador.Visible:= False;
    cbxInquilino.text:= '';
    cbxImovelAluguel.text:= '';
    cbxProprietario.text:= '';
    edtVigencia.text:= '';
    edtDataInicio.date:= Now;
    edtDataTermino.Date:= now;
    edtVencimentoPrimeiroDia.text:= '';
    edtCarenciaDias.text:= '';
    edtMultaAtraso.text:= '';
    edtJurosMora.text:= '';
    edtDesconto.text:= '';
    edtDescontoDia.text:= '';
    edtFinalidade.text:= '';
    mmObs.Lines.Clear;
    PesquisaCliente('',cbxInquilino);
    PesquisaImovel('',cbxImovelAluguel);
    PesquisaCliente('',cbxProprietario);
  end;
end;

procedure TFrmLancamentoContrato.cbxClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PesquisaCliente(cbxCliente.Text,cbxCliente);
end;

procedure TFrmLancamentoContrato.PesquisaCentroCusto(Pesquisa: String;
  Campo: TComboBoxEditor);
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(Self);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Clear;
  if Pesquisa = '' then
    qr.SQL.Add('SELECT DESCRICAO FROM CENTRO_CUSTO')
  else
    qr.SQL.Add('SELECT DESCRICAO FROM CENTRO_CUSTO WHERE DESCRICAO LIKE ' + QuotedStr('%'+UpperCase(Pesquisa)+'%'));
  qr.Open;

  Campo.Items.Clear;
  while not qr.Eof do
  begin
    Campo.Items.Add(qr.FieldByName('DESCRICAO').AsString);
    qr.Next;
  end;
  qr.Destroy;
end;

procedure TFrmLancamentoContrato.rgpTipoCompraClick(Sender: TObject);
begin
  if rgpTipoCompra.ItemIndex = 0 then
  begin
    lblParcelaCompra.Visible:= False;
    edtParcelaCompra.Visible:= False;
    edtParcelaCompra.Text:= '1';
  end
  else
  begin
    edtParcelaCompra.Text:= '1';
    lblParcelaCompra.Visible:= True;
    edtParcelaCompra.Visible:= True;
  end;
end;

procedure TFrmLancamentoContrato.edtValorCompraEnter(Sender: TObject);
begin
  edtValorCompra.text:= ConverteText(edtValorCompra.text);
end;

function TFrmLancamentoContrato.ConverteReais(Valor: String): Currency;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= StrToFloat(Trim(Valor));
end;

function TFrmLancamentoContrato.ConverteText(Valor: String): string;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= Trim(Valor);
end;

procedure TFrmLancamentoContrato.edtValorCompraExit(Sender: TObject);
begin
  edtValorCompra.text:= FloatToStrF(ConverteReais(edtValorCompra.text),ffCurrency ,12,2);
end;

procedure TFrmLancamentoContrato.cbxVendedorCompraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PesquisaCliente(cbxVendedorCompra.Text,cbxVendedorCompra);
end;

procedure TFrmLancamentoContrato.cbxImovelCompraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PesquisaImovel(cbxImovelCompra.Text,cbxImovelCompra);
end;

procedure TFrmLancamentoContrato.cbxCentroCustoCompraKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PesquisaCentroCusto(cbxCentroCustoCompra.Text,cbxCentroCustoCompra);
end;

procedure TFrmLancamentoContrato.cbxCentroCustoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    PesquisaCentroCusto(cbxCentroCusto.Text,cbxCentroCusto);
end;

function TFrmLancamentoContrato.PassaNomeCentroCusto(ID: Integer): string;
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(Self);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Clear;
  qr.SQL.Add('SELECT DESCRICAO FROM CENTRO_CUSTO WHERE COD_CENTRO  = ' +InttoStr(ID));
  qr.Open;
  Result:= qr.FieldByName('DESCRICAO').AsString;
  qr.Destroy;
end;

procedure TFrmLancamentoContrato.AlteraValorCustoImovel(
  ID_IMOVEL: Integer);
var
  estoque, custo, MARGEM, VENDA, NOVO_CUSTO: REAL;
  qr: TFDQuery;
  Produto: Integer;
begin
  qr:= TFDQuery.create(nil);
  qr.connection:= DM.Coneccao;
  qr.sql.add('SELECT ID,ID_PRODUTOS FROM PRODUTOS_IMOVEL WHERE ID = ' + InttoStr(ID_IMOVEL));
  qr.open;
  Produto:= qr.fieldbyname('ID_PRODUTOS').asinteger;
  qr.destroy;

  // BUSCA ESTOQUE
  if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;

  try
    with dm.Consulta do
    begin
      close;
      sql.Clear;
      sql.add('SELECT * FROM PRODUTOS WHERE CODIGO = :CODPRO');
      Parambyname('CODPRO').AsInteger:= Produto;
      ExecSQL;
      estoque:= fieldbyname('ESTOQUE').AsCurrency;
      MARGEM :=  fieldbyname('MARGEM_LUCRO').AsCurrency;
    end;
    dm.IBTransaction.Commit;
  except
    dm.IBTransaction.rollback;
    showmessage('Erro ao buscar o custo do produto');
  end;

  // Atualiza preços do custo e venda do imovel
  try
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;

    dm.IBTransaction.StartTransaction;
    with dm.Consulta do
    begin
      close;
      sql.Clear;
      sql.add('UPDATE PRODUTOS SET PRECO_VENDA =:VDA, PRECO_CUSTO =:CUSTO,ESTOQUE =:ESTOQUE WHERE CODIGO = :CODPRO;');
      NOVO_CUSTO := ConverteReais(edtValorCompra.text);
      Parambyname('VDA').AsCurrency:= NOVO_CUSTO + (NOVO_CUSTO * MARGEM /100);
      Parambyname('CUSTO').AsCurrency:= NOVO_CUSTO;
      Parambyname('ESTOQUE').AsCurrency:= 1;
      Parambyname('CODPRO').AsInteger:= Produto;
      ExecSQL;
    end;
    dm.IBTransaction.Commit;
  except
    dm.IBTransaction.rollback;
    showmessage('Erro ao atualizar o custo do produto/ imovel');
  end;
end;

procedure TFrmLancamentoContrato.edtJurosParcelaEnter(Sender: TObject);
begin
  edtJurosParcela.text:= ConverteText(edtJurosParcela.text);
end;

procedure TFrmLancamentoContrato.edtJurosParcelaExit(Sender: TObject);
begin
  edtJurosParcela.text:= FloatToStrF(ConverteReais(edtJurosParcela.text),ffnumber ,12,2);
end;

procedure TFrmLancamentoContrato.AlteraEstoqueImovel(ID_IMOVEL: Integer; Estoque: Currency);
var
  qr: TFDQuery;
  Produto: Integer;
begin
  qr:= TFDQuery.create(nil);
  qr.connection:= DM.Coneccao;
  qr.sql.add('SELECT ID,ID_PRODUTOS FROM PRODUTOS_IMOVEL WHERE ID = ' + InttoStr(ID_IMOVEL));
  qr.open;
  Produto:= qr.fieldbyname('ID_PRODUTOS').asinteger;
  qr.destroy;

  // Atualiza preços do custo e venda do imovel
  try
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;

    dm.IBTransaction.StartTransaction;
    with dm.Consulta do
    begin
      close;
      sql.Clear;
      sql.add('UPDATE PRODUTOS SET ESTOQUE =:ESTOQUE WHERE CODIGO = :CODPRO;');
      Parambyname('ESTOQUE').AsCurrency:= Estoque;
      Parambyname('CODPRO').AsInteger:= Produto;
      ExecSQL;
    end;
    dm.IBTransaction.Commit;
  except
    dm.IBTransaction.rollback;
    showmessage('Erro ao atualizar o custo do produto/ imovel');
  end;
end;

procedure TFrmLancamentoContrato.cbxImovelCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  ID_IMOVEL: Integer;
begin
  if Key = Vk_F1 then
  begin
    try
      FPesquisaImovel:= TfPesquisaImovel.create(nil);
      FPesquisaImovel.tag:= 1;
      FPesquisaImovel.showmodal;
    finally
      ID_IMOVEL:=DMMovimentacao.dsImovel.dataset.fieldbyname('ID').asinteger;
      edtValorCompra.Text:= FloatToStrF(DMMovimentacao.dsImovel.dataset.fieldbyname('PRECO_CUSTO').ascurrency,ffCurrency,12,2);
      FreeandNil(FPesquisaImovel);
      cbxImovelCompra.text:= PassaNomeImovel(ID_IMOVEL);
    end;
  end
end;

procedure TFrmLancamentoContrato.cbxImovelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  ID_IMOVEL: Integer;
begin
  if Key = VK_F1 then
  begin
    try
      FPesquisaImovel:= TFPesquisaImovel.create(nil);
      FPesquisaImovel.tag:= 1;
      FPesquisaImovel.showmodal;
    finally
      ID_IMOVEL:=DMMovimentacao.dsImovel.dataset.fieldbyname('ID').asinteger;
      FreeandNil(FPesquisaImovel);
      cbxImovel.text:= PassaNomeImovel(ID_IMOVEL);
      edtAvista.Text:= FloatToStrF(ValorImovel('VENDA',ID_IMOVEL),ffNumber,12,2);
    end;
  end;
end;

procedure TFrmLancamentoContrato.cbxImovelAluguelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  ID_IMOVEL: Integer;
begin
  if Key = Vk_F1 then
  begin
    try
      FPesquisaImovel:= TFPesquisaImovel.create(nil);
      FPesquisaImovel.tag:= 1;
      FPesquisaImovel.showmodal;
    finally
      ID_IMOVEL:=DMMovimentacao.dsImovel.dataset.fieldbyname('ID').asinteger;
      FreeandNil(FPesquisaImovel);
      cbxImovelAluguel.text:= PassaNomeImovel(ID_IMOVEL);
    end;
  end;
end;

procedure TFrmLancamentoContrato.cbxClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = Vk_F1 then
  begin
    try
      FormConsClientes:= TFormConsClientes.Create(nil);
      FormConsClientes.ShowModal;
    finally
      cbxCliente.Text:= PassaNomeCliente(DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger);
      FreeAndNil(FormConsClientes);
    end;
  end;
end;

procedure TFrmLancamentoContrato.cbxVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = Vk_F1 then
  begin
    try
      FormConsClientes:= TFormConsClientes.Create(nil);
      FormConsClientes.ShowModal;
    finally
      cbxVendedor.Text:= PassaNomeCliente(DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger);
      FreeAndNil(FormConsClientes);
    end;
  end;
end;

procedure TFrmLancamentoContrato.cbxCompradorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = Vk_F1 then
  begin
    try
      FormConsClientes:= TFormConsClientes.Create(nil);
      FormConsClientes.ShowModal;
    finally
      cbxComprador.Text:= PassaNomeCliente(DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger);
      FreeAndNil(FormConsClientes);
    end;
  end;
end;

procedure TFrmLancamentoContrato.cbxProprietarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = Vk_F1 then
  begin
    try
      FormConsClientes:= TFormConsClientes.Create(nil);
      FormConsClientes.ShowModal;
    finally
      cbxProprietario.Text:= PassaNomeCliente(DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger);
      FreeAndNil(FormConsClientes);
    end;
  end;
end;

procedure TFrmLancamentoContrato.cbxInquilinoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = Vk_F1 then
  begin
    try
      FormConsClientes:= TFormConsClientes.Create(nil);
      FormConsClientes.ShowModal;
    finally
      cbxInquilino.Text:= PassaNomeCliente(DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger);
      FreeAndNil(FormConsClientes);
    end;
  end;
end;

procedure TFrmLancamentoContrato.cbxFiadorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = Vk_F1 then
  begin
    try
      FormConsClientes:= TFormConsClientes.Create(nil);
      FormConsClientes.ShowModal;
    finally
      cbxFiador.Text:= PassaNomeCliente(DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger);
      FreeAndNil(FormConsClientes);
    end;
  end;
end;

procedure TFrmLancamentoContrato.cbxCentroCustoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = Vk_F1 then
  begin
    try
      frmloc_centro:= Tfrmloc_centro.Create(nil);
      DM1.Dts_centro_Custo.DataSet.Open;
      frmloc_centro.ShowModal;
    finally
      cbxCentroCusto.Text:= PassaNomeCentroCusto(DM1.Dts_centro_Custo.DataSet.fieldbyname('COD_CENTRO').AsInteger);
      DM1.Dts_centro_Custo.DataSet.Close;
      FreeAndNil(frmloc_centro);
    end;
  end;
end;

procedure TFrmLancamentoContrato.cbxCentroCustoCompraKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = Vk_F1 then
  begin
    try
      frmloc_centro:= Tfrmloc_centro.Create(nil);
      DM1.Dts_centro_Custo.DataSet.Open;
      frmloc_centro.ShowModal;
    finally
      cbxCentroCustoCompra.Text:= PassaNomeCentroCusto(DM1.Dts_centro_Custo.DataSet.fieldbyname('COD_CENTRO').AsInteger);
      DM1.Dts_centro_Custo.DataSet.Close;
      FreeAndNil(frmloc_centro);
    end;
  end;
end;

procedure TFrmLancamentoContrato.edtAvistaEnter(Sender: TObject);
begin
  if TEdit(Sender).text <> '' then
    TEdit(Sender).text:= ConverteText(TEdit(Sender).text);
end;

procedure TFrmLancamentoContrato.edtAvistaExit(Sender: TObject);
var
  V1,V2,V3: Currency;
begin
  V1:= 0;V2:= 0;V3:= 0;
  if TEdit(Sender).text <> '' then
    TEdit(Sender).text:= FloatToStrF(ConverteReais(TEdit(Sender).text),ffnumber ,12,2);
  if edtAvista.Text <> '' then
    V1:= ConverteReais(edtAvista.Text);
  if edtIntermediacao.Text <> '' then
    V2:= ConverteReais(edtIntermediacao.Text);
  if edtEntrada.Text <> '' then
    V3:= ConverteReais(edtEntrada.Text);
  CalculaValores(V1,V2,V3);
end;

procedure TFrmLancamentoContrato.CalculaValores(Avista, intermed,
  Entrada: Currency);
begin
  edtValorProposta.Text:= FloatToStrF(Avista - intermed,ffNumber,12,2);
  edtSaldoFinanciar.Text:= FloatToStrF(Avista - (intermed + Entrada),ffNumber,12,2);
end;

procedure TFrmLancamentoContrato.spbSomarClick(Sender: TObject);
var
  Prest, R1, R2, Total,i,n,Valor : Real; // Extended;
begin
  if edtAvista.Text = '' then
  begin
    Application.MessageBox('Preencha o valor a-vista!','Atenção',MB_ICONWARNING);
    edtAvista.SetFocus;
    Exit;
  end;
  if edtIntermediacao.Text = '' then
  begin
    Application.MessageBox('Preencha o valor de intermediação!','Atenção',MB_ICONWARNING);
    edtIntermediacao.SetFocus;
    Exit;
  end;
  if edtEntrada.Text = '' then
  begin
     Application.MessageBox('Preencha o valor de entrada!','Atenção',MB_ICONWARNING);
     edtEntrada.SetFocus;
     Exit;
  end;
    if edtJurosParcela.Text = '' then
  begin
    Application.MessageBox('Preencha o juros!','Atenção',MB_ICONWARNING);
    edtJurosParcela.SetFocus;
    EXIT;
  end;
  if edtJurosParcela.Text = '0,00' then
  begin
    Valor := strtofloat(ConverteText(edtSaldoFinanciar.Text));
    n     := StrToInt(edtParcelas.text);
    Prest := valor / N;
    lblValorParcela.Caption:= FloatToStrF(Prest,ffnumber,12,2);
  end;

  if edtJurosParcela.Text <> '0,00' then
  begin
    Valor := strtofloat(ConverteText(edtSaldoFinanciar.Text));
    n     := StrToInt(edtParcelas.text);
    i     := (strtofloat(edtJurosParcela.Text) / 100) + 1;
    R1    := (power( i , n ) - 1) ;
    R2    := (i - 1) * (power ( i , n ));
    Total := R1 / R2;
    Prest := valor / Total;
    lblValorParcela.Caption:= FloatToStrF(Prest,ffnumber,12,2);
    lblValorParcela.Hint:= FloatToStrF((((Prest * n) - Valor)/n),ffnumber,12,2);
  end ;


end;

procedure TFrmLancamentoContrato.cbxGerarTotosClick(Sender: TObject);
var
  qr: TFDQuery;
begin
  dsParcela.DataSet.First;
  while not dsParcela.DataSet.Eof do
  begin
    qr:= TFDQuery.Create(nil);
    qr.Connection:= DM.Coneccao;
    qr.SQL.Add('SELECT ID_CT_PARCELA FROM CREDIARIO WHERE ID_CT_PARCELA = ' +
    IntToStr(dsParcela.DataSet.FieldByName('ID').AsInteger));
    qr.Open;
    if qr.IsEmpty then
    begin
      dsParcela.DataSet.Edit;
      if cbxGerarTotos.Checked = True then
        dsParcela.DataSet.FieldByName('BOLETO_GERADO').AsInteger:= 1
      else
        dsParcela.DataSet.FieldByName('BOLETO_GERADO').AsInteger:= 0;
      dsParcela.DataSet.Post;
    end;
    qr.Destroy; 
    dsParcela.DataSet.Next;
  end;
end;

procedure TFrmLancamentoContrato.cbxVendedorCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = Vk_F1 then
  begin
    try
      FormConsClientes:= TFormConsClientes.Create(nil);
      FormConsClientes.ShowModal;
    finally
      cbxVendedorCompra.Text:= PassaNomeCliente(DM.DTS_Clientes.DataSet.fieldbyname('CODIGO').AsInteger);
      FreeAndNil(FormConsClientes);
    end;
  end;
end;

procedure TFrmLancamentoContrato.spbRelatorioContratoClick(
  Sender: TObject);
begin
  try
    dsContratos.DataSet.Filter:= 'ID = ' + IntToStr(dsView.DataSet.fieldbyName('ID').asinteger);
    dsContratos.DataSet.Filtered:= True;
    if (dsContratos.DataSet.FieldByName('CONTRATO').AsString = 'VENDA DE IMÓVEL')then
    begin
      dsImovelVenda.DataSet.Filter:= 'ID_CONTRATO = ' + IntToStr(dsContratos.DataSet.fieldbyname('ID').AsInteger);
      dsImovelVenda.DataSet.Filtered:= True;

      if dsImovelVenda.DataSet.FieldByName('TIPO').AsString = 'A-Prazo' then
      begin
        frxReport.LoadFromFile('C:\siace\rel\ContratoImovelDetalhePrazo.fr3');
        qrContratoPrazo.Close;
        qrContratoPrazo.ParamByName('ID').AsInteger:= dsView.DataSet.fieldbyname('ID').AsInteger;
        qrContratoPrazo.Open;
        frxDBDataset.DataSet:= qrContratoPrazo;
        frxReport.ShowReport;
      end
      else
      if dsImovelVenda.DataSet.FieldByName('TIPO').AsString = 'A-Vista' then
      begin
        frxReport.LoadFromFile('C:\siace\rel\ContratoImovelDetalhevista.fr3');
        qrContratoVista.Close;
        qrContratoVista.ParamByName('ID').AsInteger:= dsView.DataSet.fieldbyname('ID').AsInteger;
        qrContratoVista.Open;
        frxDBDataset.DataSet:= qrContratoVista;
        frxReport.ShowReport;
      end;
    end
    else
      Application.MessageBox('No momento somente possue o relatório para a Venda de Imóvel!','Atenção',MB_ICONWARNING);
  finally
    dsContratos.DataSet.Filtered:= False;
    dsImovelVenda.DataSet.Filtered:= False;
  end;
end;

procedure TFrmLancamentoContrato.rdgParcelaEntradaClick(Sender: TObject);
begin
  if rdgParcelaEntrada.ItemIndex = 1 then
  begin
    lblParcelasEntrada.Visible:= False;
    edtParcelasEntrada.Visible:= False;
  end
  else
  begin
    lblParcelasEntrada.Visible:= True;
    edtParcelasEntrada.Visible:= True;
  end;
end;

procedure TFrmLancamentoContrato.spbCancelarContratoClick(Sender: TObject);
var
  ValorPago,ValorTotal: Currency;
  Parcela: Integer;
begin
  DMMovimentacao.qrCREDIARIO.Refresh;

  ValorPago:= 0;
  ValorTotal:= 0;
  Parcela:= 0;
  if (dsView.DataSet.FieldByName('CONTRATO').AsString = 'COMPRA DE IMÓVEL')then
  begin
    Application.MessageBox('Não pode cancelar o contrato de uma compra de imóvel!','Atenção',MB_ICONINFORMATION);
    Exit;
  end;

  if not dsView.DataSet.IsEmpty then
  begin
    qrCrediarioCancelar.Close;
    qrCrediarioCancelar.ParamByName('ID').AsInteger:= dsView.DataSet.fieldbyname('ID').Asinteger;
    qrCrediarioCancelar.Open;

    while not qrCrediarioCancelar.Eof do
    begin
      ValorPago:= ValorPago + qrCrediarioCancelar.fieldbyname('VALOR_PAGO').AsCurrency;
      ValorTotal:= ValorTotal + qrCrediarioCancelar.fieldbyname('VALOR_COMPRA').AsCurrency;
      Parcela:= Parcela + 1;
      qrCrediarioCancelar.Next;
    end;

    ReeembolsoValorpago:= ValorPago;
    lblReembolsoTotalPago.Caption:= FloatToStrF(ValorPago,ffCurrency,12,2);
    lblReembolsoTotalParcelas.Caption:= IntToStr(Parcela);
    lblReembolsoValor.Caption:= FloatToStrF(ValorTotal,ffCurrency,12,2);
    pgcContrato.ActivePage:= tbCancelaContrato;
  end;
end;

procedure TFrmLancamentoContrato.spbCancelarReembolsoClick(
  Sender: TObject);
begin
  dsCrediarioCancelar.DataSet.Close;
  pgcContrato.ActivePage:= tbGrid;
end;

procedure TFrmLancamentoContrato.edtValorCaixaExit(Sender: TObject);
var
  Valor: Currency;
begin
  if (edtValorCaixa.Text <> 'R$ 0,00') and (edtValorCaixa.Text <> '') then
    Valor:= Valor + StrToCurr(edtValorCaixa.Text);
  if (edtValorBanco.Text <> 'R$ 0,00') and (edtValorBanco.Text <> '') then
    Valor:= Valor + StrToCurr(edtValorBanco.Text);
  if (edtValorCheques.Text <> 'R$ 0,00') and (edtValorCheques.Text <> '') then
    Valor:= Valor + StrToCurr(edtValorCheques.Text);

  edtValorTotal.text:= CurrToStr(Valor);
end;

procedure TFrmLancamentoContrato.spbPesquisaContaClick(Sender: TObject);
begin
  dm.SDS_Conta_Bancaria.Open;
  FormConsContaBancaria := tFormConsContaBancaria.create(self);
  FormConsContaBancaria.showmodal;
  edtNomeConta.text := dm.SDS_Conta_BancariaCONTA.asstring;
  edtCodigoConta.text     := dm.SDS_Conta_BancariaCODIGO.asstring;
  edtDocumento.SETFOCUS;
  dm.SDS_Conta_Bancaria.Close;
end;

procedure TFrmLancamentoContrato.SpeedButton2Click(Sender: TObject);
begin
  frmcontaspagar_cheque := tfrmcontaspagar_cheque.create(self);
  frmcontaspagar_cheque.showmodal;

  edtValorTotal.text:= FloatToStr(StrToFloat(edtValorCaixa.Text) +
                             StrToFloat(edtValorBanco.text) +
                             StrToFloat(edtValorCheques.text));
end;

procedure TFrmLancamentoContrato.spbConfirmarReembolsoClick(
  Sender: TObject);
var
  ID,ID_VALE: Integer;
  cod_caixa : Integer;
  cheque :string;
  qrSql: TFDQuery;
  ID_IMOVEL: Integer;
begin
  edtCodigoConta.SetFocus;
  if Application.MESSAGEBOX('Deseja realmente cancelar o contrato? ' + #13 +
  'Caso seja cancelado o mesmo não será mais exibido!!',
       'Confirmar!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
    if edtValorReembolso.Text = '' then
    begin
      Application.MessageBox('Preencha o Valor de Reembolso!','Atenção',MB_ICONWARNING);
      Exit;
    end;

    if StrToFloat(edtValorReembolso.Text) <> StrToFloat(edtValorTotal.Text) then
    begin
      application.messagebox('O valor do Reembolso é diferente do total!!!',
      'Atenção', mb_ok + MB_ICONWARNING);
      exit;
    end;

    if (edtValorBanco.text <> '0,00') and (edtValorBanco.Text <> '') then
    begin
      if edtCodigoConta.Text = '' then
      begin
        application.messagebox('Impossível prosseguir com pagamento relacionado com o Banco sem informar a conta!', 'Atenção', mb_ok + MB_ICONWARNING);
        edtCodigoConta.setfocus;
        exit;
      end;
    end;

    // dm.qrcaixa_mov.open;
    if (edtValorCaixa.text <> '0,00') and (edtValorCaixa.Text <> '') then // pagamento com caixa
    begin
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
      DM.ProxCod.Open;

      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into movimento_diario');
      qrcaixa_mov.SQL.add('(codigo,id_vale,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:id_vale,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

      cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
      qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
      qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
      qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
      qrcaixa_mov.parambyname('data').asdatetime      :=  Date;
      qrcaixa_mov.parambyname('Valor_saida').asfloat := StrToFloat(edtValorCaixa.text);
      qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
      qrcaixa_mov.parambyname('valor').asfloat := StrToFloat(edtValorCaixa.text);

      DM.SDS_CONFIGURACOES.open;
      qrcaixa_mov.parambyname('cod_plano').AsInteger := 131;
      qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 25; // pagto conta caixa
      qrcaixa_mov.parambyname('historico').asstring := 'Cancelamento de Contrato pelo Motivo: '+ edtMotivo.text;
      qrcaixa_mov.parambyname('tipo').AsString  := 'C';
      qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
      // qrcaixa_mov.parambyname('COD_APAGAR').AsString  := qrcontaspagarCOD_LACTO.Text;
      qrcaixa_mov.ExecSQL;
      // dm.IBTransaction.CommitRetaining;

    end;

    if (edtValorBanco.text <> '0,00') and (edtValorBanco.Text <> '') then // pagamento com banco
    begin

      if (cbxDeposito.Checked = false) then
      begin
        cheque:= inttostr(prxcod('CHEQUES_EMITIDOS', 'cod_cheque', dm.IBTransaction, dm.ibsqlcod));

        try
          try
            with QInsCheque do
            begin
              close;
              Parambyname('cod_cheque').AsInteger     := strtoint(cheque);
              Parambyname('valor').Value              := StrtoFloat(edtValorBanco.text);
              Parambyname('data_emissao').AsDate      := Now;
              Parambyname('data_Vencimento').AsDate   := edtDataPredatado.date;

              if cbxCompensarInclusao.Checked = True then
                Parambyname('pago').AsString            := 'T'
              else
                Parambyname('pago').AsString            := 'F';

              Parambyname('origem').AsString            := 'AV';
              Parambyname('documento_origem').Value     := Null;
              Parambyname('Cod_conta').AsInteger         := StrToInt(edtCodigoConta.Text);

              if cbxCompensarInclusao.Checked = True then
                Parambyname('comp_na_inclusao').Asstring     := 'T'
              else
                Parambyname('comp_na_inclusao').Asstring     := 'F';

              Parambyname('data_compensacao').AsDate      := DATE;
              Parambyname('historico').Asstring           := edtMotivo.text;
              Parambyname('numero_cheque').AsInteger      := StrToInt(edtDocumento.Text);
              Parambyname('cod_usuario').AsInteger        := DM.sds_usuariosCodigo.asinteger;
              Parambyname('cod_empresa').AsInteger        := DM.sds_empresaCodigo.asInteger;
              Parambyname('Troco').AsString               := 'F';
              Parambyname('Favorecido').Asstring          := dsView.DataSet.FieldByName('CLIENTE').AsString;
              Parambyname('cod_venda').Value              := Null;
              Parambyname('cod_compra').VALUE             := null;
              Parambyname('observacao').AsString          := 'Lançamento de cheque ref a pagto de minutas de fretes' ;
              ExecSQL;
            end;
          except
            showmessage('Erro ao Gravar o Cheque');
          end;
        finally
          QInsCheque.Close;
        end;
      end;

      // compensa cheque e lança depósito na conta
      if (cbxCompensarInclusao.Checked = True ) or (cbxDeposito.Checked = True) then
      begin
        dm.ProxCod.Close;
        dm.ProxCod.SQL.Clear;
        dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
        DM.ProxCod.Open;

        qrcaixa_mov.close;
        qrcaixa_mov.sql.clear;
        qrcaixa_mov.sql.add('insert into movimento_diario');
        qrcaixa_mov.SQL.add('(codigo,id_vale,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CONTAS_PAGAR, CODIGO_CC, NUMERO_CC)');
        qrcaixa_mov.sql.add('values');
        qrcaixa_mov.SQL.add('(:codigo,:id_vale,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CONTAS_PAGAR, :CODIGO_CC, :NUMERO_CC)');

        cod_caixa := DM.ProxCodN_CODIGO.ASINTEGER + 1;
        qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
        qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
        qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
        qrcaixa_mov.parambyname('data').asdatetime      :=  now;
        qrcaixa_mov.parambyname('Valor_saida').asfloat := StrToFloat(edtValorBanco.text);
        qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
        qrcaixa_mov.parambyname('valor').asfloat := StrToFloat(edtValorBanco.text) ;

        DM.SDS_CONFIGURACOES.open;
        qrcaixa_mov.parambyname('cod_plano').AsInteger := 131;
        qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 26; // cheques  emitidos
        qrcaixa_mov.parambyname('historico').asstring := 'Pagto Fretes ref. Minutas do '+ dsView.DataSet.FieldByName('CLIENTE').AsString;
        qrcaixa_mov.parambyname('tipo').AsString  := 'B';
        qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PAG';
        qrcaixa_mov.parambyname('CODIGO_CC').asINTEGER:= DM.SDS_Conta_BancariaCODIGO.AsInteger;
        qrcaixa_mov.parambyname('NUMERO_CC').AsString:= DM.SDS_Conta_BancariaCONTA.AsString;
        qrcaixa_mov.ExecSQL;
      end;

      if (edtValorCheques.Text <> '0,00') and (edtValorCheques.Text <> '') then // pagamento com cheque de terceiros
      begin
        dm.ProxCod.Close;
        dm.ProxCod.SQL.Clear;
        dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
        DM.ProxCod.Open;

        qrcaixa_mov.close;
        qrcaixa_mov.sql.clear;
        qrcaixa_mov.sql.add('insert into movimento_diario');
        qrcaixa_mov.SQL.add('(codigo,id_vale,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem)');
        qrcaixa_mov.sql.add('values');
        qrcaixa_mov.SQL.add('(:codigo,:id_vale,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem)');

        qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
        qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
        qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
        qrcaixa_mov.parambyname('data').asdatetime      := now;
        qrcaixa_mov.parambyname('Valor_saida').asfloat := StrToFloat(edtValorCheques.Text);
        qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
        qrcaixa_mov.parambyname('valor').asfloat := StrToFloat(edtValorCheques.Text);

        DM.SDS_CONFIGURACOES.open;
        qrcaixa_mov.parambyname('cod_plano').AsInteger := 131;
        qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 27; // pgto. conta - CHEQUE TERCEIROS
        qrcaixa_mov.parambyname('historico').asstring := 'Pagto Fretes ref. Minutas do '+ dsView.DataSet.FieldByName('CLIENTE').AsString;
        qrcaixa_mov.parambyname('tipo').AsString  := 'C';
        qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
        qrcaixa_mov.ExecSQL;
      end;

      Application.ProcessMessages;
    end;

    dsCrediario.DataSet.First;
    qrSql:= TFDQuery.Create(nil);
    qrSql.Connection:= DM.Coneccao;

    qrSql.SQL.Clear;
    qrSql.SQL.Add('SELECT * FROM CREDIARIO WHERE ID_CONTRATO = ' + IntToStr(dsView.DataSet.fieldbyname('ID').asinteger));
    qrSql.open;
    while not qrSql.Eof do
    begin
      qrSql.Edit;
      if qrSql.FieldByName('SITUACAO').AsString = 'A' then
        qrSql.FieldByName('SITUACAO').AsString:= 'C';
      qrSql.Post;
      qrSql.Next;
    end;

    qrSql.Close;
    qrSql.SQL.Clear;
    qrSql.SQL.Add('SELECT * FROM MV_CONTRATO WHERE ID = ' + IntToStr(dsView.DataSet.fieldbyname('ID').asinteger));
    qrSql.open;

    qrSql.Edit;
    qrSql.FieldByName('SITUACAO').AsString:= 'C';
    qrSql.Post;
    qrSql.Close;

    qrSql.Close;
    qrSql.SQL.Clear;
    qrSql.SQL.Add('SELECT * FROM MV_CT_IMOVEL_VENDA WHERE ID_CONTRATO = ' + IntToStr(dsView.DataSet.fieldbyname('ID').asinteger));
    qrSql.open;

    AlteraEstoqueImovel(qrSql.fieldbyname('ID_IMOVEL').AsInteger,1);
    ID_IMOVEL:=qrSql.fieldbyname('ID_IMOVEL').AsInteger;

    qrSql.Close;
    qrSql.SQL.Clear;
    qrSql.SQL.Add('SELECT * FROM PRODUTOS_IMOVEL WHERE ID = ' + IntToStr(ID_IMOVEL));
    qrSql.open;

    qrSql.Edit;
    qrSql.FieldByName('SITUACAO').AsString:= 'VENDER';
    qrSql.Post;

    qrSql.Close;
    qrSql.Destroy;
    dsView.DataSet.Refresh;
    dsCrediarioCancelar.DataSet.Close;
    pgcContrato.ActivePage:= tbGrid;
  end;
end;

end.
