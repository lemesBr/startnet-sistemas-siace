unit urelextrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, Grids, XDBGrids, Mask, RzEdit,
  RzBtnEdt, ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, frxGradient, frxDesgn, frxClass, frxDBSet, DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormExtImovel = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label95: TLabel;
    eCentro: TRzButtonEdit;
    EnomeCentro: TEdit;
    Label96: TLabel;
    EImovel: TRzButtonEdit;
    EnomeImovel: TEdit;
    suiButton7: TsBitBtn;
    suiButton1: TsBitBtn;
    suiButton3: TsBitBtn;
    qrrelImoveis: TFDQuery;
    fximovies: TfrxReport;
    frxExtImovel: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    qrrelImoveisENDERECO: TStringField;
    qrrelImoveisID: TIntegerField;
    qrrelImoveisID_PRODUTOS: TIntegerField;
    qrrelImoveisSITUACAO: TStringField;
    qrrelImoveisN_LOTE: TStringField;
    qrrelImoveisQUADRA: TStringField;
    qrrelImoveisDESCRICAO: TStringField;
    qrrelImoveisDATA_COMPRA: TDateField;
    qrrelImoveisID_CENTRO_CUSTO: TIntegerField;
    qrRelImpostos: TFDQuery;
    frxDBImpostos: TfrxDBDataset;
    qrRelImpostosCODIGO: TIntegerField;
    qrRelImpostosDATA_EMISSAO: TDateField;
    qrRelImpostosDATA_VENCIMENTO: TDateField;
    qrRelImpostosDATA_PAGAMENTO: TDateField;
    qrRelImpostosCODCONTA: TIntegerField;
    qrRelImpostosCODFORNECEDOR: TIntegerField;
    qrRelImpostosDOCUMENTO: TStringField;
    qrRelImpostosNOTAFISCAL: TStringField;
    qrRelImpostosHISTORICO: TStringField;
    qrRelImpostosC: TStringField;
    qrRelImpostosE: TStringField;
    qrRelImpostosFILTRO: TIntegerField;
    qrRelImpostosESPECIE: TStringField;
    qrRelImpostosSITUACAO: TIntegerField;
    qrRelImpostosCODNOTA: TIntegerField;
    qrRelImpostosMOVIMENTO: TIntegerField;
    qrRelImpostosCODCAIXA: TIntegerField;
    qrRelImpostosCOD_CENTRO_CUSTO: TIntegerField;
    qrRelImpostosCOD_IMOVEL: TIntegerField;
    QrNotas: TFDQuery;
    frxDBnotas: TfrxDBDataset;
    QrNotasCODIGO_NOTA: TIntegerField;
    QrNotasNUM_NOTA: TStringField;
    QrNotasSERIE_NF: TStringField;
    QrNotasCFOP_NOTA: TStringField;
    QrNotasDATA_EMISSAO: TDateField;
    QrNotasCOD_FORNECEDOR: TIntegerField;
    QrNotasFORNECEDOR: TStringField;
    QrNotasDATA_VENCIMENTO: TDateField;
    QrNotasCNPJ: TStringField;
    QrNotasIE: TStringField;
    QrNotasUSUARIO_CADASTRO: TStringField;
    QrNotasDATA_CADASTRO: TDateField;
    QrNotasOBSERVACOES: TBlobField;
    QrNotasMES: TStringField;
    QrNotasANO: TStringField;
    QrNotasCHAVE_NFE: TStringField;
    QrNotasPROTOCOLO_NFE: TStringField;
    QrNotascod_pagto: TIntegerField;
    QrNotasTP: TStringField;
    QrNotasENDERECO_CLI_FORN: TStringField;
    QrNotasEND_NUM_CLIENTE: TStringField;
    QrNotasCOD_IBGE: TStringField;
    QrNotasCEP_CLIENTE_FORN: TStringField;
    QrNotasBAIRRO_CLIENTE_FORN: TStringField;
    QrNotasTIPO_PESSOA: TStringField;
    QrNotasTELEFONE: TStringField;
    QrNotasCIDADE_CLIENTE_FORN: TStringField;
    QrNotasUF_CLIENTE_FORN: TStringField;
    QrNotaspagamento: TStringField;
    QrNotasMODELO: TStringField;
    QrNotasEMITENTE: TStringField;
    QrNotasCST: TStringField;
    QrNotasSUB_SERIE: TStringField;
    QrNotasTRANSP_NOME: TStringField;
    QrNotasTRANSP_PLACA: TStringField;
    QrNotasTRANSP_PLACAUF: TStringField;
    QrNotasTRANSP_IE: TStringField;
    QrNotasTRANSP_CNPJ: TStringField;
    QrNotasTRANSP_ENDERECO: TStringField;
    QrNotasTRANSP_CIDADE: TStringField;
    QrNotasTRANSP_UF: TStringField;
    QrNotasTRANSP_ESPECIE: TStringField;
    QrNotasTRANSP_MARCA: TStringField;
    QrNotasTRANSP_NUMERO: TStringField;
    QrNotasOBS1: TStringField;
    QrNotasOBS2: TStringField;
    QrNotasOBS3: TStringField;
    QrNotasOBS4: TStringField;
    QrNotasOBS5: TStringField;
    QrNotasOBS6: TStringField;
    QrNotasOBS7: TStringField;
    QrNotasOBS8: TStringField;
    QrNotasSITUACAO: TIntegerField;
    QrNotasITENS: TIntegerField;
    QrNotasTIPO: TStringField;
    QrNotasNOTA_FISCAL: TStringField;
    QrNotasOPERACAO: TStringField;
    QrNotasINTEGRACAO: TIntegerField;
    QrNotasAPROVEITA_CREDITO_ICMS: TStringField;
    QrNotasCOD_EMPRESA: TIntegerField;
    QrNotasESPECIE: TStringField;
    QrNotasCODREMETENTE: TIntegerField;
    QrNotasREMETENTE: TStringField;
    qrrelImoveisALUGUEL: TFMTBCDField;
    qrrelImoveisVENDA: TFMTBCDField;
    qrrelImoveisPRECO_CUSTO: TFMTBCDField;
    qrrelImoveisPRECO_VENDA: TFMTBCDField;
    qrrelImoveisMARGEM_LUCRO: TFMTBCDField;
    qrrelImoveisPERC_IMPOSTO: TFMTBCDField;
    qrrelImoveisESTOQUE: TBCDField;
    qrrelImoveisVALOR_COMPRA: TFMTBCDField;
    qrRelImpostosVALOR: TFMTBCDField;
    qrRelImpostosVALORPAGO: TFMTBCDField;
    qrRelImpostosLIQUIDO: TFMTBCDField;
    qrRelImpostosDESCONTO: TFMTBCDField;
    qrRelImpostosACRESCIMO: TFMTBCDField;
    qrRelImpostosCOD_EMPRESA: TIntegerField;
    QrNotasTOTAL_NOTA: TFMTBCDField;
    QrNotasBASE_CALCULO_ICMS: TFMTBCDField;
    QrNotasVALOR_ICMS: TFMTBCDField;
    QrNotasBASE_CALC_ICMS_SUBST: TFMTBCDField;
    QrNotasVALOR_ICMS_SUBST: TFMTBCDField;
    QrNotasVALOR_FRETE: TFMTBCDField;
    QrNotasVALOR_SEGURO: TFMTBCDField;
    QrNotasVALOR_DESCONTO: TFMTBCDField;
    QrNotasVALOR_OUTRAS_DESPESAS: TFMTBCDField;
    QrNotasVALOR_IPI: TFMTBCDField;
    QrNotasVALOR_TOTAL_PRODUTOS: TFMTBCDField;
    QrNotasVALOR_TOTAL_ITENS_NOTA: TFMTBCDField;
    QrNotasVLR_ICMS_GARANTIDO: TFMTBCDField;
    QrNotasDESC_PAGTO: TStringField;
    QrNotasVALOR_AVISTA: TFMTBCDField;
    QrNotasVALOR_PRAZO: TFMTBCDField;
    QrNotasVALOR_COFINS: TFMTBCDField;
    QrNotasVALOR_PIS: TFMTBCDField;
    QrNotasVALOR_PIS_ST: TFMTBCDField;
    QrNotasVALOR_COFIS_ST: TFMTBCDField;
    QrNotasPERC_ICMS: TFMTBCDField;
    QrNotasTRANSP_QTDE: TFMTBCDField;
    QrNotasTRANSP_PESOBRUTO: TFMTBCDField;
    QrNotasTRANSP_PESOLIQUIDO: TFMTBCDField;
    QrNotasICMS_ISENTO: TFMTBCDField;
    QrNotasICMS_OUTRAS: TFMTBCDField;
    QrNotasDESCONTO_INCIDENTE: TIntegerField;
    QrNotasITEM_FRETE_VALOR: TFMTBCDField;
    QrNotasITEM_FRETE_BASE: TFMTBCDField;
    QrNotasITEM_FRETE_ALIQUOTA: TFMTBCDField;
    QrNotasITEM_FRETE_ICMS: TFMTBCDField;
    QrNotasITEM_SEGURO_VALOR: TFMTBCDField;
    QrNotasITEM_SEGURO_BASE: TFMTBCDField;
    QrNotasITEM_SEGURO_ALIQUOTA: TFMTBCDField;
    QrNotasITEM_SEGURO_ICMS: TFMTBCDField;
    QrNotasITEM_PIS_VALOR: TFMTBCDField;
    QrNotasITEM_PIS_BASE: TFMTBCDField;
    QrNotasITEM_PIS_ALIQUOTA: TFMTBCDField;
    QrNotasITEM_PIS_ICMS: TFMTBCDField;
    QrNotasITEM_COMPLEMENTO_VALOR: TFMTBCDField;
    QrNotasITEM_COMPLEMENTO_BASE: TFMTBCDField;
    QrNotasITEM_COMPLEMENTO_ALIQUOTA: TFMTBCDField;
    QrNotasITEM_COMPLEMENTO_ICMS: TFMTBCDField;
    QrNotasITEM_SERVICO_VALOR: TFMTBCDField;
    QrNotasITEM_SERVICO_BASE: TFMTBCDField;
    QrNotasITEM_SERVICO_ALIQUOTA: TFMTBCDField;
    QrNotasITEM_SERVICO_ICMS: TFMTBCDField;
    QrNotasITEM_OUTRAS_VALOR: TFMTBCDField;
    QrNotasITEM_OUTRAS_BASE: TFMTBCDField;
    QrNotasITEM_OUTRAS_ALIQUOTA: TFMTBCDField;
    QrNotasITEM_OUTRAS_ICMS: TFMTBCDField;
    QrNotasITEM_ESPECIAL_TOTAL: TFMTBCDField;
    QrNotasITEM_ESPECIAL_VALOR: TFMTBCDField;
    QrNotasBASEICMS_PRODUTOS: TIntegerField;
    QrNotasCONF_ITEM_ESPECIAL: TFMTBCDField;
    QrNotasCREDITO_ICMS: TFMTBCDField;
    QrNotasICMSRETIDO: TFMTBCDField;
    QrNotasPERC_ICMSRETIDO: TFMTBCDField;
    QrNotasVALOR_MERCADORIAS: TFMTBCDField;
    QrNotasCONF_BASEICMS: TFMTBCDField;
    QrNotasCONF_VALORICMS: TFMTBCDField;
    QrNotasCONF_BASESUB: TFMTBCDField;
    QrNotasCONF_VALORSUB: TFMTBCDField;
    QrNotasCONF_FRETE: TFMTBCDField;
    QrNotasCONF_SEGURO: TFMTBCDField;
    QrNotasCONF_OUTRAS: TFMTBCDField;
    QrNotasCONF_IPI: TFMTBCDField;
    QrNotasCONF_DESCONTO: TFMTBCDField;
    QrNotasCONF_TOTALPRODUTOS: TFMTBCDField;
    QrNotasCONF_TOTALNOTA: TFMTBCDField;
    QrNotasCONF_ICMSRETIDO: TFMTBCDField;
    QrNotasCONF_ICMSREDITO_PERC: TFMTBCDField;
    QrNotasCONFI_PIS: TFMTBCDField;
    QrNotasCONF_COFINS: TFMTBCDField;
    QrNotasCOD_CENTRO_CUSTO: TIntegerField;
    QrNotasCOD_IMOVEL: TIntegerField;
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure eCentroButtonClick(Sender: TObject);
    procedure eCentroKeyPress(Sender: TObject; var Key: Char);
    procedure EImovelButtonClick(Sender: TObject);
    procedure EImovelKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExtImovel: TFormExtImovel;

