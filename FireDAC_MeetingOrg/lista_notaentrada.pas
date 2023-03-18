unit lista_notaentrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB,  frxClass,   frxDBSet, frxDesgn, Menus,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvGlowButton, FireDAC.Stan.Intf, FireDAC.Stan.Option;

type
  Tfrmlista_notaentrada = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    FlatPanel1: TFlatPanel;
    ViewSplit1: TViewSplit;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    fxnota: TfrxReport;
    fsnota: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrnota: TFDQuery;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrnotaCODIGO_NOTA: TIntegerField;
    qrnotaNUM_NOTA: TStringField;
    qrnotaSERIE_NF: TStringField;
    qrnotaCFOP_NOTA: TStringField;
    qrnotaDATA_EMISSAO: TDateField;
    qrnotaCOD_FORNECEDOR: TIntegerField;
    qrnotaFORNECEDOR: TStringField;
    qrnotaDATA_VENCIMENTO: TDateField;
    qrnotaTOTAL_NOTA: TBCDField;
    qrnotaCNPJ: TStringField;
    qrnotaIE: TStringField;
    qrnotaUSUARIO_CADASTRO: TStringField;
    qrnotaDATA_CADASTRO: TDateField;
    qrnotaOBSERVACOES: TBlobField;
    qrnotaMES: TStringField;
    qrnotaANO: TStringField;
    qrnotaCHAVE_NFE: TStringField;
    qrnotaPROTOCOLO_NFE: TStringField;
    qrnotaBASE_CALCULO_ICMS: TBCDField;
    qrnotaVALOR_ICMS: TBCDField;
    qrnotaBASE_CALC_ICMS_SUBST: TBCDField;
    qrnotaVALOR_ICMS_SUBST: TBCDField;
    qrnotaVALOR_FRETE: TBCDField;
    qrnotaVALOR_SEGURO: TBCDField;
    qrnotaVALOR_DESCONTO: TBCDField;
    qrnotaVALOR_OUTRAS_DESPESAS: TBCDField;
    qrnotaVALOR_IPI: TBCDField;
    qrnotaVALOR_TOTAL_PRODUTOS: TBCDField;
    qrnotaVALOR_TOTAL_ITENS_NOTA: TBCDField;
    qrnotaVLR_ICMS_GARANTIDO: TBCDField;
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
    qrnotaVALOR_AVISTA: TBCDField;
    qrnotaVALOR_PRAZO: TBCDField;
    qrnotapagamento: TStringField;
    qrnotaMODELO: TStringField;
    qrnotaEMITENTE: TStringField;
    qrnotaVALOR_COFINS: TBCDField;
    qrnotaVALOR_PIS: TBCDField;
    qrnotaVALOR_PIS_ST: TBCDField;
    qrnotaVALOR_COFIS_ST: TBCDField;
    qrnotaPERC_ICMS: TBCDField;
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
    qrnotaTRANSP_QTDE: TBCDField;
    qrnotaTRANSP_ESPECIE: TStringField;
    qrnotaTRANSP_MARCA: TStringField;
    qrnotaTRANSP_NUMERO: TStringField;
    qrnotaTRANSP_PESOBRUTO: TBCDField;
    qrnotaTRANSP_PESOLIQUIDO: TBCDField;
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
    qrnotaCODREMETENTE: TStringField;
    qrnotaICMS_ISENTO: TBCDField;
    qrnotaICMS_OUTRAS: TBCDField;
    qrnotaDESCONTO_INCIDENTE: TIntegerField;
    qrnotaITEM_FRETE_VALOR: TBCDField;
    qrnotaITEM_FRETE_BASE: TBCDField;
    qrnotaITEM_FRETE_ALIQUOTA: TBCDField;
    qrnotaITEM_FRETE_ICMS: TBCDField;
    qrnotaITEM_SEGURO_VALOR: TBCDField;
    qrnotaITEM_SEGURO_BASE: TBCDField;
    qrnotaITEM_SEGURO_ALIQUOTA: TBCDField;
    qrnotaITEM_SEGURO_ICMS: TBCDField;
    qrnotaITEM_PIS_VALOR: TBCDField;
    qrnotaITEM_PIS_BASE: TBCDField;
    qrnotaITEM_PIS_ALIQUOTA: TBCDField;
    qrnotaITEM_PIS_ICMS: TBCDField;
    qrnotaITEM_COMPLEMENTO_VALOR: TBCDField;
    qrnotaITEM_COMPLEMENTO_BASE: TBCDField;
    qrnotaITEM_COMPLEMENTO_ALIQUOTA: TBCDField;
    qrnotaITEM_COMPLEMENTO_ICMS: TBCDField;
    qrnotaITEM_SERVICO_VALOR: TBCDField;
    qrnotaITEM_SERVICO_BASE: TBCDField;
    qrnotaITEM_SERVICO_ALIQUOTA: TBCDField;
    qrnotaITEM_SERVICO_ICMS: TBCDField;
    qrnotaITEM_OUTRAS_VALOR: TBCDField;
    qrnotaITEM_OUTRAS_BASE: TBCDField;
    qrnotaITEM_OUTRAS_ALIQUOTA: TBCDField;
    qrnotaITEM_OUTRAS_ICMS: TBCDField;
    qrnotaITEM_ESPECIAL_TOTAL: TBCDField;
    qrnotaITEM_ESPECIAL_VALOR: TBCDField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qrnotaCONF_ITEM_ESPECIAL: TBCDField;
    qrnotaCREDITO_ICMS: TBCDField;
    qrnotaOPERACAO: TStringField;
    qrnotaINTEGRACAO: TIntegerField;
    qrnotaAPROVEITA_CREDITO_ICMS: TStringField;
    qrnotaCOD_EMPRESA: TIntegerField;
    qrnotaICMSRETIDO: TBCDField;
    qrnotaPERC_ICMSRETIDO: TBCDField;
    qrnotaESPECIE: TStringField;
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
  frmlista_notaentrada: Tfrmlista_notaentrada;

