unit relVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  RXCtrls, StdCtrls, Mask, ExtCtrls,  DBCtrls,
  SUIDBCtrls, RXDBCtrl, SUIButton, DB, FMTBcd, SqlExpr, Provider,
  DBClient, SimpleDS, Grids, DBGrids, SUIDlg,  acPNG, aDvOfficePager,
  RxToolEdit, RxCurrEdit;

type
  TFormRelVendas = class(TForm)
    Panel1: TPanel;
    RxLabel5: TRxLabel;
    RxLabel8: TRxLabel;
    Panel2: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    pnl1: TPanel;
    rxlbl1: TRxLabel;
    rxlbl2: TRxLabel;
    rxlbl3: TRxLabel;
    pnl2: TPanel;
    RXLabel6: TRxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    MSG_NR: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
    Bevel1: TBevel;
    Image1: TImage;
    RxLabel2: TRxLabel;
    Panel3: TPanel;
    RxLabel3: TRxLabel;
    Cliente: TComboEdit;
    btnSuibtton1: TsuiButton;
    RxLabel4: TRxLabel;
    Edit1: TEdit;
    suiButton3: TsuiButton;
    suiButton1: TsuiButton;
    EvNumEdit1: TCurrencyEdit;
    EvNumEdit2: TCurrencyEdit;
    Panel4: TPanel;
    RxLabel1: TRxLabel;
    Panel6: TPanel;
    RxLabel7: TRxLabel;
    ComboEdit1: TComboEdit;
    suiCheckBox1: TsuiCheckBox;
    suiCheckBox2: TsuiCheckBox;
    Panel7: TPanel;
    RxLabel9: TRxLabel;
    Panel8: TPanel;
    RxLabel10: TRxLabel;
    ComboEdit2: TComboEdit;
    Panel9: TPanel;
    RxLabel11: TRxLabel;
    Panel10: TPanel;
    RxLabel12: TRxLabel;
    ComboEdit3: TComboEdit;
    Cds_rel_Vendas: TClientDataSet;
    Dts_rel_vendas: TDataSource;
    Dsp_provider: TDataSetProvider;
    Qry_Rel_Vendas: TSQLQuery;
    Qry_Rel_VendasCODIGO: TIntegerField;
    Qry_Rel_VendasVALOR_ITENS: TFMTBCDField;
    Qry_Rel_VendasENC_FINANCEIRO: TFMTBCDField;
    Qry_Rel_VendasVALOR_DESCONTO: TFMTBCDField;
    Qry_Rel_VendasVALOR_TOTAL: TFMTBCDField;
    Qry_Rel_VendasVALOR_COMISSAO: TFMTBCDField;
    Qry_Rel_VendasUSUARIO: TStringField;
    Qry_Rel_VendasDATA_PEDIDO: TDateField;
    Qry_Rel_VendasDATA_ENTREGA: TDateField;
    Qry_Rel_VendasCODIGO_CLIENTE: TIntegerField;
    Qry_Rel_VendasNOME_CLIENTE: TStringField;
    Qry_Rel_VendasPAGAMENTO: TStringField;
    Qry_Rel_VendasSTATUS: TStringField;
    Qry_Rel_VendasSITUACAO: TStringField;
    Qry_Rel_VendasUSUARIO_ENTREGA: TStringField;
    Qry_Rel_VendasTP: TStringField;
    Qry_Rel_VendasOBSERVACOES: TStringField;
    Qry_Rel_VendasCOD_VENDEDOR: TIntegerField;
    Qry_Rel_VendasCOD_PAGTO: TIntegerField;
    Qry_Rel_VendasN_CUPOM: TStringField;
    Qry_Rel_VendasN_ECF: TStringField;
    Qry_Rel_VendasCOD_EMPRESA: TIntegerField;
    Qry_Rel_VendasHORA: TTimeField;
    Qry_Rel_VendasVALOR_ACRESCIMOS: TFMTBCDField;
    Qry_Rel_VendasCOD_ORCAMENTO: TIntegerField;
    Qry_Rel_VendasCOD_PEDIDO: TIntegerField;
    Qry_Rel_VendasCOD_OS: TSmallintField;
    Qry_Rel_VendasNUM_NOTA: TIntegerField;
    Qry_Rel_VendasSERIE_NOTA: TStringField;
    Qry_Rel_VendasENDERECO: TStringField;
    Qry_Rel_VendasCPF_CNPJ: TStringField;
    Qry_Rel_VendasRG_IE: TStringField;
    Qry_Rel_VendasFONE: TStringField;
    Qry_Rel_VendasCIDADE: TStringField;
    Qry_Rel_VendasBAIRRO: TStringField;
    Qry_Rel_VendasN_PARTIDA: TStringField;
    Qry_Rel_VendasPROPRIEDADE: TStringField;
    Qry_Rel_VendasQUANT_VENDIDA: TFMTBCDField;
    Qry_Rel_VendasSALDO_VENDIDO: TFMTBCDField;
    Qry_Rel_VendasMED_VETERINARIO: TStringField;
    Qry_Rel_VendasDATA_VACINA: TDateField;
    Qry_Rel_VendasVALOR_AVISTA: TFMTBCDField;
    Qry_Rel_VendasVALOR_PRAZO: TFMTBCDField;
    Qry_Rel_VendasUF: TStringField;
    Qry_Rel_VendasCOD_IBGE: TStringField;
    Qry_Rel_VendasCEP: TStringField;
    Qry_Rel_VendasNUMERO: TStringField;
    Qry_Rel_VendasTIPO: TStringField;
    Qry_Rel_VendasVALOR_PAGO: TFMTBCDField;
    Qry_Rel_VendasVALOR_TROCO: TFMTBCDField;
    Qry_Rel_VendasENTREGADOR: TStringField;
    Qry_Rel_VendasTIPO_PEDIDO: TStringField;
    Qry_Rel_VendasFECHADO: TStringField;
    Qry_Rel_VendasMESA: TStringField;
    Qry_Rel_VendasREFERENCIA: TStringField;
    Qry_Rel_VendasCODIGO_ID: TIntegerField;
    Qry_Rel_VendasITEN: TIntegerField;
    Qry_Rel_VendasCODIGO_PROD: TIntegerField;
    Qry_Rel_VendasCODIGO_PRODUTO: TStringField;
    Qry_Rel_VendasDESCRICAO_PRODUTO: TStringField;
    Qry_Rel_VendasPRECO_UNITARIO: TFMTBCDField;
    Qry_Rel_VendasDESCONTO: TFMTBCDField;
    Qry_Rel_VendasQUANTIDADE: TFMTBCDField;
    Qry_Rel_VendasPRECO_TOTAL: TFMTBCDField;
    Qry_Rel_VendasCOMISSAO: TFMTBCDField;
    Qry_Rel_VendasDEV: TStringField;
    Qry_Rel_VendasQNT_DEV: TFMTBCDField;
    Qry_Rel_VendasVAL_DEV: TFMTBCDField;
    Qry_Rel_VendasENC_FINANCEIRO1: TFMTBCDField;
    Qry_Rel_VendasUNIDADE: TStringField;
    Qry_Rel_VendasSIT_TRIBUTARIA: TStringField;
    Qry_Rel_VendasVENDEDOR: TIntegerField;
    Qry_Rel_VendasFRACAO: TIntegerField;
    Qry_Rel_VendasCOD_NCM: TStringField;
    Qry_Rel_VendasPROD_SERV: TStringField;
    Qry_Rel_VendasPERC_ISS: TFMTBCDField;
    Qry_Rel_VendasBASE_ISS: TFMTBCDField;
    Qry_Rel_VendasVL_ISS: TFMTBCDField;
    Qry_Rel_VendasPERC_ICM: TFMTBCDField;
    Qry_Rel_VendasBASE_ICMS: TFMTBCDField;
    Qry_Rel_VendasVL_ICM: TFMTBCDField;
    Qry_Rel_VendasPERC_IPI: TFMTBCDField;
    Qry_Rel_VendasBASE_IPI: TFMTBCDField;
    Qry_Rel_VendasVL_IPI: TFMTBCDField;
    Qry_Rel_VendasPERC_COFINS: TFMTBCDField;
    Qry_Rel_VendasBASE_COFINS: TFMTBCDField;
    Qry_Rel_VendasVL_COFINS: TFMTBCDField;
    Qry_Rel_VendasPERC_ICMS_SUBST: TFMTBCDField;
    Qry_Rel_VendasBASE_ICMS_SUBST: TFMTBCDField;
    Qry_Rel_VendasVL_ICMS_SUBST: TFMTBCDField;
    Qry_Rel_VendasPERC_PIS: TFMTBCDField;
    Qry_Rel_VendasBASE_PIS: TFMTBCDField;
    Qry_Rel_VendasVL_PIS: TFMTBCDField;
    Qry_Rel_VendasPRECO_CUSTO: TFMTBCDField;
    Qry_Rel_VendasCODIGO_GRUPO: TIntegerField;
    Qry_Rel_VendasCODIGO_SUBGRUPO: TIntegerField;
    Qry_Rel_VendasCODIGO_MARCA: TIntegerField;
    Qry_Rel_VendasNOME_GRUPO: TStringField;
    Qry_Rel_VendasNOME_SUBGRUPO: TStringField;
    Qry_Rel_VendasNOME_MARCA: TStringField;
    Qry_Rel_VendasNOME_FORNECEDOR: TStringField;
    Qry_Rel_VendasCODIGO_FORNECEDORES: TIntegerField;
    Qry_Rel_VendasESTOQUE_ATUAL: TFMTBCDField;
    Qry_Rel_VendasESTOQUE: TFMTBCDField;
    Qry_Rel_VendasVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    Qry_Rel_VendasVALOR_ESTOQUE: TFMTBCDField;
    Cds_rel_VendasCODIGO: TIntegerField;
    Cds_rel_VendasVALOR_ITENS: TFMTBCDField;
    Cds_rel_VendasENC_FINANCEIRO: TFMTBCDField;
    Cds_rel_VendasVALOR_DESCONTO: TFMTBCDField;
    Cds_rel_VendasVALOR_TOTAL: TFMTBCDField;
    Cds_rel_VendasVALOR_COMISSAO: TFMTBCDField;
    Cds_rel_VendasUSUARIO: TStringField;
    Cds_rel_VendasDATA_PEDIDO: TDateField;
    Cds_rel_VendasDATA_ENTREGA: TDateField;
    Cds_rel_VendasCODIGO_CLIENTE: TIntegerField;
    Cds_rel_VendasNOME_CLIENTE: TStringField;
    Cds_rel_VendasPAGAMENTO: TStringField;
    Cds_rel_VendasSTATUS: TStringField;
    Cds_rel_VendasSITUACAO: TStringField;
    Cds_rel_VendasUSUARIO_ENTREGA: TStringField;
    Cds_rel_VendasTP: TStringField;
    Cds_rel_VendasOBSERVACOES: TStringField;
    Cds_rel_VendasCOD_VENDEDOR: TIntegerField;
    Cds_rel_VendasCOD_PAGTO: TIntegerField;
    Cds_rel_VendasN_CUPOM: TStringField;
    Cds_rel_VendasN_ECF: TStringField;
    Cds_rel_VendasCOD_EMPRESA: TIntegerField;
    Cds_rel_VendasHORA: TTimeField;
    Cds_rel_VendasVALOR_ACRESCIMOS: TFMTBCDField;
    Cds_rel_VendasCOD_ORCAMENTO: TIntegerField;
    Cds_rel_VendasCOD_PEDIDO: TIntegerField;
    Cds_rel_VendasCOD_OS: TSmallintField;
    Cds_rel_VendasNUM_NOTA: TIntegerField;
    Cds_rel_VendasSERIE_NOTA: TStringField;
    Cds_rel_VendasENDERECO: TStringField;
    Cds_rel_VendasCPF_CNPJ: TStringField;
    Cds_rel_VendasRG_IE: TStringField;
    Cds_rel_VendasFONE: TStringField;
    Cds_rel_VendasCIDADE: TStringField;
    Cds_rel_VendasBAIRRO: TStringField;
    Cds_rel_VendasN_PARTIDA: TStringField;
    Cds_rel_VendasPROPRIEDADE: TStringField;
    Cds_rel_VendasQUANT_VENDIDA: TFMTBCDField;
    Cds_rel_VendasSALDO_VENDIDO: TFMTBCDField;
    Cds_rel_VendasMED_VETERINARIO: TStringField;
    Cds_rel_VendasDATA_VACINA: TDateField;
    Cds_rel_VendasVALOR_AVISTA: TFMTBCDField;
    Cds_rel_VendasVALOR_PRAZO: TFMTBCDField;
    Cds_rel_VendasUF: TStringField;
    Cds_rel_VendasCOD_IBGE: TStringField;
    Cds_rel_VendasCEP: TStringField;
    Cds_rel_VendasNUMERO: TStringField;
    Cds_rel_VendasTIPO: TStringField;
    Cds_rel_VendasVALOR_PAGO: TFMTBCDField;
    Cds_rel_VendasVALOR_TROCO: TFMTBCDField;
    Cds_rel_VendasENTREGADOR: TStringField;
    Cds_rel_VendasTIPO_PEDIDO: TStringField;
    Cds_rel_VendasFECHADO: TStringField;
    Cds_rel_VendasMESA: TStringField;
    Cds_rel_VendasREFERENCIA: TStringField;
    Cds_rel_VendasCODIGO_ID: TIntegerField;
    Cds_rel_VendasITEN: TIntegerField;
    Cds_rel_VendasCODIGO_PROD: TIntegerField;
    Cds_rel_VendasCODIGO_PRODUTO: TStringField;
    Cds_rel_VendasDESCRICAO_PRODUTO: TStringField;
    Cds_rel_VendasPRECO_UNITARIO: TFMTBCDField;
    Cds_rel_VendasDESCONTO: TFMTBCDField;
    Cds_rel_VendasQUANTIDADE: TFMTBCDField;
    Cds_rel_VendasPRECO_TOTAL: TFMTBCDField;
    Cds_rel_VendasCOMISSAO: TFMTBCDField;
    Cds_rel_VendasDEV: TStringField;
    Cds_rel_VendasQNT_DEV: TFMTBCDField;
    Cds_rel_VendasVAL_DEV: TFMTBCDField;
    Cds_rel_VendasENC_FINANCEIRO1: TFMTBCDField;
    Cds_rel_VendasUNIDADE: TStringField;
    Cds_rel_VendasSIT_TRIBUTARIA: TStringField;
    Cds_rel_VendasVENDEDOR: TIntegerField;
    Cds_rel_VendasFRACAO: TIntegerField;
    Cds_rel_VendasCOD_NCM: TStringField;
    Cds_rel_VendasPROD_SERV: TStringField;
    Cds_rel_VendasPERC_ISS: TFMTBCDField;
    Cds_rel_VendasBASE_ISS: TFMTBCDField;
    Cds_rel_VendasVL_ISS: TFMTBCDField;
    Cds_rel_VendasPERC_ICM: TFMTBCDField;
    Cds_rel_VendasBASE_ICMS: TFMTBCDField;
    Cds_rel_VendasVL_ICM: TFMTBCDField;
    Cds_rel_VendasPERC_IPI: TFMTBCDField;
    Cds_rel_VendasBASE_IPI: TFMTBCDField;
    Cds_rel_VendasVL_IPI: TFMTBCDField;
    Cds_rel_VendasPERC_COFINS: TFMTBCDField;
    Cds_rel_VendasBASE_COFINS: TFMTBCDField;
    Cds_rel_VendasVL_COFINS: TFMTBCDField;
    Cds_rel_VendasPERC_ICMS_SUBST: TFMTBCDField;
    Cds_rel_VendasBASE_ICMS_SUBST: TFMTBCDField;
    Cds_rel_VendasVL_ICMS_SUBST: TFMTBCDField;
    Cds_rel_VendasPERC_PIS: TFMTBCDField;
    Cds_rel_VendasBASE_PIS: TFMTBCDField;
    Cds_rel_VendasVL_PIS: TFMTBCDField;
    Cds_rel_VendasPRECO_CUSTO: TFMTBCDField;
    Cds_rel_VendasCODIGO_GRUPO: TIntegerField;
    Cds_rel_VendasCODIGO_SUBGRUPO: TIntegerField;
    Cds_rel_VendasCODIGO_MARCA: TIntegerField;
    Cds_rel_VendasNOME_GRUPO: TStringField;
    Cds_rel_VendasNOME_SUBGRUPO: TStringField;
    Cds_rel_VendasNOME_MARCA: TStringField;
    Cds_rel_VendasNOME_FORNECEDOR: TStringField;
    Cds_rel_VendasCODIGO_FORNECEDORES: TIntegerField;
    Cds_rel_VendasESTOQUE_ATUAL: TFMTBCDField;
    Cds_rel_VendasESTOQUE: TFMTBCDField;
    Cds_rel_VendasVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    Cds_rel_VendasVALOR_ESTOQUE: TFMTBCDField;
    Panel11: TPanel;
    RxLabel13: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel15: TRxLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Panel12: TPanel;
    Label2: TLabel;
    Panel13: TPanel;
    suiButton2: TsuiButton;
    suiButton4: TsuiButton;
    suiButton5: TsuiButton;
    suiCheckBox3: TsuiCheckBox;
    suiCheckBox4: TsuiCheckBox;
    Bevel2: TBevel;
    Image2: TImage;
    Edit2: TEdit;
    suiCheckBox5: TsuiCheckBox;
    Qry_Rel_VendasCHAVE_FP: TStringField;
    Qry_Rel_VendasCHAVE_FP_CANCEL: TStringField;
    FDvOfficePager1: TAdvOfficePager;
    FDvOfficePager11: TAdvOfficePage;
    FDvOfficePager12: TAdvOfficePage;
    procedure ClienteButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ClienteEnter(Sender: TObject);
    procedure btnSuibtton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
  //  procedure ComboEdit2Exit(Sender: TObject);
    procedure ComboEdit2ButtonClick(Sender: TObject);
    procedure ComboEdit3Exit(Sender: TObject);
    procedure ComboEdit3ButtonClick(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure ComboEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelVendas: TFormRelVendas;
  achou : Boolean;

implementation

uses ConsClientes, Z_RotinasGerais,
  RelatorioVendas, ModulodeDados, ModulodeDadosConsultas3,
  ModulodeDadosConsultas, printPedidos, relVendasCliente, ConsProdutos,
  RelVendasProdutos, Principal, ConsUsuarios, ConsGrupos,
  relvendas_for, xloc_fornecedor;

{$R *.dfm}

function RemoveChar(Const Texto:String):String; 
  // 
  // Remove caracteres de uma string deixando apenas numeros 
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;

procedure TFormRelVendas.ClienteButtonClick(Sender: TObject);
begin
Try
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.add('select * from clientes where codigo <'+'1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;

if FormConsClientes=nil   then
    begin
     FormConsClientes:=TFormConsClientes.Create(self);
      FormConsClientes.ShowModal;
      Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Consulta de Clientes!!');
end;
//DM.SDS_Clientes.Active:= False;
//DM.SDS_Clientes.Active:= True;

      If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[])=True then
begin
DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[loCaseinSensitive]);
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
end;
end;

