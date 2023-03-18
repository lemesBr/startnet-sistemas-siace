unit lista_notacompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, frxClass, frxDBSet, frxDesgn, Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvGlowButton, RxToolEdit;

type
  Tfrmlista_notacompra = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    fxnota: TfrxReport;
    fsnota: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    qrnota_item: TFDQuery;
    fsnota_item: TfrxDBDataset;
    dsnota: TDataSource;
    Label7: TLabel;
    ecfop: TEdit;
    ZQuery1: TFDQuery;
    qrnota: TFDQuery;
    Bevel2: TBevel;
    Panel1: TPanel;
    qrcompra_produto: TFDQuery;
    fscompra_produto: TfrxDBDataset;
    qrentrada: TFDQuery;
    fxentrada: TfrxDBDataset;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrcompra_produtoCODIGO_PRODUTO: TIntegerField;
    qrcompra_produtoDESCRICAO: TStringField;
    qrentradaCST: TStringField;
    qrentradaCFOP: TStringField;
    qrentradaNUM_NOTA: TStringField;
    qrentradaDATA_CADASTRO: TDateField;
    qrentradaESPECIE: TStringField;
    qrentradaSERIE_NF: TStringField;
    qrnotaCODIGO_NOTA: TIntegerField;
    qrnotaNUM_NOTA: TStringField;
    qrnotaSERIE_NF: TStringField;
    qrnotaCFOP_NOTA: TStringField;
    qrnotaDATA_EMISSAO: TDateField;
    qrnotaCOD_FORNECEDOR: TIntegerField;
    qrnotaFORNECEDOR: TStringField;
    qrnotaDATA_VENCIMENTO: TDateField;
    qrnotaCNPJ: TStringField;
    qrnotaIE: TStringField;
    qrnotaUSUARIO_CADASTRO: TStringField;
    qrnotaDATA_CADASTRO: TDateField;
    qrnotaOBSERVACOES: TBlobField;
    qrnotaMES: TStringField;
    qrnotaANO: TStringField;
    qrnotaCHAVE_NFE: TStringField;
    qrnotaPROTOCOLO_NFE: TStringField;
    qrnotacod_pagto: TIntegerField;
    qrnotaTP: TStringField;
    qrnotaENDERECO_CLI_FORN: TStringField;
    qrnotaEND_NUM_CLIENTE: TStringField;
    qrnotaCOD_IBGE: TStringField;
    qrnotaCEP_CLIENTE_FORN: TStringField;
    qrnotaBAIRRO_CLIENTE_FORN: TStringField;
    qrnotaTIPO_PESSOA: TStringField;
    qrnotaTELEFONE: TStringField;
    qrnotaCIDADE_CLIENTE_FORN: TStringField;
    qrnotaUF_CLIENTE_FORN: TStringField;
    qrnotaDESC_PAGTO: TStringField;
    qrnotapagamento: TStringField;
    qrnotaMODELO: TStringField;
    qrnotaEMITENTE: TStringField;
    qrnotaCST: TStringField;
    qrnotaSUB_SERIE: TStringField;
    qrnotaTRANSP_NOME: TStringField;
    qrnotaTRANSP_PLACA: TStringField;
    qrnotaTRANSP_PLACAUF: TStringField;
    qrnotaTRANSP_IE: TStringField;
    qrnotaTRANSP_CNPJ: TStringField;
    qrnotaTRANSP_ENDERECO: TStringField;
    qrnotaTRANSP_CIDADE: TStringField;
    qrnotaTRANSP_UF: TStringField;
    qrnotaTRANSP_ESPECIE: TStringField;
    qrnotaTRANSP_MARCA: TStringField;
    qrnotaOBS1: TStringField;
    qrnotaOBS2: TStringField;
    qrnotaOBS3: TStringField;
    qrnotaOBS4: TStringField;
    qrnotaOBS5: TStringField;
    qrnotaOBS6: TStringField;
    qrnotaOBS7: TStringField;
    qrnotaOBS8: TStringField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaITENS: TIntegerField;
    qrnotaTIPO: TStringField;
    qrnotaNOTA_FISCAL: TStringField;
    qrnotaDESCONTO_INCIDENTE: TIntegerField;
    qrnotaAPROVEITA_CREDITO_ICMS: TStringField;
    qrnotaCOD_EMPRESA: TIntegerField;
    qrnotaESPECIE: TStringField;
    qrnotaCODREMETENTE: TIntegerField;
    qrnotaREMETENTE: TStringField;
    qrentradaESTADO: TStringField;
    Label4: TLabel;
    Combo_Filtro: TComboBox;
    qrnotaTOTAL_NOTA: TFMTBCDField;
    qrnotaBASE_CALCULO_ICMS: TFMTBCDField;
    qrnotaVALOR_ICMS: TFMTBCDField;
    qrnotaBASE_CALC_ICMS_SUBST: TFMTBCDField;
    qrnotaVALOR_ICMS_SUBST: TFMTBCDField;
    qrnotaVALOR_FRETE: TFMTBCDField;
    qrnotaVALOR_SEGURO: TFMTBCDField;
    qrnotaVALOR_DESCONTO: TFMTBCDField;
    qrnotaVALOR_OUTRAS_DESPESAS: TFMTBCDField;
    qrnotaVALOR_IPI: TFMTBCDField;
    qrnotaVALOR_TOTAL_PRODUTOS: TFMTBCDField;
    qrnotaVALOR_TOTAL_ITENS_NOTA: TFMTBCDField;
    qrnotaVLR_ICMS_GARANTIDO: TFMTBCDField;
    qrnotaVALOR_AVISTA: TFMTBCDField;
    qrnotaVALOR_PRAZO: TFMTBCDField;
    qrnotaVALOR_COFINS: TFMTBCDField;
    qrnotaVALOR_PIS: TFMTBCDField;
    qrnotaVALOR_PIS_ST: TFMTBCDField;
    qrnotaVALOR_COFIS_ST: TFMTBCDField;
    qrnotaPERC_ICMS: TFMTBCDField;
    qrnotaTRANSP_QTDE: TFMTBCDField;
    qrnotaTRANSP_NUMERO: TStringField;
    qrnotaTRANSP_PESOBRUTO: TFMTBCDField;
    qrnotaTRANSP_PESOLIQUIDO: TFMTBCDField;
    qrnotaICMS_ISENTO: TFMTBCDField;
    qrnotaICMS_OUTRAS: TFMTBCDField;
    qrnotaITEM_FRETE_VALOR: TFMTBCDField;
    qrnotaITEM_FRETE_BASE: TFMTBCDField;
    qrnotaITEM_FRETE_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_FRETE_ICMS: TFMTBCDField;
    qrnotaITEM_SEGURO_VALOR: TFMTBCDField;
    qrnotaITEM_SEGURO_BASE: TFMTBCDField;
    qrnotaITEM_SEGURO_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_SEGURO_ICMS: TFMTBCDField;
    qrnotaITEM_PIS_VALOR: TFMTBCDField;
    qrnotaITEM_PIS_BASE: TFMTBCDField;
    qrnotaITEM_PIS_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_PIS_ICMS: TFMTBCDField;
    qrnotaITEM_COMPLEMENTO_VALOR: TFMTBCDField;
    qrnotaITEM_COMPLEMENTO_BASE: TFMTBCDField;
    qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_COMPLEMENTO_ICMS: TFMTBCDField;
    qrnotaITEM_SERVICO_VALOR: TFMTBCDField;
    qrnotaITEM_SERVICO_BASE: TFMTBCDField;
    qrnotaITEM_SERVICO_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_SERVICO_ICMS: TFMTBCDField;
    qrnotaITEM_OUTRAS_VALOR: TFMTBCDField;
    qrnotaITEM_OUTRAS_BASE: TFMTBCDField;
    qrnotaITEM_OUTRAS_ALIQUOTA: TFMTBCDField;
    qrnotaITEM_OUTRAS_ICMS: TFMTBCDField;
    qrnotaITEM_ESPECIAL_TOTAL: TFMTBCDField;
    qrnotaITEM_ESPECIAL_VALOR: TFMTBCDField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qrnotaCONF_ITEM_ESPECIAL: TFMTBCDField;
    qrnotaCREDITO_ICMS: TFMTBCDField;
    qrnotaOPERACAO: TStringField;
    qrnotaINTEGRACAO: TIntegerField;
    qrnotaICMSRETIDO: TFMTBCDField;
    qrnotaPERC_ICMSRETIDO: TFMTBCDField;
    qrnotaVALOR_MERCADORIAS: TFMTBCDField;
    qrnotaCONF_BASEICMS: TFMTBCDField;
    qrnotaCONF_VALORICMS: TFMTBCDField;
    qrnotaCONF_BASESUB: TFMTBCDField;
    qrnotaCONF_VALORSUB: TFMTBCDField;
    qrnotaCONF_FRETE: TFMTBCDField;
    qrnotaCONF_SEGURO: TFMTBCDField;
    qrnotaCONF_OUTRAS: TFMTBCDField;
    qrnotaCONF_IPI: TFMTBCDField;
    qrnotaCONF_DESCONTO: TFMTBCDField;
    qrnotaCONF_TOTALPRODUTOS: TFMTBCDField;
    qrnotaCONF_TOTALNOTA: TFMTBCDField;
    qrnotaCONF_ICMSRETIDO: TFMTBCDField;
    qrnotaCONF_ICMSREDITO_PERC: TFMTBCDField;
    qrnotaCONFI_PIS: TFMTBCDField;
    qrnotaCONF_COFINS: TFMTBCDField;
    qrnotaCOD_CENTRO_CUSTO: TIntegerField;
    qrnotaCOD_IMOVEL: TIntegerField;
    qrnota_itemCODIGO_ITEM: TIntegerField;
    qrnota_itemCODIGO_PRODUTO: TIntegerField;
    qrnota_itemCODIGO_BARRAS: TStringField;
    qrnota_itemCODIGO_NOTA: TIntegerField;
    qrnota_itemDESCRICAO: TStringField;
    qrnota_itemNCM_SH: TStringField;
    qrnota_itemCST: TStringField;
    qrnota_itemCFOP: TStringField;
    qrnota_itemDESC_UNIDADE: TStringField;
    qrnota_itemQUANTIDADE: TBCDField;
    qrnota_itemVALOR_UNI: TBCDField;
    qrnota_itemVALOR_DESC: TFMTBCDField;
    qrnota_itemTOTAL_ITEM: TFMTBCDField;
    qrnota_itemDATA: TDateField;
    qrnota_itemBASE_ICMS: TFMTBCDField;
    qrnota_itemVALOR_ICMS: TFMTBCDField;
    qrnota_itemVALOR_IPI: TFMTBCDField;
    qrnota_itemPERC_ICMS: TFMTBCDField;
    qrnota_itemPERC_IPI: TFMTBCDField;
    qrnota_itemPRECO_VENDA: TFMTBCDField;
    qrnota_itemPRECO_VENDA2: TFMTBCDField;
    qrnota_itemDATA_VALIDADE: TDateField;
    qrnota_itemDATA_FABRICACAO: TDateField;
    qrnota_itemFRACAO: TIntegerField;
    qrnota_itemQUANT_FRACIONADA: TBCDField;
    qrnota_itemLOTE_MED: TStringField;
    qrnota_itemMARG_LUCRO: TFMTBCDField;
    qrnota_itemATIVO: TStringField;
    qrnota_itemBASE_ICMS_ST: TFMTBCDField;
    qrnota_itemALIC_ICMS_ST: TFMTBCDField;
    qrnota_itemVALOR_ICMS_ST: TFMTBCDField;
    qrnota_itemCOD_EMPRESA: TIntegerField;
    qrnota_itemIMOBILZ: TStringField;
    qrnota_itemBASE_PIS: TFMTBCDField;
    qrnota_itemPERC_PIS: TFMTBCDField;
    qrnota_itemVALOR_PIS: TFMTBCDField;
    qrnota_itemBASE_COFINS: TFMTBCDField;
    qrnota_itemPERC_COFINS: TFMTBCDField;
    qrnota_itemVALOR_COFINS: TFMTBCDField;
    qrnota_itemBASE_IPI: TFMTBCDField;
    qrnota_itemUN_FRACAO: TStringField;
    qrnota_itemITEM: TIntegerField;
    qrnota_itemCODFORNECEDOR: TIntegerField;
    qrnota_itemNUM_NOTA: TStringField;
    qrnota_itemICMS_RETIDO: TStringField;
    qrnota_itemSUBTOTAL: TFMTBCDField;
    qrnota_itemDESCONTO_P: TFMTBCDField;
    qrnota_itemICMS_REDUCAO: TFMTBCDField;
    qrnota_itemICMS_VALORRETIDO: TFMTBCDField;
    qrnota_itemICMS_ISENTO: TFMTBCDField;
    qrnota_itemICMS_NAOTRIBUTADO: TFMTBCDField;
    qrnota_itemIPI_TIPO: TStringField;
    qrnota_itemTIPO: TIntegerField;
    qrnota_itemFRETE: TFMTBCDField;
    qrnota_itemOUTRAS: TFMTBCDField;
    qrnota_itemSEGURO: TFMTBCDField;
    qrnota_itemCLASSIFICACAO_FISCAL: TStringField;
    qrnota_itemSUB_PRODUTOS: TFMTBCDField;
    qrnota_itemITEM_ESPECIAL_VALOR: TFMTBCDField;
    qrnota_itemICMS_OUTRAS: TFMTBCDField;
    qrnota_itemALTERA_ITEM: TIntegerField;
    qrnota_itemCREDITO_ICMS: TFMTBCDField;
    qrnota_itemCREDITO_ICMS_BASE: TFMTBCDField;
    qrnota_itemPMARGEM: TSingleField;
    qrnota_itemPRECO_CUSTO: TFMTBCDField;
    qrnota_itemCODLANCAMENTO: TStringField;
    qrentradaVALOR_TOTAL: TFMTBCDField;
    qrentradaBASE_CALCULO: TFMTBCDField;
    qrentradaIMPOSTO: TFMTBCDField;
    qrentradaPERC_ICMS: TFMTBCDField;
    qrcompra_produtoTOTAL_COMPRA: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrnotaCalcFields(DataSet: TDataSet);
    procedure combo_relatorioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_notacompra: Tfrmlista_notacompra;