implementation

uses Centro_Custo, ModuleDados1, Principal, PesquisaImoveis,
  uDMMovimentacao, ModulodeDados, loc_centrocusto;

{$R *.dfm}

procedure TFormExtImovel.suiButton1Click(Sender: TObject);
begin
close;
end;

procedure TFormExtImovel.suiButton3Click(Sender: TObject);
begin
EImovel.Clear;
eCentro.Clear;
EnomeCentro.Clear;
EnomeImovel.Clear;
end;

procedure TFormExtImovel.eCentroButtonClick(Sender: TObject);
begin
 frmloc_centro := tfrmloc_centro.create(self);
  frmloc_centro.showmodal;

  eCentro.Text := DM1.Sds_CentroCustoCOD_CENTRO.TEXT;
  EnomeCentro.Text := DM1.Sds_CentroCustoDESCRICAO.TEXT;
//  econta.Text := DM1.Sds_CentroCustoCOD_PLANO.Text;
  EImovel.SetFocus;
end;

procedure TFormExtImovel.eCentroKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   if eCentro.Text > '' then
   begin
    if not formprincipal.Locregistro(DM1.Sds_CentroCusto, eCentro.Text, 'COD_CENTRO')
    then
      eCentroButtonClick(FormExtImovel)
    else
    begin
      EnomeCentro.Text := DM1.Sds_CentroCusto.fieldbyname('DESCRICAO').asstring;
      EImovel.SetFocus;
    end;
   end  else
    EImovel.SetFocus;
  end;