procedure TFormRelVendas.FormShow(Sender: TObject);
begin
dateEdit1.SetFocus;
RXLabel6.Caption:= '';
DM.SDS_Fornecedores.Active := False;
DM.SDS_Fornecedores.Active := True;
dm.SDS_Grupos.Active := False;
dm.SDS_Grupos.Active := true;
end;

procedure TFormRelVendas.ClienteEnter(Sender: TObject);
begin
corentrada(sender);
end;

procedure TFormRelVendas.btnSuibtton1Click(Sender: TObject);
var
  inicio, final, codcli, Nvenda, vendedor,  produto, forn, grupo :string;
  valor1, valor2 : Currency;

  begin

   If DateEdit2.Date < DateEdit1.Date Then
   begin
   ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
  DateEdit2.Date := DateEdit1.Date;
end
Else
begin
  // por data
inicio:=datetostr(DATE);
final:=datetostr(DATE);

inicio:=dateedit1.TexT;
final:=dateedit2.TexT;

//cliente
codcli:=Cliente.text;
//produto:= ComboEdit1.text;
forn := comboedit2.text;
grupo := comboedit3.text;
 // por vernda e valor
Nvenda := edit1.text;
valor1:= EvNumEdit1.Value;
valor2:= EvNumEdit2.Value;
vendedor:= ComboEdit1.Text;