implementation

uses compra_menu, ModulodeDados;

{$R *.dfm}

procedure Tfrmlista_notaentrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_notaentrada.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;




end;

procedure Tfrmlista_notaentrada.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_notaentrada.bimprimirClick(Sender: TObject);
var
  fornecedor_imp, FORNECEDOR, ordem, nota: string;

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

//  if combo_FORNECEDOR.Text = 'TODOS' then FORNECEDOR := '' else begin  FORNECEDOR := ' and codIGO = '''+copy(combo_FORNECEDOR.text,1,6)+''''; dm.qrrelatorio.fieldbyname('LINHA3').asstring := 'FORNECEDOR: '+COMBO_FORNECEDOR.TEXT; END;

  if combo_relatorio.Text = 'NOTA FISCAL DE ENTRADA' then

  begin


    if FRMCOMPRA_MENU.efornecedor.Text = '' then fornecedor_imp := '' else fornecedor_imp := ' and (cod_fornecedor = ''' + copy(FRMCOMPRA_MENU.efornecedor.text, 1, 6) + ''')';
    if FRMCOMPRA_MENU.enumero.text = '000000' then nota := '' else nota := ' and num_nota = ''' + FRMCOMPRA_MENU.enumero.text + '''';

    dm.qrrelatorio.FieldByName('valor1').Asfloat := FRMCOMPRA_MENU.rtotal.Value;
    dm.qrrelatorio.FieldByName('valor2').Asfloat := FRMCOMPRA_MENU.rqde.Value;

    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from notasfiscais where data_cadastro BETWEEN :datai and :dataf ' + fornecedor_imp + nota + ' order by ' + COMBO_ORDEM.TEXT);
    qrnota.params.ParamByName('datai').asdatetime := FRMCOMPRA_MENU.dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := FRMCOMPRA_MENU.dateedit2.date;
    qrnota.open;


    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE ENTRADA';
    FXNOTA.LoadFromFile('\siace\rel\f000088.fr3');
    FXNOTA.ShowReport;
  end;
  if combo_relatorio.Text = 'ITENS DA NOTA FISCAL DE ENTRADA' then
  begin
    //qrFORNECEDOR.close;
    //qrFORNECEDOR.sql.clear;
    //qrFORNECEDOR.sql.add('select * from c000009 where NOME IS NOT NULL '+FORNECEDOR+' order by '+COMBO_ORDEM.TEXT);
    //qrFORNECEDOR.open;
    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE ITENS DA NOTA FISCAL DE ENTRADA';
    FXNOTA.LoadFromFile('\siace\rel\f000088.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.ItemIndex = 2 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from notasfiscais where data_cadastro BETWEEN :datai and :dataf ' + fornecedor_imp + nota + ' order by CFOP, ' + COMBO_ORDEM.TEXT);
    qrnota.params.ParamByName('datai').asdatetime := FRMCOMPRA_MENU.dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := FRMCOMPRA_MENU.dateedit2.date;
    qrnota.open;

    dm.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTAS DE ENTRADA POR CFOP';
    FXNOTA.LoadFromFile('\iCloud\server\rel\f000088_2.fr3');
    FXNOTA.ShowReport;
  end;

end;

procedure Tfrmlista_notaentrada.BitBtn1Click(Sender: TObject);
begin
{  if not frmprincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;   }



  if combo_relatorio.Text = 'NOTA FISCAL DE ENTRADA' then
  begin
    FXNOTA.LoadFromFile('\siace\rel\f000088.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.Text = 'ITENS DA NOTA FISCAL DE ENTRADA' then
  begin
    FXNOTA.LoadFromFile('\siace\rel\f000088.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE NOTAS POR CFOP' then
  begin
    FXNOTA.LoadFromFile('\siace\rel\f000088_2.fr3');
    FXNOTA.DesignReport;
  end;

end;

procedure Tfrmlista_notaentrada.qrnotaCalcFields(DataSet: TDataSet);
begin
  //if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

end;

procedure Tfrmlista_notaentrada.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0)

end;

end.