end;

procedure TFormExtImovel.EImovelButtonClick(Sender: TObject);
begin
 FPesquisaImovel:=TFPesquisaImovel.Create(self);
 FPesquisaImovel.Showmodal;

 if NOT DMMovimentacao.dsImovel.DataSet.IsEmpty then
 begin
 EImovel.TEXT := DMMovimentacao.qrImovelID_PRODUTOS.Text;
 EnomeImovel.Text := DMMovimentacao.qrImovelDESCRICAO.Text;
 suiButton7.SetFocus;
 end;
end;

procedure TFormExtImovel.EImovelKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
      begin
      DMMovimentacao.qrImovel.open;
      IF EImovel.Text > '' then
      BEGIN
      If DMMovimentacao.qrImovel.locate('ID_PRODUTOS',EImovel.text, [])=True then
      begin
       EImovel.TEXT := DMMovimentacao.qrImovelID_PRODUTOS.Text;
       EnomeImovel.Text := DMMovimentacao.qrImovelDESCRICAO.Text;
       suiButton7.SetFocus;
      end;
      if not DMMovimentacao.qrImovel.locate('ID_PRODUTOS',EImovel.text, [])=True then
      begin
      EImovelButtonClick(FormExtImovel);
      end;
      end else
      BEGIN
      suiButton7.SetFocus;
      end;
      end;