if inicio > ' / /   ' then
BEGIN
DMC3.Cds_Relvendas_pedidos.Active :=FALSE;
DMC3.sds_RelVendas_itens.Active :=FALSE;
DMC3.QryRelVendas_pedidos.close;
DMC3.QryRelVendas_pedidos.SQL.Clear;
DMC3.QryRelVendas_pedidos.SQL.add('select * from pedidos where CODIGO >0'+'');
if codcli > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
if vendedor > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and Cod_Vendedor ='+(Vendedor)+'');
if Nvenda > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO ='+(Nvenda)+'');
if suiCheckBox1.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and N_CUPOM is not null'+'');
if suiCheckBox2.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and NUM_NOTA >0 '+'');
if suiCheckBox5.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and CHAVE_FP IS NOT NULL AND CHAVE_FP_CANCEL IS NULL'+'');
if inicio > ' / /   ' then
DMC3.QryRelVendas_pedidos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if valor1 > 0 then
DMC3.QryRelVendas_pedidos.SQL.add('and VALOR_TOTAL >='+ CurrToStr(VALOR1)+' and VALOR_TOTAL <='+currtostr(VALOR2));
DMC3.QryRelVendas_pedidos.SQL.add(' order by DATA_PEDIDO asc');
DMC3.QryRelVendas_pedidos.Open;
DMC3.Cds_Relvendas_pedidos.Active :=true;
DMC3.Sds_RelVendas_itens.Active :=true;
FormRelatorioVendas := TFormRelatorioVendas.Create(self);
FormRelatorioVendas.RLReport1.Prepare;
FormRelatorioVendas.RLReport1.Preview();
end else