implementation

uses compra_menu, ModulodeDados, Principal;

{$R *.dfm}

procedure Tfrmlista_notacompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_notacompra.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;

  dateedit1.text := '01/' + copy(datetostr(incmonth(date, -1)), 4, 7);
  dateedit2.date := formprincipal.UltimoDiaMes(date);

end;

procedure Tfrmlista_notacompra.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_notacompra.bimprimirClick(Sender: TObject);
var
  fornecedor_imp, FORNECEDOR, ordem, nota, filtro: string;
  vqtde: integer;
  vtotal: double;
  SITUACAO: string;
  cfop, movimento: string;
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


  dm.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := 'CFOP: ' + ecfop.Text;
  dm.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'PERIODO: ' + dateedit1.TEXT + ' A ' + dateedit2.TEXT;

  if combo_ordem.ItemIndex = 0 then ordem := 'data_cadastro';
  if combo_ordem.ItemIndex = 1 then ordem := 'data_emissao';
  if combo_ordem.ItemIndex = 2 then ordem := 'num_nota';
  if combo_ordem.ItemIndex = 3 then ordem := 'cfop_nota';

  if Combo_Filtro.ItemIndex = 0 then filtro := 'data_cadastro';
  if Combo_Filtro.ItemIndex = 1 then filtro := 'data_emissao';




  if combo_relatorio.itemindex = 0 then

  begin

    fornecedor_imp := '';
    nota := '';

    if ecfop.text <> '' then cfop := ' and cfop_nota = ''' + ecfop.text + '''' else cfop := '';


    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from notasfiscais where COD_EMPRESA =:COD_EMP AND '+ filtro + ' BETWEEN :datai and :dataf ' + CFOP + ' order by ' + ordem);
    qrnota.params.ParamByName('cod_emp').AsInteger := iEmp;
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;


    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE COMPRA';
    FXNOTA.LoadFromFile('rel\f000088.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.itemindex = 1 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from notasfiscais where COD_EMPRESA =:COD_EMP AND '+ filtro + ' BETWEEN :datai and :dataf ' + CFOP + ' order by ' + ordem);
    qrnota.params.ParamByName('cod_emp').AsInteger := iEmp;
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE ITENS DA NOTA FISCAL DE COMPRA';
    FXNOTA.LoadFromFile('rel\f000088_3.fr3');
    FXNOTA.ShowReport;
  end;

{  if combo_relatorio.ItemIndex = 2 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+CFOP+' order by cfop,'+ordem);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTAS POR CFOP';
    FXNOTA.LoadFromFile('\iCloud\server\rel\f000088_2.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.ItemIndex = 3 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+CFOP+' order by cfop,'+ordem);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTAS POR CFOP COM ITENS';
    FXNOTA.LoadFromFile('\iCloud\server\rel\f000088_4.fr3');
    FXNOTA.ShowReport;
  end;}


  if combo_relatorio.itemindex = 2 then
  begin
    qrcompra_produto.Close;
    qrcompra_produto.sql.clear;
    qrcompra_produto.sql.add('select');
    qrcompra_produto.sql.add('sum(notasfiscais_itens.quantidade) total_compra,');
    qrcompra_produto.sql.add('notasfiscais_itens.codigo_produto,');
    qrcompra_produto.sql.add('produtos.descricao');
    qrcompra_produto.sql.add('from');
    qrcompra_produto.sql.add('notasfiscais_itens,');
    qrcompra_produto.sql.add('produtos');
    qrcompra_produto.sql.add('where');
    qrcompra_produto.sql.add('notasfiscais_itens.codigo_produto = produtos.codigo');
    qrcompra_produto.sql.add('and data between :datai and :dataf');
    qrcompra_produto.sql.add('group by');
    qrcompra_produto.sql.add('notasfiscais_itens.codigo_produto,');
    qrcompra_produto.sql.add('produtos.descricao');
    qrcompra_produto.sql.add('order by');
    qrcompra_produto.sql.add('produtos.descricao');
    qrcompra_produto.params.ParamByName('datai').asdatetime := DateEdit1.date;
    qrcompra_produto.params.ParamByName('dataf').asdatetime := DateEdit2.date;
    qrcompra_produto.open;
    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE COMPRAS DE PRODUTOS';
    dm.qrrelatorio.fieldbyname('LINHA2').asstring := 'Período: ' + dateedit1.text + ' a ' + dateedit2.text;
    FXNOTA.LoadFromFile('rel\f000088_5.fr3');
    FXNOTA.ShowReport;
  end;


  if combo_relatorio.itemindex = 3 then
  begin
    qrentrada.Close;
    qrentrada.sql.clear;
    qrentrada.sql.add('select');
    qrentrada.sql.add('sum(notasfiscais_itens.total_item) VALOR_TOTAL,');
    qrentrada.sql.add('sum(notasfiscais_itens.BASE_ICMS) BASE_CALCULO,');
    qrentrada.sql.add('sum(notasfiscais_itens.VALOR_ICMS) IMPOSTO,');
    qrentrada.sql.add('notasfiscais_itens.perc_icms,');
    qrentrada.sql.add('notasfiscais_itens.cst,');
    qrentrada.sql.add('notasfiscais_itens.cfop,');
    qrentrada.sql.add('notasfiscais.num_nota,');
    qrentrada.sql.add('notasfiscais.data_cadastro,');
    qrentrada.sql.add('notasfiscais.especie,');
    qrentrada.sql.add('notasfiscais.serie_nf,');
    qrentrada.sql.add('fornecedores.estado');
    qrentrada.sql.add('from');
    qrentrada.sql.add('notasfiscais,');
    qrentrada.sql.add('notasfiscais_itens,');
    qrentrada.sql.add('fornecedores');
    qrentrada.sql.add('where');
    qrentrada.sql.add('notasfiscais_itens.codigo_nota = notasfiscais.codigo_nota');
    qrentrada.sql.add('and notasfiscais.cod_fornecedor = fornecedores.codigo');
    qrentrada.sql.add('and notasfiscais.COD_EMPRESA =:COD_EMP AND '+ filtro + ' between :datai and :dataf');
    qrentrada.sql.add('group by');
    qrentrada.sql.add('notasfiscais_itens.perc_icms,');
    qrentrada.sql.add('notasfiscais_itens.cst,');
    qrentrada.sql.add('notasfiscais_itens.cfop,');
    qrentrada.sql.add('notasfiscais.num_nota,');
    qrentrada.sql.add('notasfiscais.data_cadastro,');
    qrentrada.sql.add('notasfiscais.especie,');
    qrentrada.sql.add('notasfiscais.serie_nf,');
    qrentrada.sql.add('fornecedores.estado');
    qrentrada.sql.add('order by');
    qrentrada.sql.add('notasfiscais.num_nota');
    qrentrada.params.ParamByName('cod_emp').AsInteger := iEmp;
    qrentrada.params.ParamByName('datai').asdatetime := DateEdit1.date;
    qrentrada.params.ParamByName('dataf').asdatetime := DateEdit2.date;
    qrentrada.open;
    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'REGISTRO DE ENTRADAS';
    dm.qrrelatorio.fieldbyname('LINHA2').asstring := dateedit1.text + ' a ' + dateedit2.text;
    FXNOTA.LoadFromFile('rel\f000088_4.fr3');
    FXNOTA.ShowReport;
  end;


end;

procedure Tfrmlista_notacompra.BitBtn1Click(Sender: TObject);
begin
 { if not frmprincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;  }
  if combo_relatorio.itemindex = 0 then
  begin
    FXNOTA.LoadFromFile('rel\f000088.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.itemindex = 1 then
  begin
    FXNOTA.LoadFromFile('rel\f000088_3.fr3');
    FXNOTA.DesignReport;
  end;

  if combo_relatorio.ItemIndex = 2 then
  begin
    FXNOTA.LoadFromFile('rel\f000088_5.fr3');
    FXNOTA.DesignReport;
  end;

  if combo_relatorio.ItemIndex = 3 then
  begin
    FXNOTA.LoadFromFile('rel\f000088_4.fr3');
    FXNOTA.DesignReport;
  end;


end;

procedure Tfrmlista_notacompra.qrnotaCalcFields(DataSet: TDataSet);
begin
  //if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

end;

procedure Tfrmlista_notacompra.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0)

end;

end.