end;

procedure TFormExtImovel.suiButton7Click(Sender: TObject);
begin
   dm.qrrelatorio.open;
  dm.qrrelatorio.edit;

  dm.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  dm.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';
  
qrrelImoveis.Close;
qrrelImoveis.SQL.Clear;
qrrelImoveis.SQL.add('select * from VIEW_IMOVEL where id > 0');
if eCentro.text > '' then
qrrelImoveis.SQL.add(' and ID_CENTRO_CUSTO ='+ eCentro.text);
if EImovel.Text > '' then
qrrelImoveis.SQL.add(' and id_produtos = '+eimovel.Text );
qrrelImoveis.Open;

qrRelImpostos.Close;
qrRelImpostos.SQL.Clear;
qrRelImpostos.SQL.add('select * from contas_apagar where codigo > 0');
if eCentro.text > '' then
qrRelImpostos.SQL.add(' and COD_CENTRO_CUSTO ='+ eCentro.text);
if EImovel.Text > '' then
qrRelImpostos.SQL.add(' and COD_IMOVEL = '+eimovel.Text );
qrRelImpostos.Open;

QrNotas.Close;
QrNotas.SQL.Clear;
QrNotas.SQL.add('select * from NOTASFISCAIS where codigo_NOTA > 0');
if eCentro.text > '' then
QrNotas.SQL.add(' and COD_CENTRO_CUSTO ='+ eCentro.text);
if EImovel.Text > '' then
QrNotas.SQL.add(' and COD_IMOVEL = '+eimovel.Text );
QrNotas.Open;

    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE GANHOS DE CAPITAL';
    fximovies.LoadFromFile('\siace\rel\relganhos.fr3');
    fximovies.ShowReport;

end;

procedure TFormExtImovel.FormShow(Sender: TObject);
begin
DM1.Sds_CentroCusto.Open;
 DM1.Sds_CentroCusto.Filtered:= False;
end;

end.