if codcli > '' then
begin
DMC3.Cds_Relvendas_pedidos.Active :=FALSE;
DMC3.sds_RelVendas_itens.Active :=FALSE;
DMC3.QryRelVendas_pedidos.close;
DMC3.QryRelVendas_pedidos.SQL.Clear;
DMC3.QryRelVendas_pedidos.SQL.add('select * from pedidos where CODIGO >0'+'');
if codcli > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
if Nvenda > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO ='+(Nvenda)+'');
if suiCheckBox1.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and N_CUPOM is not null'+'');
if suiCheckBox2.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and NUM_NOTA >0'+'');
if suiCheckBox5.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and CHAVE_FP IS NOT NULL AND CHAVE_FP_CANCEL IS NULL'+'');
if inicio > ' / /   ' then
DMC3.QryRelVendas_pedidos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if valor1 > 0 then
DMC3.QryRelVendas_pedidos.SQL.add('and VALOR_TOTAL >='+ CurrToStr(VALOR1)+' and VALOR_TOTAL <='+ CurrToStr(VALOR2));
DMC3.QryRelVendas_pedidos.SQL.add(' order by DATA_PEDIDO asc');
DMC3.QryRelVendas_pedidos.Open;
DMC3.Cds_Relvendas_pedidos.Active :=true;
DMC3.Sds_RelVendas_itens.Active :=true;
FormRelVdaCliente := TFormRelVdaCliente.Create(self);
FormRelVdaCliente.RLReport1.Prepare;
FormRelVdaCliente.RLReport1.Preview();
end else

 if Nvenda > '' then
 begin
DMC3.Cds_Relvendas_pedidos.Active :=FALSE;
DMC3.sds_RelVendas_itens.Active :=FALSE;
DMC3.QryRelVendas_pedidos.close;
DMC3.QryRelVendas_pedidos.SQL.Clear;
DMC3.QryRelVendas_pedidos.SQL.add('select * from pedidos where CODIGO >0'+'');
if codcli > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
if Nvenda > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO ='+(Nvenda)+'');
if suiCheckBox1.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and N_CUPOM is not null'+'');
if suiCheckBox2.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and NUM_NOTA >0 '+'');
if suiCheckBox5.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and CHAVE_FP IS NOT NULL AND CHAVE_FP_CANCEL IS NULL'+'');
if inicio > ' / /   ' then
DMC3.QryRelVendas_pedidos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if valor1 > 0 then
DMC3.QryRelVendas_pedidos.SQL.add('and VALOR_TOTAL >='+ CurrToStr(VALOR1)+' and VALOR_TOTAL <='+ CurrToStr(VALOR2));
DMC3.QryRelVendas_pedidos.SQL.add(' order by DATA_PEDIDO asc');
DMC3.QryRelVendas_pedidos.Open;
DMC3.Cds_Relvendas_pedidos.Active :=true;
DMC3.Sds_RelVendas_itens.Active :=true;
FormRelVdaCliente := TFormRelVdaCliente.Create(self);
FormRelVdaCliente.RLReport1.Prepare;
FormRelVdaCliente.RLReport1.Preview();
end else
if valor1 > 0 then
BEGIN
DMC3.Cds_Relvendas_pedidos.Active :=FALSE;
DMC3.sds_RelVendas_itens.Active :=FALSE;
DMC3.QryRelVendas_pedidos.close;
DMC3.QryRelVendas_pedidos.SQL.Clear;
DMC3.QryRelVendas_pedidos.SQL.add('select * from pedidos where CODIGO >0'+'');
if codcli > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
if Nvenda > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO ='+(Nvenda)+'');
if suiCheckBox1.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and N_CUPOM is not null'+'');
if suiCheckBox2.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and NUM_NOTA >0 '+'');
if suiCheckBox5.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and CHAVE_FP IS NOT NULL AND CHAVE_FP_CANCEL IS NULL'+'');
if inicio > ' / /   ' then
DMC3.QryRelVendas_pedidos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if valor1 > 0 then
DMC3.QryRelVendas_pedidos.SQL.add('and VALOR_TOTAL >='+ CurrToStr(VALOR1)+' and VALOR_TOTAL <='+ CurrToStr(VALOR2));
DMC3.QryRelVendas_pedidos.SQL.add(' order by DATA_PEDIDO asc');
DMC3.QryRelVendas_pedidos.Open;
DMC3.Cds_Relvendas_pedidos.Active :=true;
DMC3.Sds_RelVendas_itens.Active :=true;
FormRelatorioVendas := TFormRelatorioVendas.Create(self);
FormRelatorioVendas.RLReport1.Prepare;
FormRelatorioVendas.RLReport1.Preview();
end else

if vendedor > '' then
begin
DMC3.Cds_Relvendas_pedidos.Active :=FALSE;
DMC3.sds_RelVendas_itens.Active :=FALSE;
DMC3.QryRelVendas_pedidos.close;
DMC3.QryRelVendas_pedidos.SQL.Clear;
DMC3.QryRelVendas_pedidos.SQL.add('select * from pedidos where CODIGO >0'+'');
if codcli > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
if vendedor > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and Cod_Vendedor ='+(Vendedor)+'');
if Nvenda > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO ='+(Nvenda)+'');
if suiCheckBox1.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and N_CUPOM is not null'+'');
if suiCheckBox2.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and NUM_NOTA >0 '+'');
if suiCheckBox5.Checked = True then
DMC3.QryRelVendas_pedidos.SQL.add('and CHAVE_FP IS NOT NULL AND CHAVE_FP_CANCEL IS NULL'+'');
if inicio > ' / /   ' then
DMC3.QryRelVendas_pedidos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if valor1 > 0 then
DMC3.QryRelVendas_pedidos.SQL.add('and VALOR_TOTAL >='+ CurrToStr(VALOR1)+' and VALOR_TOTAL <='+ CurrToStr(VALOR2));
DMC3.QryRelVendas_pedidos.SQL.add(' order by DATA_PEDIDO asc');
DMC3.QryRelVendas_pedidos.Open;
DMC3.Cds_Relvendas_pedidos.Active :=true;
DMC3.Sds_RelVendas_itens.Active :=true;
FormRelVdaCliente := TFormRelVdaCliente.Create(self);
FormRelVdaCliente.RLReport1.Prepare;
FormRelVdaCliente.RLReport1.Preview();
end;

{if ComboEdit1.Text > '' then
BEGIN
DMC3.Cds_Relvendas_pedidos.Active :=FALSE;
DMC3.sds_RelVendas_itens.Active :=FALSE;
DMC3.QryRelVendas_pedidos.close;
DMC3.QryRelVendas_pedidos.SQL.Clear;
DMC3.QryRelVendas_pedidos.SQL.add('select * from pedidos where CODIGO >0'+'');
if codcli > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO_CLIENTE ='+(codcli)+'');
if Nvenda > '' then
DMC3.QryRelVendas_pedidos.SQL.add('and CODIGO ='+(Nvenda)+'');
if inicio > ' / /   ' then
DMC3.QryRelVendas_pedidos.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
if valor1 > 0 then
DMC3.QryRelVendas_pedidos.SQL.add('and VALOR_TOTAL >='+ CurrToStr(VALOR1)+' and VALOR_TOTAL <='+ CurrToStr(VALOR2));
DMC3.QryRelVendas_pedidos.Open;
//DMC3.sds_RelVendas_itens.DataSet.CommandText :=('SELECT * PEDIDOS_ITENS WHERE CODIGO >0 AND CODIGO_PROD ='+(PRODUTO)+'');
DMC3.Cds_Relvendas_pedidos.Active :=true;
DMC3.Sds_RelVendas_itens.Active :=true;
DMC3.Sds_RelVendas_itens.Filtered := false;
DMC3.Sds_RelVendas_itens.Filter := 'CODIGO_PROD ='+QuotedStr(PRODUTO);
DMC3.Sds_RelVendas_itens.Filtered := True;
FormRelatorioVendas := TFormRelatorioVendas.Create(self);
FormRelatorioVendas.RLReport1.Prepare;
FormRelatorioVendas.RLReport1.Preview();}
end;
end;


procedure TFormRelVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormRelVendas:=nil;
end;

procedure TFormRelVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

if not (ActiveControl is TComboEdit)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormRelVendas.suiButton1Click(Sender: TObject);
begin
close;
end;

procedure TFormRelVendas.suiButton3Click(Sender: TObject);
begin
DateEdit1.Clear;
DateEdit2.Clear;
Edit1.Clear;
Cliente.Clear;
EvNumEdit1.Clear;
EvNumEdit2.Clear;
ComboEdit1.clear;
ComboEdit2.Clear;
ComboEdit3.Clear;
DateEdit3.Clear;
DateEdit4.Clear;
end;

procedure TFormRelVendas.ComboEdit1ButtonClick(Sender: TObject);
begin
Try
if FormConsUsuarios=nil   then
    begin
    FormConsUsuarios:=TFormConsUsuarios.Create(self);
      FormConsUsuarios.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
        RXLabel7.Caption:= DM.SDS_UsuariosUSUARIO.Text;
        ComboEdit1.Text := DM.SDS_UsuariosCODIGO.Text;
      end;

procedure TFormRelVendas.ComboEdit1Exit(Sender: TObject);
begin
If DM.SDS_Usuarios.locate('CODIGO',ComboEdit1.Text,[])=True then
       begin
        DM.SDS_usuarios.Locate('CODIGO',ComboEdit1.Text,[loCaseinSensitive]);
        RXLabel7.Caption:= DM.SDS_UsuariosUSUARIO.Text;
     //   ComboEdit1.Text := DM.SDS_UsuariosCODIGO.Text;
      end;
end;

procedure TFormRelVendas.ClienteExit(Sender: TObject);

begin
  { If DM.SDS_Clientes.locate('CODIGO',Cliente.Text,[])=True then
begin
//DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[loCaseinSensitive]);
RXLabel6.Caption:= DM.SDS_ClientesNOME_RS.Text;
end;   }
corsaida(Sender);
 
end;

procedure TFormRelVendas.ComboEdit2ButtonClick(Sender: TObject);
begin
    frmxloc_fornecedor:=Tfrmxloc_fornecedor.Create(self);
      frmxloc_fornecedor.ShowModal;
      dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(RESULTADO_PESQUISA1),[]);

      ComboEdit2.Text   := DM.SDS_FornecedoresCODIGO.Text;
      RXLabel10.Caption := DM.SDS_FornecedoresNOME.Text;
end;

procedure TFormRelVendas.ComboEdit3Exit(Sender: TObject);
begin
  if ComboEdit3.Text > '' then
  begin
   If DM.SDS_grupos.locate('CODIGO',ComboEdit3.Text,[])=True then
begin
//DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[loCaseinSensitive]);
RXLabel12.Caption := DM.SDS_GruposDESCRICAO.Text;
end;
end;
end;

procedure TFormRelVendas.ComboEdit3ButtonClick(Sender: TObject);
begin
 if FormConsgrupos=nil   then
    begin
      FormConsgrupos:=TFormConsgrupos.Create(self);
      FormConsgrupos.ShowModal;
      ComboEdit3.Text := DM.SDS_GruposCODIGO.Text;
      RXLabel12.Caption := DM.SDS_GruposDESCRICAO.Text;
      end;
end;

procedure TFormRelVendas.suiButton2Click(Sender: TObject);
var
  inicio, final, codcli, Nvenda, vendedor,  produto, forn, grupo :string;
  valor1, valor2 : Currency;

  begin

   If DateEdit4.Date < DateEdit3.Date Then
   begin
   ShowMessage('Intervalo de datas inválido, a data inicial é maior que a data final!');
  DateEdit2.Date := DateEdit1.Date;
end
Else
begin
  // por data
inicio:=datetostr(DATE);
final:=datetostr(DATE);

inicio:=dateedit3.TexT;
final:=dateedit4.TexT;

//cliente
codcli:=Cliente.text;
//produto:= ComboEdit1.text;
forn := comboedit2.text;
grupo := comboedit3.text;
 // por vernda e valor
Nvenda := edit1.text;
valor1:= EvNumEdit1.Value;
valor2:= EvNumEdit2.Value;
vendedor:= ComboEdit1.Text;

if grupo > '' then
begin
Cds_Rel_vendas.Active :=FALSE;
//DMC3.sds_Rel_Vendas_itens.Active :=FALSE;
Qry_Rel_Vendas.close;
Qry_Rel_Vendas.SQL.Clear;
Qry_Rel_Vendas.SQL.add('select * from relatorio_vendas where CODIGO >0'+'');
if grupo > '' then
Qry_Rel_Vendas.SQL.add('and CODIGO_grupo ='+(grupo)+'');
if forn > '' then
Qry_Rel_Vendas.SQL.add('and CODIGO_fornecedores ='+(forn)+'');
if suiCheckBox3.Checked = True then
Qry_Rel_Vendas.SQL.add('and N_CUPOM >0'+'');
if suiCheckBox4.Checked = True then
Qry_Rel_Vendas.SQL.add('and NUM_NOTA >0'+'');
if inicio > ' / /   ' then
Qry_Rel_Vendas.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
Qry_Rel_Vendas.Open;
Cds_Rel_vendas.Active :=true;
//DMC3.Sds_RelVendas_itens.Active :=true;
FormRel_vendas := TFormRel_vendas.Create(self);
FormRel_vendas.RLReport1.Prepare;
FormRel_vendas.RLReport1.Preview();
end else

if forn > '' then
begin
Cds_Rel_vendas.Active :=FALSE;
//DMC3.sds_Rel_Vendas_itens.Active :=FALSE;
Qry_Rel_Vendas.close;
Qry_Rel_Vendas.SQL.Clear;
Qry_Rel_Vendas.SQL.add('select * from relatorio_vendas where CODIGO >0'+'');
if forn > '' then
Qry_Rel_Vendas.SQL.add('and CODIGO_fornecedores ='+(forn)+'');
if grupo > '' then
Qry_Rel_Vendas.SQL.add('and CODIGO_grupo ='+(grupo)+'');
if suiCheckBox3.Checked = True then
Qry_Rel_Vendas.SQL.add('and N_CUPOM >0'+'');
if suiCheckBox4.Checked = True then
Qry_Rel_Vendas.SQL.add('and NUM_NOTA >0'+'');
if inicio > ' / /   ' then
Qry_Rel_Vendas.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
Qry_Rel_Vendas.Open;
Cds_Rel_vendas.Active :=true;
//DMC3.Sds_RelVendas_itens.Active :=true;
FormRel_vendas := TFormRel_vendas.Create(self);
FormRel_vendas.RLReport1.Prepare;
FormRel_vendas.RLReport1.Preview();
end;
end;
end;

procedure TFormRelVendas.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT2.Text:='';
end;

procedure TFormRelVendas.ClienteKeyPress(Sender: TObject; var Key: Char);
begin
if Key= #13 then
begin
if edit2.Text='LETRAS' THEN

  BEGIN
   dm.SDS_Clientes.Active := false;
   dm.SDS_Clientes.SQL.Clear;
   dm.SDS_Clientes.SQL.Add('select * from clientes where NOME_RS like ' + #39 + '%' + cliente.Text + '%' + #39+'order by NOME_RS ASC');
   dm.SDS_Clientes.Active := True;
   ACHOU := DM.SDS_Clientes.locate('nome_rs',cliente.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  clienteButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
  RxLabel6.Caption := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Cliente.Text     := DM.SDS_ClientesCODIGO.Text;
  btnSuibtton1.SetFocus;
  end;
    except
     on E: EDatabaseError do
     ShowMessage(E.Message);

    end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
 IF cliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 cliente.Text := '';
end else

  //DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.Add('select * from clientes where CODIGO like ' + #39 + '%' + cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(cliente.Text),[]);
  cliente.Text := RemoveChar(cliente.Text);

IF ACHOU=FALSE THEN
begin
SHOWMESSAGE('Codigo do Cliente Não Localizado');
cliente.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
  RxLabel6.Caption   := DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
  Cliente.Text       := DM.SDS_ClientesCODIGO.Text;
  btnSuibtton1.SetFocus;
 end;
 end;
end;
end;

procedure TFormRelVendas.ComboEdit2Exit(Sender: TObject);
begin
  if ComboEdit2.Text > '' then
  begin
   If DM.SDS_Fornecedores.locate('CODIGO',ComboEdit2.Text,[])=True then
begin
//DM.SDS_Clientes.Locate('CODIGO',Cliente.Text,[loCaseinSensitive]);
RXLabel12.Caption := DM.SDS_FornecedoresNOME.Text;
end;
end;
end;

end.
