unit RegPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf,  DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  IBSQL, IBCustomDataSet, IBQuery, IBDatabase, ACBrECF, ACBrBase, ACBrLCB,
  DBClient, SimpleDS, SqlExpr, sBitBtn, Mask,
  BaseGrid, DBAdvGrid,
  sLabel, acPNG, jpeg, ACBrUtil, ACBrECFClass, ACBrConsts, ACBrDevice,
  RXCtrls, FireDAC.Stan.Async, FireDAC.DApt, AdvUtil, Data.DBXFirebird,
  RxCurrEdit, RxToolEdit, AdvGlowButton, AdvObj, AdvGrid;

type
  TFormCupomFiscal = class(TForm)
    DataSource1: TDataSource;
    SPC_Codigo: TSQLStoredProc;
    SPC_ITENS: TSQLStoredProc;
    SPC_COD_ITENS: TSQLStoredProc;
    SDS_Cheques: TSimpleDataSet;
    SDS_ChequesCODIGO: TIntegerField;
    SDS_ChequesCODIGO_COMPRA: TIntegerField;
    SDS_ChequesBANCO: TStringField;
    SDS_ChequesAGENCIA: TStringField;
    SDS_ChequesCONTA_CORRENTE: TStringField;
    SDS_ChequesCONTA_DESDE: TDateField;
    SDS_ChequesTITULAR: TStringField;
    SDS_ChequesTIPO_CHEQUE: TStringField;
    SDS_ChequesN_CHEQUE: TStringField;
    SDS_ChequesQNT: TStringField;
    SDS_ChequesVALOR_CHEQUE: TFMTBCDField;
    SDS_ChequesCLIENTE: TStringField;
    SDS_ChequesRETORNARDO: TStringField;
    SDS_ChequesRETORNADO_PAGO: TStringField;
    SDS_ChequesMOTIVO_RETORNO: TStringField;
    SDS_ChequesDATA_CADASTRO: TDateField;
    SDS_ChequesDATA_DEPOSITO: TDateField;
    SDS_ChequesDATA_RETORNO: TDateField;
    SDS_ChequesDATA_BAIXA: TDateField;
    SDS_ChequesUSUARIO_CADASTRO: TStringField;
    SDS_ChequesUSUARIO_BAIXA: TStringField;
    SDS_ChequesCOMPENSADO: TStringField;
    SDS_ChequesCODIGO_CC: TIntegerField;
    SDS_ChequesNUMERO_CC: TStringField;
    SDS_ChequesNUMERO: TIntegerField;
    SDS_ChequesCOD_EMPRESA: TIntegerField;
    SDS_ChequesCOD_CLIENTE: TIntegerField;
    SDS_ChequesCOD_BARRAS_CHEQUE: TStringField;
    DTS_Cheques: TDataSource;
    DataSource2: TDataSource;
    Timer1: TTimer;
    ACBrLCB1: TACBrLCB;
    ACBrECF1: TACBrECF;
    cbxModelo: TComboBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Image1: TImage;
    Panel5: TPanel;
    IBTRAce: TFDTransaction;
    QBuscaItens1: TFDQuery;
    QBuscaItens1CODIGO: TIntegerField;
    QBuscaItens1CODIGO_ID: TIntegerField;
    QBuscaItens1ITEN: TIntegerField;
    QBuscaItens1CODIGO_PROD: TIntegerField;
    QBuscaItens1CODIGO_PRODUTO: TIBStringField;
    QBuscaItens1DESCRICAO_PRODUTO: TIBStringField;
    QBuscaItens1DESCONTO: TIBBCDField;
    QBuscaItens1QUANTIDADE: TIBBCDField;
    QBuscaItens1COMISSAO: TIBBCDField;
    QBuscaItens1DEV: TIBStringField;
    QBuscaItens1QNT_DEV: TIBBCDField;
    QBuscaItens1VAL_DEV: TIBBCDField;
    QBuscaItens1ENC_FINANCEIRO: TIBBCDField;
    QBuscaItens1UNIDADE: TIBStringField;
    QBuscaItens1SIT_TRIBUTARIA: TIBStringField;
    QBuscaItens1VENDEDOR: TIntegerField;
    QBuscaItens1FRACAO: TIntegerField;
    QBuscaItens1COD_NCM: TIBStringField;
    QBuscaItens1PROD_SERV: TIBStringField;
    QBuscaItens1PERC_ISS: TIBBCDField;
    QBuscaItens1BASE_ISS: TIBBCDField;
    QBuscaItens1VL_ISS: TIBBCDField;
    QBuscaItens1PERC_ICM: TIBBCDField;
    QBuscaItens1BASE_ICMS: TIBBCDField;
    QBuscaItens1VL_ICM: TIBBCDField;
    QBuscaItens1PERC_IPI: TIBBCDField;
    QBuscaItens1BASE_IPI: TIBBCDField;
    QBuscaItens1VL_IPI: TIBBCDField;
    QBuscaItens1PERC_COFINS: TIBBCDField;
    QBuscaItens1BASE_COFINS: TIBBCDField;
    QBuscaItens1VL_COFINS: TIBBCDField;
    QBuscaItens1PERC_ICMS_SUBST: TIBBCDField;
    QBuscaItens1BASE_ICMS_SUBST: TIBBCDField;
    QBuscaItens1VL_ICMS_SUBST: TIBBCDField;
    QBuscaItens1PERC_PIS: TIBBCDField;
    QBuscaItens1BASE_PIS: TIBBCDField;
    QBuscaItens1VL_PIS: TIBBCDField;
    QBuscaItens1IMPRIME: TIBStringField;
    QBuscaItens1COD_EMPRESA: TIntegerField;
    QBuscaItens1ICMS: TIBBCDField;
    QBuscaItens1COD_ANP: TIBStringField;
    QBuscaItens1COMBUSTIVEL: TIBStringField;
    QBuscaItens1APLICACAO: TIBStringField;
    QBuscaItens1IPI_IRPJ: TIBBCDField;
    QBuscaItens1OUTROS_IMPOSTOS: TIBBCDField;
    QBuscaItens1NCM_SH: TIBStringField;
    QBuscaItens1QTD_CAIXA: TSmallintField;
    QBuscaItens1UND_TRIB: TIBStringField;
    QBuscaItens1ML_QUANT_BEB: TIBBCDField;
    QBuscaItens1SIT_COFINS_VENDA_EST: TIBStringField;
    QBuscaItens1SIT_PIS_VENDA_INTER_EST: TIBStringField;
    QBuscaItens1SIT_COFINS_VENDA_INTER_EST: TIBStringField;
    QBuscaItens1SIT_PIS_VENDA_EST: TIBStringField;
    QBuscaItens1CST_IPI_SAIDA: TIBStringField;
    QBuscaItens1CST_VENDA_INTER: TIBStringField;
    QBuscaItens1PERC_ALIQUOTA_PIS: TIBBCDField;
    QBuscaItens1PERC_ALIQUOTA_COFINS: TIBBCDField;
    QBuscaItens1CFOP_INTER_VENDA: TIBStringField;
    QBuscaItens1FLAG_PIS_COFINS: TIBStringField;
    QBuscaItens1CFOP_EST_VENDA: TIBStringField;
    QBuscaItens1CST_VENDA: TIBStringField;
    QBuscaItens1NCM_SH1: TIBStringField;
    QBuscaItens1PERC_TRIBU: TIBBCDField;
    QBuscaItens1FONTE: TIBStringField;
    QBuscaItens1ALIC_NAC: TIBBCDField;
    QBuscaItens1ALIC_IMP: TIBBCDField;
    DataSource3: TDataSource;
    Spc_itensV: TFDCommand;
    SPC_VENDA: TFDCommand;
    ClientDataSet1: TFDMemTable;
    ClientDataSet1PROD_SERV: TStringField;
    ClientDataSet1PERC_ISS: TFMTBCDField;
    ClientDataSet1BASE_ISS: TFMTBCDField;
    ClientDataSet1VL_ISS: TFMTBCDField;
    ClientDataSet1PERC_ICM: TFMTBCDField;
    ClientDataSet1BASE_ICMS: TFMTBCDField;
    ClientDataSet1VL_ICM: TFMTBCDField;
    ClientDataSet1PERC_IPI: TFMTBCDField;
    ClientDataSet1BASE_IPI: TFMTBCDField;
    ClientDataSet1VL_IPI: TFMTBCDField;
    ClientDataSet1PERC_COFINS: TFMTBCDField;
    ClientDataSet1BASE_COFINS: TFMTBCDField;
    ClientDataSet1VL_COFINS: TFMTBCDField;
    ClientDataSet1PERC_ICMS_SUBST: TFMTBCDField;
    ClientDataSet1BASE_ICMS_SUBST: TFMTBCDField;
    ClientDataSet1VL_ICMS_SUBST: TFMTBCDField;
    ClientDataSet1PERC_PIS: TFMTBCDField;
    ClientDataSet1BASE_PIS: TFMTBCDField;
    ClientDataSet1VL_PIS: TFMTBCDField;
    ClientDataSet1Item: TIntegerField;
    ClientDataSet1Codigo: TIntegerField;
    ClientDataSet1CodBarras: TStringField;
    ClientDataSet1Descricao: TStringField;
    ClientDataSet1abreviado: TStringField;
    ClientDataSet1Quantidade: TStringField;
    ClientDataSet1Preco: TCurrencyField;
    ClientDataSet1Soma: TFloatField;
    ClientDataSet1Comissao: TFloatField;
    ClientDataSet1Total: TFloatField;
    ClientDataSet1Aliquota: TStringField;
    ClientDataSet1Desconto: TCurrencyField;
    ClientDataSet1EncFianceiro: TCurrencyField;
    ClientDataSet1Desc_unidade: TStringField;
    ClientDataSet1cod_ncm: TStringField;
    ClientDataSet1fracao: TIntegerField;
    ClientDataSet1VALOR_TOTAL: TAggregateField;
    cbo_modelo: TComboBox;
    cbo_porta: TComboBox;
    edt_ip: TEdit;
    NovaVenda: TAdvGlowButton;
    NovoProd: TAdvGlowButton;
    Image8: TImage;
    ConfPedido: TAdvGlowButton;
    Edit3: TEdit;
    lUltimaLeitura: TLabel;
    Edit1: TEdit;
    EditN1: TCurrencyEdit;
    Shape1: TShape;
    EditUnt: TCurrencyEdit;
    edtTotal: TCurrencyEdit;
    Edtproduto: TRxLabel;
    ClientDataSet2: TFDMemTable;
    ClientDataSet2NOME_CLIENTE: TStringField;
    ClientDataSet2ENDERECO: TStringField;
    ClientDataSet2CPF_CNPJ: TStringField;
    ClientDataSet2RG_IE: TStringField;
    ClientDataSet2FONE: TStringField;
    ClientDataSet2CIDADE: TStringField;
    ClientDataSet2BAIRRO: TStringField;
    ClientDataSet2CEP: TStringField;
    ClientDataSet2UF: TStringField;
    ClientDataSet2CELULAR: TStringField;
    ClientDataSet2COD_IBGE: TStringField;
    ClientDataSet2valor_avista: TCurrencyField;
    ClientDataSet2valor_aprazo: TCurrencyField;
    Edit4: TEdit;
    QBuscaItens1PRECO_TOTAL: TIBBCDField;
    QBuscaItens1ID_BICO: TIntegerField;
    QBuscaItens1ID_TANQUE: TIBStringField;
    QBuscaItens1ID_BOMBA: TIBStringField;
    QBuscaItens1BICO: TIBStringField;
    QBuscaItens1PRECO_UNITARIO: TFloatField;
    SDS_ChequesCHEK_BOX: TStringField;
    SDS_ChequesDESTINO: TStringField;
    SDS_ChequesCPF_CNPJ: TStringField;
    Qpromo: TFDQuery;
    DBGrid1: TDBAdvGrid;
    Edit7: TEdit;
    qrcaixa: TFDQuery;
    ClientDataSet1ESTOQUE: TFloatField;
    QpromoPRECO_PROMOCAO: TFMTBCDField;
    qrcaixaCODIGO: TIntegerField;
    qrcaixaCODIGO_BARRAS: TStringField;
    qrcaixaDESCRICAO: TStringField;
    qrcaixaUNID: TStringField;
    qrcaixaABREVIADO: TStringField;
    qrcaixaPRECO_CUSTO: TFMTBCDField;
    qrcaixaMARGEM_LUCRO: TFMTBCDField;
    qrcaixaCOMISSAO: TFMTBCDField;
    qrcaixaUNIDADE: TIntegerField;
    qrcaixaFRETE: TFMTBCDField;
    qrcaixaICMS: TFMTBCDField;
    qrcaixaIPI_IRPJ: TFMTBCDField;
    qrcaixaOUTROS_IMPOSTOS: TFMTBCDField;
    qrcaixaDESCONTOS: TFMTBCDField;
    qrcaixaCLASS_FISCAL: TStringField;
    qrcaixaSIT_TRIBUTARIA: TStringField;
    qrcaixaDESCONTO_MAXIMO: TFMTBCDField;
    qrcaixaCODIGO_GRUPO: TIntegerField;
    qrcaixaCODIGO_SUBGRUPO: TIntegerField;
    qrcaixaCODIGO_MARCA: TIntegerField;
    qrcaixaNOME_GRUPO: TStringField;
    qrcaixaNOME_SUBGRUPO: TStringField;
    qrcaixaNOME_MARCA: TStringField;
    qrcaixaNOME_FORNECEDOR: TStringField;
    qrcaixaCODIGO_FORNECEDORES: TIntegerField;
    qrcaixaFOTO: TBlobField;
    qrcaixaESTOQUE: TBCDField;
    qrcaixaESTOQUE_MINIMO: TIntegerField;
    qrcaixaESTOQUE_MAXIMO: TIntegerField;
    qrcaixaDATACAD: TDateField;
    qrcaixaUSERCAD: TStringField;
    qrcaixaVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    qrcaixaULTIMACOMPRA: TDateField;
    qrcaixaVALOR_EST_CUSTO: TFMTBCDField;
    qrcaixaSECCAO: TIntegerField;
    qrcaixaCATEGORIA: TIntegerField;
    qrcaixaLOCALIZACAO: TStringField;
    qrcaixaAPLICACAO: TStringField;
    qrcaixaESP_COD_AUX: TStringField;
    qrcaixaGARANTIA: TIntegerField;
    qrcaixaBALANCA: TStringField;
    qrcaixaETIQUETA: TStringField;
    qrcaixaATIVO: TStringField;
    qrcaixaREFERENCIA: TStringField;
    qrcaixaCOD_EMPRESA: TIntegerField;
    qrcaixaDESC_UNIDADE: TStringField;
    qrcaixaPESOBRUTO: TFMTBCDField;
    qrcaixaPESOLIQUIDO: TFMTBCDField;
    qrcaixaFONETICO: TStringField;
    qrcaixaDATAULTALTERACAO: TDateField;
    qrcaixaCUSTOREPOSICAO: TFMTBCDField;
    qrcaixaPRECO_ANT: TFMTBCDField;
    qrcaixaPRECO_PROMOCAO: TFMTBCDField;
    qrcaixaFLAG_PROMOCAO: TStringField;
    qrcaixaDT_INICIO_PROMO: TDateField;
    qrcaixaDT_FIM_PROMO: TDateField;
    qrcaixaCOD_LABORATORIO: TIntegerField;
    qrcaixaLABORATORIO: TStringField;
    qrcaixaPRINCIPIO_ATIVO: TStringField;
    qrcaixaMED_CONTROLADO: TStringField;
    qrcaixaQTD_FRACIONADA: TFMTBCDField;
    qrcaixaQTD_CAIXA: TSmallintField;
    qrcaixaMED_GENERICO: TStringField;
    qrcaixaLOTE_MED: TStringField;
    qrcaixaVALIDADE: TDateField;
    qrcaixaCHEK_BOX: TStringField;
    qrcaixaPRECO_VENDA2: TFMTBCDField;
    qrcaixaMARGEM_LUCRO2: TFMTBCDField;
    qrcaixaVALIDADE_PRODUTO: TStringField;
    qrcaixaPROD_SERV: TStringField;
    qrcaixaUNIDADE_ENT: TIntegerField;
    qrcaixaDESC_UNID_ENT: TStringField;
    qrcaixaQUANT_SAIDA: TBCDField;
    qrcaixaQUANT_ENTRADA: TBCDField;
    qrcaixaESTOQUE_FRACAO: TBCDField;
    qrcaixaDATA_FABRICACAO: TDateField;
    qrcaixaFRACAO: TIntegerField;
    qrcaixaNCM_SH: TStringField;
    qrcaixaCOD_MS: TStringField;
    qrcaixaCONTOLAESTOQUE: TStringField;
    qrcaixaPRODUTOCOMPOSTO: TStringField;
    qrcaixaTIPO_ATIVIDADE: TStringField;
    qrcaixaCOD_PRODUTO_ESTOQUE: TIntegerField;
    qrcaixaCODIGO_LOCAL_ESTOQUE: TIntegerField;
    qrcaixaLISTA_ABC: TStringField;
    qrcaixaGRUPO_TRIBUTACAO: TIntegerField;
    qrcaixaCOMBUSTIVEL: TStringField;
    qrcaixaCOR: TIntegerField;
    qrcaixaENABLE_NUMSERIE: TIntegerField;
    qrcaixaID_PRODUTOS: TIntegerField;
    qrcaixaCOD_ANP: TStringField;
    qrcaixaCESTA: TStringField;
    qrcaixaML_QUANT_BEB: TFMTBCDField;
    qrcaixaUND_TRIB: TStringField;
    qrcaixaCHASSI: TStringField;
    qrcaixaCOR_DESC: TStringField;
    qrcaixaN_MOTOR: TStringField;
    qrcaixaANO_FAB: TStringField;
    qrcaixaANO_MOD_FAB: TStringField;
    qrcaixaTIPO_VEIC: TStringField;
    qrcaixaN_SERIE: TStringField;
    qrcaixaCOD_MODELO: TStringField;
    qrcaixaESPECIE_VEICULO: TStringField;
    qrcaixaCOD_COR_DENATRAN: TStringField;
    qrcaixaTIPO_COMBUSTIVEL: TStringField;
    qrcaixaVEICULO: TStringField;
    qrcaixaUSA_RENTABILIDADE: TIntegerField;
    qrcaixaUSA_SERIAL: TIntegerField;
    qrcaixaUSA_GRADE: TIntegerField;
    qrcaixaPRODUTO_PROPRIEDADE: TIntegerField;
    qrcaixaMULTIP_FRACAO: TIntegerField;
    qrcaixaDATA_REMARCACAO_VENDA: TDateField;
    qrcaixaCODORIGINAL: TStringField;
    qrcaixaDATA_ULTIMA_COMPRA: TDateField;
    qrcaixaALERTA_COPA: TStringField;
    qrcaixaALERTA_COZINHA: TStringField;
    qrcaixaANDROID_VISUALIZA: TStringField;
    qrcaixaTEMPO_PREPARO: TTimeField;
    q: TIntegerField;
    qrcaixaCOD_PACOTE: TStringField;
    Panel1: TPanel;
    qrcaixaCUSTO_MEDIO: TFMTBCDField;
    qrcaixaPRECO_VENDA: TFMTBCDField;
    qrcaixaQUANT_VENDA: TBCDField;
    qrcaixaVALOR_VENDA: TFMTBCDField;
    suiButton1: TAdvGlowButton;
    suiButton21: TAdvGlowButton;
    suiButton3: TAdvGlowButton;
    btnPesq: TAdvGlowButton;
    CancelaItem: TAdvGlowButton;
    CancelaVenda: TAdvGlowButton;
    Panel2: TPanel;
    RxLabel20: TsLabel;
    EditCodigoCli: TComboEdit;
    E_Nome: TLabel;
    RxLabel19: TsLabel;
    Cod_usuario: TLabel;
    Edit12: TLabel;
    RxLabel18: TsLabel;
    RxLabel16: TsLabel;
    Label3: TsLabelFX;
    RbPreco2: TRadioButton;
    RbPreco1: TRadioButton;
    Shape2: TShape;
    Edit62: TCurrencyEdit;
    E_usuario: TLabel;
    Edit2: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    sLabel1: TsLabel;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Procedure Retorno_Impressora;
    Procedure Analisa_iRetorno();
    procedure FormShow(Sender: TObject);
    procedure suitempDBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sair1Click(Sender: TObject);
    procedure suitempEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure NovaVendaClick(Sender: TObject);
    procedure CancelaVendaClick(Sender: TObject);
    procedure CancelaItemClick(Sender: TObject);
    procedure NovoProdClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure E_DescontoExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodigoCliButtonClick(Sender: TObject);
    procedure EditCodigoCliExit(Sender: TObject);
    procedure ComboEdit1Enter(Sender: TObject);
    procedure EditCodigoCliEnter(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure EditN12Enter(Sender: TObject);
    procedure ConfPedidoClick(Sender: TObject);
    procedure E_UsuarioExit(Sender: TObject);
    procedure E_UsuarioEnter(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure btnPesqClick(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RbPreco2Enter(Sender: TObject);
    procedure RbPreco1Enter(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure EditN1KeyPress(Sender: TObject; var Key: Char);
    procedure ACBrLCB1LeCodigo(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure Vende(Sender: TObject);
    procedure LerINI;
    Procedure LerINIecf;
    procedure EditCodigoCliKeyPress(Sender: TObject; var Key: Char);
    procedure TrataErros(Sender: TObject; E: Exception);
    procedure EditCodigoCliChange(Sender: TObject);
    procedure cbxModeloChange(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure cbo_portaChange(Sender: TObject);
    procedure cbo_modeloChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Image8Click(Sender: TObject);
    procedure EditN1Exit(Sender: TObject);
    //procedure CarregaFPG;
   
  private
    { Private declarations }
    function Converte1(cmd: String): String;
 //   function WordsCount(s: string ): integer;

  public
    { Public declarations }
    Total,  Comissao,EncFinanceiro, ValCompra,
    Dinheiro,  Soma, A, B:Double;
    Cod,Contador, I, NItem, NValor:Integer;
    Pagamento, CPFCNPJ, RGIE, EnderComp: String;
    TipoCupom : Char ;
    codigo_bar :string;
    FPG : TACBrECFFormaPagamento ;  { Necessita de uses ACBrECF }
    PAG : String;
    venda_aberta: boolean; // variavel para verificar se existe vem em andamento
  end;

 const
  //ECFTeste_VERSAO = '2.01' ;
  Estados : array[TACBrECFEstado] of string =
    ('Não Inicializada', 'Desconhecido', 'Livre', 'Venda',
    'Pagamento', 'Relatório', 'Bloqueada', 'Requer Z', 'Requer X', 'Nao Fiscal' );
   _C = 'tYk*5W@' ;

var
  FormCupomFiscal: TFormCupomFiscal;

   iRetorno: Integer;         // Variável com o retorno da função
   iControle: Integer;
   iACK, iST1, iST2: Integer; // Variáveis com o retorno do Status da Impressora
   i_retorno: integer;
   i_modelo:integer;
   s_porta: string;
   s_stporta: String;
   
   bErroBalanca :Boolean;

  sCodigo, sDescricao, sAliquota, sTipoQtde, sQtde, sValor, sTipo, sDesconto : string;
  sAcreDesc, sForma, sMensagem, sConfirma, sTipoDesconto, sUnidade, sValorDesc: String;

  VALORV, Percent, EncFin, PerEnc, EF, VF: Real;
  n, UEF, saldo1 : String;
  Desc : Char ;
  Desconto : Real;
  Peso, xPreUnit: Extended;
  CodigoPeso, Codprod: Integer;
  Qtd_v :string;

  estoque, quantidade, saldo : Real;




implementation

uses  Principal,  Acesso, ModulodeDados, ModulodeDadosConsultas,
  ConsClientes, ConsCondPagamento, Z_RotinasGerais,
  ConsultaProdutos, Z_DeclaracoesBemaFi32, PesquisaEstoqueRegPedidos,
  Configuracoes, CRCrediario, ecfFrente, Ubibli1,
  PedidoParcela, ClientesAdd, ajuda, clientes, ConsProdSimilar,
  ConsProdutos, LeitorSerial, IniFiles, caixa_indisponivel, debitos,
  UFBalanca, ConsProdutosVendas;

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

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto form MAIOR que o desejado, eliminar últimos caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;
   bErroBalanca : Boolean;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            'á','Á' : Texto[i] := 'A';
            'é','É' : Texto[i] := 'E';
            'í','Í' : Texto[i] := 'I';
            'ó','Ó' : Texto[i] := 'O';
            'ú','Ú' : Texto[i] := 'U';
            'à','À' : Texto[i] := 'A';
            'è','È' : Texto[i] := 'E';
            'ì','Ì' : Texto[i] := 'I';
            'ò','Ò' : Texto[i] := 'O';
            'ù','Ù' : Texto[i] := 'U';
            'â','Â' : Texto[i] := 'A';
            'ê','Ê' : Texto[i] := 'E';
            'î','Î' : Texto[i] := 'I';
            'ô','Ô' : Texto[i] := 'O';
            'û','Û' : Texto[i] := 'U';
            'ä','Ä' : Texto[i] := 'A';
            'ë','Ë' : Texto[i] := 'E';
            'ï','Ï' : Texto[i] := 'I';
            'ö','Ö' : Texto[i] := 'O';
            'ü','Ü' : Texto[i] := 'U';
            'ç','Ç' : Texto[i] := 'C';
            'ñ','Ñ' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);


end;

Procedure TFormCupomFiscal.TrataErros(Sender: TObject; E: Exception);
begin
 // mResp.Lines.Add( E.Message );
 // StatusBar1.Panels[0].Text := 'Exception' ;
 // AtualizaMemos( False ) ;
//  StatusBar1.Panels[1].Text := E.Message ;
//  PageControl1.ActivePageIndex := 1 ;
  MessageDlg( E.Message,mtError,[mbOk],0) ;
end ;


procedure TFormCupomFiscal.LerINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     ACBrLCB1.Porta := INI.ReadString('LEITOR','Porta', ACBrLCB1.Porta);
     ACBrLCB1.sufixo := INI.ReadString('LEITOR','Sulfixo',ACBrLCB1.Sufixo);
     ACBrLCB1.Device.Baud := INI.ReadInteger('LEITOR','baud',ACBrLCB1.Device.Baud);
     ACBrLCB1.ExcluirSufixo := INI.ReadBool('LEITOR','ExcluirSulfixo',ACBrLCB1.ExcluirSufixo);
     ACBrLCB1.Intervalo := INI.ReadInteger('LEITOR','Intervalo',ACBrLCB1.Intervalo);
     ACBrLCB1.PrefixoAExcluir:= ini.readString('LEITOR','Prefixo',ACBrLCB1.PrefixoAExcluir);
  finally
     INI.Free ;
  end ;
end;

procedure TFormCupomFiscal.LerINIecf;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     cbxModelo.ItemIndex := INI.ReadInteger('ECF','Modelo',cbxModelo.ItemIndex);
     cbxModeloChange(nil);
     ACBrECF1.porta  := INI.ReadString('ECF','Porta',ACBrECF1.Porta);
    { seTimeOut.Value := INI.ReadInteger('ECF','TimeOut',seTimeOut.Value);
     seIntervaloAposComando.Value := INI.ReadInteger('ECF','IntervaloAposComando',seIntervaloAposComando.Value);
     chTentar.Checked := INI.ReadBool('ECF','TentarNovamente',chTentar.Checked);
     chBloqueia.Checked := INI.ReadBool('ECF','BloqueiaMouseTeclado',chBloqueia.Checked);
     chExibeMsg.Checked := INI.ReadBool('ECF','ExibeMsgAguarde',chExibeMsg.Checked);
     chArredondaPorQtd.Checked := INI.ReadBool('ECF','ArredondaPorQtd',chArredondaPorQtd.Checked);
     chDescricaoGrande.Checked := INI.ReadBool('ECF','DescricaoGrande',chDescricaoGrande.Checked);
     chGavetaSinalInvertido.Checked := INI.ReadBool('ECF','GavetaSinalInvertido',chGavetaSinalInvertido.Checked);
     mMsg.Text := StringReplace(INI.ReadString('ECF','MensagemAguarde',mMsg.Text),'|',sLineBreak,[rfReplaceAll]);
     edLog.Text := INI.ReadString('ECF','ArqLog',edLog.Text); }
     ACBrECF1.Device.ParamsString := INI.ReadString('ECF','SerialParams','');
    // edOperador.Text := INI.ReadString('ECF','Operador','');

     cbo_Modelo.ItemIndex := INI.ReadInteger('ECF_N','Modelo',cbo_Modelo.ItemIndex);
     cbo_ModeloChange(nil);
     cbo_Porta.Text := INI.ReadString('ECF_N','Porta',cbo_Porta.Text);
     edt_ip.Text := INI.ReadString('ECF_N','IP',edt_ip.Text);
     cbo_portaChange(nil);
  finally
     INI.Free ;
  end ;
end;

// FUNÇÃO PARA LER O CODIGO DE BALANÇAS
//--------------------------//---------------------------

function WordsCount( s : string ) : integer;
var
ps: PChar;
nSpaces,n,o : integer; 
begin 
//total de palavras 
n := 0; 
//total de letras 
o := 0; 
s := s + #0; 
ps := @s[ 1 ]; 
while( #0 <> ps^ ) do 
begin
while((' ' = ps^)and(#0 <> ps^)) do
begin
inc( ps );
//conta total de letras
inc(o);
end;
nSpaces := 0;
while((' ' <> ps^)and(#0 <> ps^))do
begin
inc(nSpaces);
inc(ps); 
//conta total de letras 
inc(o); 
end;
if ( nSpaces > 0 ) then 
begin 
inc( n );
end; 
end; 
//recebe o total de letras contadas incluindo os espacos 
Result := o; 
end;

// **********************************************************************
// -------------------- Analisa a Variável iRetorno ---------------------

Procedure TFormCupomFiscal.Analisa_iRetorno();
Begin
  if iRetorno = 0 then
    Application.MessageBox( 'Erro de Comunicação !', 'Erro',MB_IconError + MB_OK);

  If iRetorno = -1 Then
    Application.MessageBox( 'Erro de Execução na Função. Verifique!', 'Erro', MB_IconError + MB_OK);

  if iRetorno = -2  then
    Application.MessageBox( 'Parâmetro Inválido !', 'Erro',MB_IconError + MB_OK);

  if iRetorno = -3  then
    //Application.MessageBox( 'Alíquota não programada ! Aliquota: ' edit5.Text, 'Atenção',MB_IconInformation + MB_OK);
     ShowMessage ('Alíquota não programada ! Aliquota: '+ edit5.Text +'');

  If iRetorno = -4 Then
    Application.MessageBox( 'Arquivo BemaFI32.INI não encontrado. Verifique!', 'Atenção',
                                MB_IconInformation + MB_OK);

  If iRetorno = -5 Then
    Application.MessageBox( 'Erro ao Abrir a Porta de Comunicação', 'Erro',
                                MB_IconError + MB_OK);

  If iRetorno = -6 Then
    Application.MessageBox( 'Impressora Desligada ou Desconectada', 'Atenção',
                                MB_IconInformation + MB_OK);

  If iRetorno = -7 Then
    Application.MessageBox( 'Banco Não Cadastrado no Arquivo BemaFI32.ini', 'Atenção',
                                MB_IconInformation + MB_OK);

  If iRetorno = -8 Then
    Application.MessageBox( 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt', 'Erro',
                                MB_IconError + MB_OK);

  if iRetorno = -18 then
    Application.MessageBox( 'Não foi possível abrir arquivo INTPOS.001 !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -19 then
    Application.MessageBox( 'Parâmetro diferentes !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -20 then
    Application.MessageBox( 'Transação cancelada pelo Operador !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -21 then
    Application.MessageBox( 'A Transação não foi aprovada !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -22 then
    Application.MessageBox( 'Não foi possível terminar a Impressão !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -23 then
    Application.MessageBox( 'Não foi possível terminar a Operação !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -24 then
    Application.MessageBox( 'Forma de pagamento não programada.', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -25 then
    Application.MessageBox( 'Totalizador não fiscal não programado.', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -26 then
    Application.MessageBox( 'Transação já Efetuada !', 'Atenção',
                                MB_IconInformation + MB_OK);

  if iRetorno = -28 then
    Application.MessageBox( 'Não há Informações para serem Impressas !', 'Atenção',
                                MB_IconInformation + MB_OK);
End;


Procedure TFormCupomFiscal.Retorno_Impressora;
  Var iACK, iST1, iST2: Integer;
  Begin
    iACK := 0; iST1 := 0; iST2 := 0;
    iRetorno := Bematech_FI_RetornoImpressora(iACK, iST1, iST2);
    If iACK = 6 then
       BEGIN

          // Verifica ST1

          IF iST1 >= 128 Then BEGIN iST1 := iST1 - 128; end;
          IF iST1 >= 64  Then BEGIN iST1 := iST1 - 64;  end;
          IF iST1 >= 32  Then BEGIN iST1 := iST1 - 32;  end;
          IF iST1 >= 16  Then BEGIN iST1 := iST1 - 16;  end;
          IF iST1 >= 8   Then BEGIN iST1 := iST1 - 8;   end;
          IF iST1 >= 4   Then BEGIN iST1 := iST1 - 4;   end;
          IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   end;
          IF iST1 >= 1   Then BEGIN iST1 := iST1 - 1;   end;

          // Verifica ST2

          IF iST2 >= 128 Then BEGIN iST2 := iST2 - 128; end;
          IF iST2 >= 64  Then BEGIN iST2 := iST2 - 64;  end;
          IF iST2 >= 32  Then BEGIN iST2 := iST2 - 32;  end;
          IF iST2 >= 16  Then BEGIN iST2 := iST2 - 16;  end;
          IF iST2 >= 8   Then BEGIN iST2 := iST2 - 8;   end;
          IF iST2 >= 4   Then BEGIN iST2 := iST2 - 4;   end;
          IF iST2 >= 2   Then BEGIN iST2 := iST2 - 2;   end;
          IF iST2 >= 1   Then BEGIN iST2 := iST2 - 1;   end;
       End;

    If iACK = 21 Then BEGIN
       showmessage( 'Atenção!!!' + #13 + #10 +
                    'A Impressora retornou NAK. O programa será abortado.');
    End;


  End;


procedure TFormCupomFiscal.FormShow(Sender: TObject);
var
Est : String ;
begin
//DM.SDS_Clientes.Active:=False;
DM.SDS_EMPRESA.Active := False;
//DM.SDS_Clientes.Active:=True;
dm.SDS_Clientes.Filtered := False;
DM.SDS_CondPagamento.active :=false;
DM.SDS_CondPagamento.active :=true;
DM.SDS_CONFIGURACOES.Active :=false;
DM.SDS_CONFIGURACOES.Active :=true;
dm.SDS_Usuarios.Active :=False;
dm.SDS_Usuarios.Active :=True;
DM.SDS_EMPRESA.Active := TRUE;
{dm.SDS_PRODUTOS.Active := false;
DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS ORDER BY DESCRICAO ASC';
dm.SDS_PRODUTOS.Active := True;  }

 Edtproduto.Caption := 'Siace Sistemas';
    EditUnt.Text := '0,00';
    edtTotal.Text := '0,00';


 if dm.SDS_CONFIGURACOESMODELO_ECF.Text ='4' then
     begin        
      if s_porta='COM1' then s_stporta:='serial';
      if s_porta='COM2' then s_stporta:='serial';
      if s_porta='COM3' then s_stporta:='serial';
      if s_porta='COM4' then s_stporta:='serial';
      if s_porta='lpt1' then s_stporta:='lpt';
      if s_porta='lpt2' then s_stporta:='lpt';
      if s_porta='Ethernet' then s_stporta:='rede';

     i_retorno:=Le_Status();

     if (i_modelo=1) and (s_stporta='serial') then
    Begin
    if i_retorno= 32 then ShowMessage('32 - SEM PAPEL');
    End;
//******************************************************************************

//******************IMPRESSORAS MP 20 CI E MI - CONEXÃO PARALELA****************

  if (i_modelo=1) and (s_stporta='lpt') then
    Begin
    if i_retorno= 0 then ShowMessage('OFF LINE OU IMP. SEM PAPEL');
    End;
//******************************************************************************

//******IMPRESSORAS MP 20 TH, 2000 CI 2000 TH 2100 TH - CONEXÃO SERIAL**********

  if (i_modelo=0) and (s_stporta='serial') then
    Begin
    if i_retorno= 24 then ShowMessage('ON LINE OU POUCO PAPEL');
    if i_retorno= 32 then ShowMessage('IMP. SEM PAPEL');
    End;
//******************************************************************************

//******IMPRESSORAS MP 20 TH, 2000 CI 2000 TH 2100 TH - CONEXÃO PARALELA********

  if (i_modelo=0) and (s_stporta='lpt') then
    Begin
    if i_retorno= 144 then ShowMessage('ON LINE OU POUCO PAPEL');
    if i_retorno= 32 then ShowMessage('IMP. SEM PAPEL');
    End;
//******************************************************************************

//******************IMPRESSORAS MP 4000 TH CONEXÃO PARALELA*********************

  if (i_modelo=5) and (s_stporta='lpt') then
    Begin
    if i_retorno= 24 then ShowMessage('IMPRESSORA ON LINE');
    if i_retorno= 128 then ShowMessage('IMP. SEM PAPEL');
    End;
//******************************************************************************

//******************IMPRESSORAS MP 4000 TH CONEXÃO ETHERNET*********************

  if (i_modelo=5) and (s_stporta='rede') then
    Begin
    if i_retorno= 0 then ShowMessage('IMP. OFF LINE/SEM COMUNICAÇÃO');
    if i_retorno= 32 then ShowMessage('IMP. SEM PAPEL');
    if i_retorno= 24 then ShowMessage('ON LINE - POUCO PAPEL');
    End;
//******************************************************************************

//******************IMPRESSORAS MP 4000 TH CONEXÃO SERIAL***********************

  if (i_modelo=5) and (s_stporta='serial') then
    Begin
    if i_retorno= 0 then ShowMessage('IMP. OFF LINE/SEM COMUNICAÇÃO');
    if i_retorno= 32 then ShowMessage('IMP. SEM PAPEL');
    if i_retorno= 5 then ShowMessage('ON LINE - POUCO PAPEL');
    End;
//******************************************************************************

//*********************IMPRESSORAS MP 4000 TH CONEXÃO USB***********************

  if (i_modelo=5) and (s_stporta='serial') then
    Begin
    if i_retorno= 68 then ShowMessage('IMP. OFF LINE/SEM COMUNICAÇÃO');
    if i_retorno= 32 then ShowMessage('IMP. SEM PAPEL');
    if i_retorno= 24 then ShowMessage('ON LINE - POUCO PAPEL');
    End;
//******************************************************************************

//*******************IMPRESSORAS MP 4200 TH CONEXÃO TODAS***********************

  if (i_modelo=7) then
    Begin
    if i_retorno= 0 then ShowMessage('IMP. OFF LINE/SEM COMUNICAÇÃO');
    if i_retorno= 32 then ShowMessage('IMP. SEM PAPEL');
    if i_retorno= 5 then ShowMessage('ON LINE - POUCO PAPEL');
    if i_retorno= 9 then ShowMessage('TAMPA ABERTA');
    End;
//******************************************************************************

      end ;

clientDataset1.First;
       Total:=0;
       Soma:=0;
       Comissao:=0;
       EncFinanceiro:=0;
       NovaVenda.SetFocus;
       Total:=0;
       Soma:=0;
       Comissao:=0;
       EncFinanceiro:=0;
       NovaVenda.SetFocus;

//DBImage1.Picture.Assign(DM.SDS_CONFIGURACOESLOGOMARCA);
//suiEdit1.Visible := TRUE;
venda_aberta := false;

Formcupomfiscal.CancelaVenda.Enabled:=FALSE;
Formcupomfiscal.CancelaItem.Enabled:= False;
Formcupomfiscal.NovoProd.Enabled:= False;
Formcupomfiscal.ConfPedido.Enabled:= False;
Formcupomfiscal.NovaVenda.Enabled:= TRUE;

EditN1.Text:= '1,000';
if DM.SDS_CONFIGURACOESABRE_VENDA.Text = 'S' then
begin
//Panel2.Enabled := True;
Edit1.SetFocus;
end else
begin
//Panel2.Enabled := False;
end;


  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='1' then
  begin
  RbPreco1.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
  begin
  RbPreco2.Checked := True;
  end;
  
  IF DM.SDS_CONFIGURACOESMODELO_ECF.text = '2' then
  BEGIN

    Est := Estados[ACBrECF1.Estado ] ;

    if ACBrECF1.Ativo = False then
    begin
     ACBrECF1.Ativar;
    end;

            // formECF.ACBrECF1.TestaPodeAbrirCupom;
    if ACBrECF1.Estado = estRequerZ then
    begin
    //  IF application.messagebox('Deseja marcar todos?','Aviso',36)=idyes
     MessageDlg( 'Não Pode Abrir Cupom..' +Est,mtInformation,[mbOK],0);
   //  raise ;
    end else

    if ACBrECF1.Estado = estRequerX then
    begin
    //  IF application.messagebox('Deseja marcar todos?','Aviso',36)=idyes
     MessageDlg( 'Não Pode Abrir Cupom..' +Est,mtInformation,[mbOK],0);
   //  raise ;
    end else

    if ACBrECF1.Estado = estbloqueada then
    begin
     ShowMessage('Não Pode Abrir Cupom... '+#10+#10+'Estado: '+ Estados[ ACBrECF1.Estado ]);
    end;
    end else
  IF DM.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
  BEGIN

        while not clientDataset1.EOF do
        begin
        ClientDataset1.Delete;
          end;

      while not clientDataset2.EOF do
        begin
        ClientDataset2.Delete;
          end;

  iRetorno := Bematech_FI_VerificaEstadoImpressora( iAck, iSt1, iSt2 );
  Analisa_iRetorno();
  Retorno_Impressora();
  ShowMessage('Retorno da Impressora:' + #13 + 'ACK = ' + IntToStr( iAck )
                 + #13 + 'ST1 = ' + IntToStr( iSt1 ) + #13 + 'ST2 = '
                 + IntToStr( iSt2 ) );


    end;
  IF DM.SDS_CONFIGURACOESMODELO_ECF.text = '3' then
  BEGIN

      while not clientDataset1.EOF do
        begin
        ClientDataset1.Delete;
          end;

      while not clientDataset2.EOF do
        begin
        ClientDataset2.Delete;
          end;
  end;
end;

procedure TFormCupomFiscal.suitempDBGrid1TitleClick(Column: TColumn);
begin
ClientDataset1.IndexFieldNames:=Column.FieldName;
end;

procedure TFormCupomFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//formECF.close;
FechaPorta();

Action:=CaFree;
FormCupomFiscal:=nil;
end;

procedure TFormCupomFiscal.Sair1Click(Sender: TObject);
begin
Close;
end;

procedure TFormCupomFiscal.suitempEdit2KeyPress(Sender: TObject; var Key: Char);
begin
 with Tedit do
    If Key = #13 Then
    Begin
      SelectNext(Sender as tWinControl, True, True );
      Key := #0;
      Edit1.SetFocus;
      end;
end;

procedure TFormCupomFiscal.NovaVendaClick(Sender: TObject);
var
n:Integer;
Est : String ;
Desc : Char ;
begin
  //Panel2.Enabled := True;
  panel5.Visible := False;

  EditCodigoCli.Enabled:= True;

  IF DM.SDS_CONFIGURACOESMODELO_ECF.text = '2' then
  BEGIN

    Est := Estados[ACBrECF1.Estado ] ;

    if ACBrECF1.Ativo = False then
    begin
     ACBrECF1.Ativar;
    end;

            // formECF.ACBrECF1.TestaPodeAbrirCupom;
    if ACBrECF1.Estado = estRequerZ then
    begin
    //  IF application.messagebox('Deseja marcar todos?','Aviso',36)=idyes
     MessageDlg( 'Não Pode Abrir Cupom..' +Est,mtInformation,[mbOK],0);
   //  raise ;
    exit;
    end;

    if ACBrECF1.Estado = estRequerX then
    begin
    //  IF application.messagebox('Deseja marcar todos?','Aviso',36)=idyes
     MessageDlg( 'Não Pode Abrir Cupom..' +Est,mtInformation,[mbOK],0);
   //  raise ;
    exit;
    end;

    if ACBrECF1.Estado = estbloqueada then
    begin
     ShowMessage('Não Pode Abrir Cupom... '+#10+#10+'Estado: '+ Estados[ ACBrECF1.Estado ]);
     exit;
    end;

    if ACBrECF1.Estado = estvenda then
    begin
     ShowMessage('Não Pode Abrir Cupom... '+#10+#10+'Estado: '+ Estados[ ACBrECF1.Estado ]);
      if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
      BEGIN
      ACBrECF1.CancelaCupom ;
      FormCupomFiscal.ACBrECF1.CortaPapel(True);
      end;
     exit;
    end;

    if ACBrECF1.Estado = estpagamento then
    begin
     ShowMessage('Não Pode Abrir Cupom... '+#10+#10+'Estado: '+ Estados[ ACBrECF1.Estado ]);
      if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
      BEGIN
      ACBrECF1.CancelaCupom ;
      FormCupomFiscal.ACBrECF1.CortaPapel(True);
      end;
     exit;
    end;
    //recupera venda perdida
     IF venda_aberta = True then
     BEGIN
     if ACBrECF1.Estado = estVenda then
     begin
      ClientDataset1.Last;
      ClientDataset1.Edit;
      NItem := ClientDataSet1item.AsInteger;

      SPC_Codigo.ExecProc;
      N := (SPC_Codigo.ParamByName('ATUAL').AsInteger);
      Edit2.Caption:=IntTostr(N);

      CancelaVenda.Enabled:=True;
      NovaVenda.Enabled:= False;
      CancelaItem.Enabled := True;
      NovoProd.Enabled := True;
      ConfPedido.Enabled := True;

      Total:=ClientDataset1.FieldByname('Total').AsFloat;
      Soma:=ClientDataset1.FieldByname('Soma').AsFloat;
      Comissao:=ClientDataset1.FieldByname('Comissao').AsFloat;
      EncFinanceiro:=ClientDataset1.FieldByname('EncFianceiro').AsFloat;
      Edit62.Text  :=ClientDataset1.FieldByname('total').Value;
      A  :=0;
      B  :=0;
      EF :=0;
      UEF := '0';
      EF := 0;
      VF :=0;
      EncFin :=0;
      DESCONTO :=0;
      Percent := 0;
      ValCompra:=0;
      //Panel12.Enabled:= True;
     // Panel3.Enabled:= True;
      EditCodigoCli.Color:= clWhite;
      clientDataset1.First;
      lUltimaLeitura.Caption := '';
     // Edit1.Clear;
      Edit1.SetFocus;
     { if StrToFloat(editn1.text) > 0.001 then // verificar se ha cupom em andamento
      EditN1.Text:= EditN1.Text
      else }
      EditN1.Text:= '1,000';

      Edit12.Caption := ACBrECF1.NumECF;
      E_usuario.caption := FormPrincipal.UserLogado;
      If DM.SDS_Usuarios.locate('USUARIO',E_usuario.Caption,[])=True then
      Cod_usuario.Caption := DM.SDS_UsuariosCODIGO.Text;

      EditCodigoCli.Text := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.SQL.ADD('select * from clientes where CODIGO like ' + #39 + '%' + EditCodigoCli.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;
      If DM.SDS_Clientes.locate('CODIGO',EditCodigoCli.Text,[])=True then
      begin
      E_Nome.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      ClientDataSet2.insert;
      ClientDataSet2.Edit;
      EditCodigoCliExit(Sender);
      end;
      Edit1.SetFocus;
     { Sds_venda.Edit;
      Sds_vendaCODIGO_CLIENTE.Text := EditCodigoCli.Text;
      Sds_venda.Post;}
    //  DBImage1.Picture.Assign(DM.SDS_CONFIGURACOESLOGOMARCA);
      end;
    end else


    if ACBrECF1.Estado = estlivre then
    begin
      while not clientDataset1.EOF do
        begin
        ClientDataset1.Delete;
          end;

      while not clientDataset2.EOF do
        begin
        ClientDataset2.Delete;
          end;

      NItem:= 0;

      ACBrECF1.AbreCupom();

      SPC_Codigo.ExecProc;
      N:= (SPC_Codigo.ParamByName('ATUAL').AsInteger);
      Edit2.Caption:=IntTostr(N);
      CancelaVenda.Enabled:=True;
      NovaVenda.Enabled:= False;
      CancelaItem.Enabled := True;
      NovoProd.Enabled := True;
      ConfPedido.Enabled := True;
      Total:=0;
      Soma:=0;
      Comissao:=0;
      EncFinanceiro:=0;
      A  :=0;
      B  :=0;
      EF :=0;
      UEF := '0';
      EF := 0;
      VF :=0;
      EncFin :=0;
      DESCONTO :=0;
      Percent := 0;
       ValCompra:=0;
      //Panel12.Enabled:= True;
    //  Panel3.Enabled:= True;
      EditCodigoCli.Color:= clWhite;
      clientDataset1.First;
      lUltimaLeitura.Caption := '';
    //  Edit1.Clear;
      Edit1.SetFocus;
    {  if StrToFloat(EditN1.text) > 0.001 then // verificar se ha cupom em andamento
      EditN1.Text:= EditN1.Text
      else }
      EditN1.Text:= '1,000';
      Edit12.Caption := ACBrECF1.NumECF;
      E_usuario.caption := FormPrincipal.UserLogado;
      If DM.SDS_Usuarios.locate('USUARIO',E_usuario.Caption,[])=True then
      Cod_usuario.Caption := DM.SDS_UsuariosCODIGO.Text;

      dm.SDS_Clientes.Filtered := false;

      EditCodigoCli.Text := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.SQL.ADD('select * from clientes where CODIGO like ' + #39 + '%' + EditCodigoCli.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;
      If DM.SDS_Clientes.locate('CODIGO',EditCodigoCli.Text,[])=True then
      E_Nome.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      ClientDataSet2.insert;
      ClientDataSet2.Edit;
      EditCodigoCliExit(Sender);
      ClientDataSet2.Edit;
       //DBImage1.Picture.Assign(DM.SDS_CONFIGURACOESLOGOMARCA);

       venda_aberta := True;
     end;
  end else

  IF DM.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
  BEGIN

        while not clientDataset1.EOF do
        begin
        ClientDataset1.Delete;
          end;

      while not clientDataset2.EOF do
        begin
        ClientDataset2.Delete;
          end;

      NItem:= 0;

      iRetorno := Bematech_FI_AbreCupom( pchar( '' ) );
      Analisa_iRetorno();
      Retorno_Impressora();



      SPC_Codigo.ExecProc;
      N:= (SPC_Codigo.ParamByName('ATUAL').AsInteger);
      Edit2.Caption:=IntTostr(N);
      CancelaVenda.Enabled:=True;
      NovaVenda.Enabled:= False;
      CancelaItem.Enabled := True;
      NovoProd.Enabled := True;
      ConfPedido.Enabled := True;
      Total:=0;
      Soma:=0;
      Comissao:=0;
      EncFinanceiro:=0;
      A  :=0;
      B  :=0;
      EF :=0;
      UEF := '0';
      EF := 0;
      VF :=0;
      EncFin :=0;
      DESCONTO :=0;
      Percent := 0;
      ValCompra:=0;
      //Panel12.Enabled:= True;
     // Panel3.Enabled:= True;
      EditCodigoCli.Color:= clWhite;
      clientDataset1.First;
      lUltimaLeitura.Caption := '';
    //  Edit1.Clear;
      Edit1.SetFocus;
     { if StrToFloat(EditN1.text) > 0.001 then // verificar se ha cupom em andamento
      EditN1.Text:= EditN1.Text
      else  }
      EditN1.Text:= '1,000';
     // Edit12.Text := Bematech_FI_NumeroCupom();
      E_usuario.Caption := FormPrincipal.UserLogado;
      If DM.SDS_Usuarios.locate('USUARIO',E_usuario.Caption,[])=True then
      Cod_usuario.Caption := DM.SDS_UsuariosCODIGO.Text;

      dm.SDS_Clientes.Filtered := false;

      EditCodigoCli.Text := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;

      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.SQL.ADD('select * from clientes where CODIGO like ' + #39 + '%' + EditCodigoCli.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;

      If DM.SDS_Clientes.locate('CODIGO',EditCodigoCli.Text,[])=True then
      E_Nome.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      ClientDataSet2.insert;
      ClientDataSet2.Edit;
      EditCodigoCliExit(Sender);
      ClientDataSet2.Edit;
    //  DBImage1.Picture.Assign(DM.SDS_CONFIGURACOESLOGOMARCA);

      venda_aberta := True;
     end;

  IF (DM.SDS_CONFIGURACOESMODELO_ECF.Text = '3') or (DM.SDS_CONFIGURACOESMODELO_ECF.Text = '4') then
  BEGIN
      NItem:= 0;

      SPC_Codigo.ExecProc;
      N:= (SPC_Codigo.ParamByName('ATUAL').AsInteger);
      Edit2.Caption:=IntTostr(N);
      CancelaVenda.Enabled:=True;
      NovaVenda.Enabled:= False;
      CancelaItem.Enabled := True;
      NovoProd.Enabled := True;
      ConfPedido.Enabled := True;
      Total:=0;
      Soma:=0;
      Comissao:=0;
      EncFinanceiro:=0;
      A  :=0;
      B  :=0;
      EF :=0;
      UEF := '0';
      EF := 0;
      VF :=0;
      EncFin :=0;
      DESCONTO :=0;
      Percent := 0;
       ValCompra:=0;
     // Panel12.Enabled:= True;
     // Panel3.Enabled:= True;
      EditCodigoCli.Color:= clWhite;
      clientDataset1.First;
      lUltimaLeitura.Caption := '';
    //  Edit1.Clear;
      Edit1.SetFocus;
      {if StrToFloat(EditN1.text) > 0.001 then // verificar se ha cupom em andamento
      EditN1.Text:= EditN1.Text
      else }
      EditN1.Text:= '1,000';
      Edit12.Caption := ACBrECF1.NumECF;
      E_usuario.Caption := FormPrincipal.UserLogado;
      If DM.SDS_Usuarios.locate('USUARIO',E_usuario.Caption,[])=True then
      Cod_usuario.Caption := DM.SDS_UsuariosCODIGO.Text;

      dm.SDS_Clientes.Filtered := false;

      EditCodigoCli.Text := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.Text;
      dm.SDS_Clientes.Active := false;
      dm.SDS_Clientes.SQL.Clear;
      dm.SDS_Clientes.SQL.ADD('select * from clientes where CODIGO like ' + #39 + '%' + EditCodigoCli.Text + '%' + #39+'order by NOME_RS ASC');
      dm.SDS_Clientes.Active := True;
      If DM.SDS_Clientes.locate('CODIGO',EditCodigoCli.Text,[])=True then
      E_Nome.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
      ClientDataSet2.insert;
      ClientDataSet2.Edit;
      EditCodigoCliExit(Sender);
      ClientDataSet2.Edit;

       //DBImage1.Picture.Assign(DM.SDS_CONFIGURACOESLOGOMARCA);

       venda_aberta := True;
       end;
  end;

procedure TFormCupomFiscal.CancelaVendaClick(Sender: TObject);
begin
if Application.MESSAGEBOX('Confirma o Cacelamento da Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin

   if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
   BEGIN
         //  BEMATECH
    iRetorno := Bematech_FI_CancelaCupom();
    Analisa_iRetorno();
    Retorno_Impressora();
   end else

   if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
   BEGIN
      ACBrECF1.CancelaCupom ;

      FormCupomFiscal.ACBrECF1.CortaPapel(True);
   end;

    E_Nome.Caption:='';;
    Edit2.Caption:='';;
    EditCodigoCli.Color:= clWhite;
    EditCodigoCli.Clear;
//    Edit60.Clear;
    Edit62.Clear;
    Edtproduto.Caption := 'Siace Sistemas';
    EditUnt.Text := '0,00';
    edtTotal.Text := '0,00';

   edit1.Clear;

//   suiEdit1.Visible := TRUE;

    Total:=0;
    soma:=0;
    Comissao:=0;
    EncFinanceiro:=0;
    ClientDataset1.First;
    DBGrid1.Enabled:= False;
    //Panel12.Enabled:= FALSE;
   // Panel3.Enabled:= FALSE;
    EditCodigoCli.color:= clWhite;
    CancelaVenda.Enabled:=FALSE;
    CancelaItem.Enabled:= False;
    NovoProd.Enabled:= False;
    ConfPedido.Enabled:= False;
    NovaVenda.Enabled:= TRUE;



venda_aberta := false;

if DM.SDS_CONFIGURACOESABRE_VENDA.Text = 'S'then
BEGIN
//Panel2.Enabled := True;
Edit1.SetFocus;
EditN1.Text:= '1,000';
end ELSE
begin
  NovaVenda.SetFocus;
  panel5.Visible := True;
  //Panel2.Enabled := False;
 // Edit1.Color:= clWhite;
 // EditN1.Color:= clWhite;
  Edit62.Font.Color:= clBlack;
end;

   while not clientDataset1.EOF do
    begin
      ClientDataset1.edit;
      ClientDataset1.Delete;
      //ClientDataSet1.ClearFields;
    //  NovaVenda.SetFocus;
    end;

    while not clientDataset2.EOF do
    begin
      ClientDataset2.edit;
      ClientDataset2.Delete;
     // ClientDataSet2.ClearFields;
    end;
   end;
end;

procedure TFormCupomFiscal.CancelaItemClick(Sender: TObject);
VAR PERCENT,  Finac: DOUBLE;
N:String;
Iten : String ;
begin
  If  ClientDataSet1.RecordCount = 0  then
  Begin
      //CancelaItem.Enabled:= False;
      ConfPedido.Enabled:= False;
      DBGRID1.Enabled:= False;
      Total:=0;
      Soma:=0;
      Comissao:=0;
      EncFinanceiro:=0;
//      Edit60.Font.Color:= $00D7FFEB;
      Edit62.Font.Color:= clBlack;
//      E_Desconto.Font.Color:= clWindow;

      FormPrincipal.MsgAtencao.HTMLText.text:= 'Insira algum item na venda antes de Encerrar !!!';
      FormPrincipal.MsgAtencao.Execute;
      
      Edit1.SetFocus;
      end  else

      if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
      begin
         N:= ClientDataset1.FieldByname('Item').AsString;
         begin
         Iten := '1' ;
         if InputQuery('Cancelar Item Vendido',
                'Informe o número da Sequencia de Venda', Iten ) then
         begin
         ACBrECF1.CancelaItemVendido( StrToIntDef(Iten,0) );
        // mResp.Lines.Add( 'Cancela Item Vendido: '+Iten );
         end;
         {iRetorno := Bematech_FI_CancelaItemGenerico(N);
         Analisa_iRetorno();
         Retorno_Impressora();}
      ClientDataSet1.Locate('item',Iten,[]);
      Soma:= ClientDataset1.FieldByname('SOMA').AsCurrency;
      Percent:= ClientDataset1.FieldByname('COMISSAO').AsCurrency;
      Finac:= ClientDataset1.FieldByname('EncFianceiro').AsCurrency;
      Total:=Total-(soma);
      Comissao:= Comissao-(percent);
      EncFinanceiro:=EncFinanceiro - (Finac);
      ClientDataset1.Delete;
     // Edit62.Text := FloattoStr(Total);
     if not ClientDataSet1.Eof then
     begin
      ClientDataSet1.Last;
      ClientDataSet1.Edit;
      ClientDataSet1Total.Value :=  Total;
      ClientDataSet1.Post;
      //ClientDataSet1.Refresh;
     // Edit62.Text := ClientDataset1.FieldByname('Valor_Total').Text;
       Edit62.Text := FloattoStr(Total);
//      E_Desconto.Clear;
//      ConfPedido.Enabled:= False;
//      Edit60.Font.Color:= clBlue;
      end;
      Edit62.Font.Color:= clAqua;
//    E_Desconto.Font.Color:= clWindow;
      Edit1.SetFocus;
      ConfPedido.Enabled := True;
      editn1.Text :='1,000';
       end;
    end;
       if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
       begin
       N:= ClientDataset1.FieldByname('Item').AsString;
       begin
       Iten := '1' ;
       if InputQuery('Cancelar Item Vendido',
                'Informe o número da Sequencia de Venda', Iten ) then
       iRetorno := Bematech_FI_CancelaItemGenerico(Iten);
       Analisa_iRetorno();
       Retorno_Impressora();
       ClientDataSet1.Locate('item',Iten,[]);
       Soma:= ClientDataset1.FieldByname('SOMA').AsCurrency;
       Percent:= ClientDataset1.FieldByname('COMISSAO').AsCurrency;
       Finac:= ClientDataset1.FieldByname('EncFianceiro').AsCurrency;
        Total:=Total-(soma);
        Comissao:= Comissao-(percent);
        EncFinanceiro:=EncFinanceiro - (Finac);
        ClientDataset1.Delete;
       // Edit62.Text := FloattoStr(Total);
       if not ClientDataSet1.Eof then
       begin
        ClientDataSet1.Last;
        ClientDataSet1.Edit;
        ClientDataSet1Total.Value :=  Total;
        ClientDataSet1.Post;
        //ClientDataSet1.Refresh;
       // Edit62.Text := ClientDataset1.FieldByname('Valor_Total').Text;
         Edit62.Text := FloattoStr(Total);
        //      E_Desconto.Clear;
       //      ConfPedido.Enabled:= False;
        //      Edit60.Font.Color:= clBlue;
        end;
        Edit62.Font.Color:= clAqua;
        //    E_Desconto.Font.Color:= clWindow;
        Edit1.SetFocus;
        ConfPedido.Enabled := True;
        editn1.Text :='1,000';
       end;
       end;

        if (DM.SDS_CONFIGURACOESMODELO_ECF.Text = '3') or (DM.SDS_CONFIGURACOESMODELO_ECF.Text = '4') then
       begin
       N:= ClientDataset1.FieldByname('Item').AsString;
       begin
       Iten := '1' ;
       if InputQuery('Cancelar Item Vendido',
                'Informe o número da Sequencia de Venda', Iten ) then
    //   iRetorno := Bematech_FI_CancelaItemGenerico(Iten);
     //  Analisa_iRetorno();
     //  Retorno_Impressora();
       ClientDataSet1.Locate('item',Iten,[]);
       Soma:= ClientDataset1.FieldByname('SOMA').AsCurrency;
       Percent:= ClientDataset1.FieldByname('COMISSAO').AsCurrency;
       Finac:= ClientDataset1.FieldByname('EncFianceiro').AsCurrency;
        Total:=Total-(soma);
        Comissao:= Comissao-(percent);
        EncFinanceiro:=EncFinanceiro - (Finac);
        ClientDataset1.Delete;
       // Edit62.Text := FloattoStr(Total);
       if not ClientDataSet1.Eof then
       begin
        ClientDataSet1.Last;
        ClientDataSet1.Edit;
        ClientDataSet1Total.Value :=  Total;
        ClientDataSet1.Post;
        //ClientDataSet1.Refresh;
       // Edit62.Text := ClientDataset1.FieldByname('Valor_Total').Text;
         Edit62.Text := FloattoStr(Total);
        //      E_Desconto.Clear;
       //      ConfPedido.Enabled:= False;
        //      Edit60.Font.Color:= clBlue;
        end;
        Edit62.Font.Color:= clAqua;
        //    E_Desconto.Font.Color:= clWindow;
        Edit1.SetFocus;
        ConfPedido.Enabled := True;
        editn1.Text :='1,000';
       end;
       end;
end;



procedure TFormCupomFiscal.NovoProdClick(Sender: TObject);
begin
Try
 EditN1.Text := '1,000';
 edit1.SetFocus;
 Edit1.Clear;
 If FormPesquisaEstoqueRegPedidos=nil   then
    begin
    FormPesquisaEstoqueRegPedidos:=TFormPesquisaEstoqueRegPedidos.Create(self);
      FormPesquisaEstoqueRegPedidos.ShowModal;
       ConfPedido.Enabled := True;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir Pesquisa Estoque!!');
end;
end;


procedure TFormCupomFiscal.FormCreate(Sender: TObject);
var
   cDescricao : String ;
   Vinculado  : Boolean ;
 begin

 SetForegroundWindow(handle);

  if FileExists('C:\SIACE\CUPOM.xml') then
  begin
     DeleteFile('C:\SIACE\CUPOM.xml');
  end;
  if FileExists('C:\SIACE\CUPOMC.xml') then
  begin
     DeleteFile('C:\SIACE\CUPOMC.xml');
  end;  
                 {  if trim(fieldbyname('R01_MARCA_ECF').AsString) = 'BEMATECH' then
                      iECF:= 1
                   else
                   if trim(fieldbyname('R01_MARCA_ECF').AsString) = 'DARUMA' then
                      iECF:= 2
                   else
                      iECF:= 99;  //sem ecf     }

  iECF:= 1;

  with clientDataset1 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'CUPOM.xml';
  if not FileExists(filename) then
  createdataset;
  open;
  end;


  with clientDataset2 do
  Begin
 // Filename:=ExtractFilepath(paramstr(0))+'CUPOMC.xml';
 // if not FileExists(filename) then
  createdataset;
  open;
  end;



  //CoInitialize(nil);
 // formECF := nil;
 // formecf := tformECF.Create(self);
  // FormEcf.Show;
  // CoUninitialize;
 // formECF.ACBrECF1.Ativar;

  {formECF.Ativcar1Click( Sender );
  formECF.Desativar1Click(sender);
  formECF.Ativcar1Click( Sender );  }

  IF DM.SDS_CONFIGURACOESLEITOT_SERIAL.Text = 'S' then
  BEGIN
  LerINI;
  ACBrLCB1.Ativar;
  end ;


  //formECF := nil;
  //formecf := tformECF.Create(self);
  // FormEcf.Show;
  // CoUninitialize;


  if dm.SDS_CONFIGURACOESMODELO_ECF.Text ='1' then
  begin
  iRetBematech := Bematech_FI_VerificaImpressoraLigada();
  Analisa_Retorno_Bematech(bMFD);
   // Retorno_Impressora();
  end;

  if dm.SDS_CONFIGURACOESMODELO_ECF.Text ='2' then
  begin
  LerINIecf;
  ACBrECF1.Ativar;

  if FileExists('ECF.ini') then
     ACBrECF1.MemoParams.LoadFromFile('ECF.ini');


            if (ACBrECF1.Modelo in [ecfNaoFiscal])then
            begin
            cDescricao := 'DINHEIRO';
            Vinculado  := False ;
            ACBrECF1.ProgramaFormaPagamento(cDescricao,Vinculado);
            cDescricao := 'CHEQUE';
            Vinculado  := true ;
            ACBrECF1.ProgramaFormaPagamento(cDescricao,Vinculado);
            cDescricao := 'CARTAO';
            Vinculado  := true ;
            ACBrECF1.ProgramaFormaPagamento(cDescricao,Vinculado);
            cDescricao := 'PRAZO';
            Vinculado  := true ;
            ACBrECF1.ProgramaFormaPagamento(cDescricao,Vinculado);
            cDescricao := 'VALE';
            Vinculado  := true ;
            ACBrECF1.ProgramaFormaPagamento(cDescricao,Vinculado);
                      


            //VALIDAÇÃO DE EXECUÇÃO DO COMANDO


           { if i_retorno=1 then
              Begin
               // Application.MessageBox('Impressora NÃO FISCAL conectada','Sucesso!',0);
              end
                Else
                  Application.MessageBox('Erro de conexão','Erro!',0);  }
            end;

           { if (FormECF.ACBrECF1.Modelo in [ecfBematech])then
            begin
            cDescricao := 'CHEQUE';
            Vinculado  := true ;
            FPG := FormECF.ACBrECF1.AchaFPGDescricao(CDescricao) ;
            formECF.ACBrECF1.ProgramaFormaPagamento(cDescricao,Vinculado);
            cDescricao := 'CARTAO';
            Vinculado  := true ;
            FPG := FormECF.ACBrECF1.AchaFPGDescricao(CDescricao) ;
            formECF.ACBrECF1.ProgramaFormaPagamento(cDescricao,Vinculado);
            cDescricao := 'PRAZO';
            Vinculado  := true ;
            FPG := FormECF.ACBrECF1.AchaFPGDescricao(CDescricao) ;
            formECF.ACBrECF1.ProgramaFormaPagamento(cDescricao,Vinculado);
            cDescricao := 'VALE';
            Vinculado  := true ;
            FPG := FormECF.ACBrECF1.AchaFPGDescricao(CDescricao) ;
            formECF.ACBrECF1.ProgramaFormaPagamento(cDescricao,Vinculado);
            end;}
     end;

    if dm.SDS_CONFIGURACOESMODELO_ECF.Text ='4' then
     begin
      LerINIecf;

      ConfiguraModeloImpressora(i_modelo);

      i_retorno:= IniciaPorta(pchar(s_porta));

      if s_porta='COM1' then s_stporta:='serial';
      if s_porta='COM2' then s_stporta:='serial';
      if s_porta='COM3' then s_stporta:='serial';
      if s_porta='COM4' then s_stporta:='serial';
      if s_porta='lpt1' then s_stporta:='lpt';
      if s_porta='lpt2' then s_stporta:='lpt';
      if s_porta='Ethernet' then s_stporta:='rede';
      end ;

end;


procedure TFormCupomFiscal.E_DescontoExit(Sender: TObject);
VAR
DESCONT, VALDESCONT: DOUBLE;
begin

   {  If E_Desconto.Text ='' then
       begin
        ValCompra:=0;
        ValCompra:=(Total-ValCompra);
        Edit62.Text := FloattoStr(ValCompra);
        E_Desconto.Color := clWhite;
        Desc:= 0;
        ConfPedido.Enabled:= True;
        ConfPedido.SetFocus;
        end else

      If E_Desconto.Text<>'' then
      Begin
      DESCONT:= DM.SDS_CONFIGURACOESDESCONTO_MAXIMO_FV.AsFloat;
      VALDESCONT:= STRTOFLOAT(E_Desconto.Text);
      Desc:= StrtoFloat(E_Desconto.Text);

      IF  (DESCONT < VALDESCONT) THEN
      BEGIN
      MSG_Desc.ShowModal;
      E_Desconto.SetFocus;
      END ELSE
      begin
        Desc:= StrtoFloat(E_Desconto.Text);
        ValCompra:=StrtoFloat(E_Desconto.Text);
        ValCompra:=(Total-ValCompra);
        Edit62.Text := FloattoStr(ValCompra);
        E_Desconto.Color := clWhite;
        ConfPedido.Enabled:= True;
        ConfPedido.SetFocus;
      end;
end;  }
end;

procedure TFormCupomFiscal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if NovaVenda.Enabled = False then
  begin
   FormPrincipal.MsgAtencao.HTMLText.text:= 'Antes de Fechar voçê deve Cancelar ou Encerrar a Venda !!!';
   FormPrincipal.MsgAtencao.Execute;
    CanClose := False;
  end;
end;

procedure TFormCupomFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       formajuda :=Tformajuda.Create(self);
       formajuda.ShowModal;
      end;

if (ssalt in shift) and (Key = 81) then
BEGIN
EditN1.SetFocus;
EditN1.SelectAll;
end;

if (Key =106) then
BEGIN
EditN1.SetFocus;
Edit1.Clear;
EditN1.SelectAll;
end;


if (Key=VK_F2) then
      begin
     // FormConsultaProdutos:=TFormConsultaProdutos.Create(self);
     // FormConsultaProdutos.ShowModal;
      IF DM.SDS_CONFIGURACOESLEITOT_SERIAL.Text = 'S' then
      BEGIN
      ACBrLCB1.desAtivar;
      end else
      begin
      ACBrLCB1.Desativar;
      end;

      FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
      FormConsProdutosVendas.ShowModal;
      Edit1.Text := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
      Edit1.SelectAll;

       IF DM.SDS_CONFIGURACOESLEITOT_SERIAL.Text = 'S' then
       BEGIN
       ACBrLCB1.Ativar;
        end ;


      end;

if (Key=VK_F12) then
      begin
      suiButton2Click(Sender);
      end;

if (Key=VK_F11) then
      begin
      FormClientes:=TFormClientes.Create(self);
      FormClientes.ShowModal;
      end;
      
if (Key=VK_F6) then
      begin
      EditCodigoCli.SetFocus;
      end;

if (Key=VK_F3) then
      begin
      IF  NovaVenda.Enabled = TRUE THEN
      BEGIN
      NovaVendaClick(Sender);
      end;
end;

 if (Key=VK_F4) then
      begin
      IF  CancelaVenda.Enabled = TRUE THEN
      BEGIN
      CancelaVendaClick(Sender);
      end;
end;

   if (Key=VK_F5) then
      begin
      IF  NovoProd.Enabled = TRUE THEN
      BEGIN
      NovoProdClick(Sender);
      end;
end;

   if (Key=VK_F7) then
      begin
      IF  CancelaItem.Enabled = TRUE THEN
      BEGIN
      CancelaItemClick(Sender);
      end;
end;
  if (Key=VK_F8) then
      begin
      suiButton1Click(Sender);
      end;

  if (Key=VK_F9) then
      begin
      btnPesqClick(Sender);
      end;


   if (Key=VK_F10) then
      begin
      IF  ConfPedido.Enabled = TRUE THEN
      BEGIN
      ConfPedidoClick(Sender);
      end;
     end;

  if (ssalt in shift) and (Key = 73) then
  begin
  if venda_aberta then
  begin
    application.messagebox('Existe uma venda em andamento! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
    exit;
  end;
  frmcaixa_indisponivel := tfrmcaixa_indisponivel.create(self);
  frmcaixa_indisponivel.showmodal;
  end;

  if (ssalt in shift) and (Key = 66) then
  begin
  if DM.SDS_CONFIGURACOESABRE_VENDA.Text = 'N' then
  begin
     if venda_aberta = false then
     begin
     application.messagebox('Não Existe uma venda em andamento, favor abrir uma venda! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
     exit;
     end;
   end;
     if venda_aberta then
     begin
                                 bErroBalanca:= false;
                                 Application.CreateForm( TfrmBalanca, frmBalanca);
                                 frmBalanca.ShowModal;
                                 bErrobalanca := frmbalanca.ErroBalanca;
                                 EditN1.Text := FloatTostr( frmBalanca.Quant );
                                 FreeAndNil( frmBalanca );
                                 if bErroBalanca and not ( strtocurr(EditN1.text) <= 0 ) then
                                    begin
                                       EditN1.text:= '1';
                                       Edit1.Enabled:= true;
                                       Edit1.SetFocus;
                                       exit;
                                    end;
                                 if strtocurr(EditN1.text) <= 0 then
                                    begin
//                                       showmessage('Verifique a Balança');
                                       EditN1.Text:= '1';
                                       Edit1.Enabled:= true;
                                       Edit1.SetFocus;
                                       exit;
                                    end;
       end;
       end;

end;

procedure TFormCupomFiscal.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

if not (ActiveControl is TCustomGrid) and not (ActiveControl is Tedit) then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End; 
end;

procedure TFormCupomFiscal.EditCodigoCliButtonClick(Sender: TObject);
VAR
CD: STRING;
begin
//CD:= DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
  //   dm.SDS_Clientes.Filtered := false;

     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.Edit1.Text := EditCodigoCli.Text;
     FormConsClientes.Tag := 1;
     FormConsClientes.ShowModal;

      //   IF CD = 'A' THEN BEGIN
       E_Nome.Caption:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       ClientDataSet2NOME_CLIENTE.Text := DM.SDS_ClientesNOME_RS.AsString;
       ClientDataSet2ENDERECO.Text  := DM.SDS_ClientesENDERECO.AsString;
       ClientDataSet2CPF_CNPJ.Text  := DM.SDS_ClientesCPF_CNPJ.Text;
       ClientDataSet2RG_IE.Text     :=    DM.SDS_ClientesRG_IE.Text;
       ClientDataSet2FONE.Text      :=     DM.SDS_ClientesTELEFONE.Text;
       ClientDataSet2CIDADE.Text    :=   dm.SDS_ClientesCIDADE.AsString+'-'+DM.SDS_ClientesUF.AsString;
       ClientDataSet2BAIRRO.Text    :=   DM.Sds_clientesBairro.Text;
       ClientDataSet2uf.Text        :=  DM.SDS_ClientesUF.Text;
       ClientDataSet2CELULAR.Text   :=  DM.SDS_ClientesCELULAR.Text;
       ClientDataSet2COD_IBGE.Text  := DM.SDS_ClientesCOD_IBGE.Text;

       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
    //   Panel12.Enabled:= True;
     //  Edit1.Color:= clWhite;
  //     E_Desconto.Color:= clWhite;
     //  EditN1.Color:= clWhite;
       EditN1.Text:= '1,000';
  //     E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
      // end;

    { IF CD = 'C' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CREDIARIO.Value = 'S' THEN
       BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel12.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       END ELSE
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Próprio!';
       MSGI.ShowModal;
       EditCodigoCli.Clear;
       E_Nome.Clear;
       EditCodigoCli.SetFocus;
       end;
       end;

       IF CD = 'H' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CHEQUE.Value = 'S' THEN
       BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel12.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       END ELSE
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Cheque!';
       MSGI.ShowModal;
       EditCodigoCli.Clear;
       E_Nome.Clear;
       EditCodigoCli.SetFocus;
       end;
       end;

       IF CD = 'F' THEN BEGIN
       IF DM.SDS_CLIENTESPG_CHEQUE.Value = 'S' THEN
       BEGIN
       E_Nome.Text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       NovoProd.Enabled:= True;
       CancelaVenda.Enabled:= True;
       Panel12.Enabled:= True;
       Edit1.Color:= clWhite;
       E_Desconto.Color:= clWhite;
       EditN1.Color:= clWhite;
       EditN1.Text:= '1,00';
       E_Desconto.Font.Color:= clWindow;
       Edit1.SetFocus;
       END ELSE
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
       MSGI.ShowModal;
       EditCodigoCli.Clear;
       E_Nome.Clear;
       EditCodigoCli.SetFocus;
       end;
       end;}
end;

procedure TFormCupomFiscal.EditCodigoCliExit(Sender: TObject);
var
 texto : pansichar;
 CD: STRING;
 Achou: Boolean;
 Credito : Currency;
begin
CorSaida(Sender);

 if EditCodigoCli.Text = '' then
 begin
   EditCodigoCli.Text := '1';
   //Application.MESSAGEBOX('Informe o nome ou Codigo do cliente', 'Atenção', MB_ICONASTERISK + MB_OK + MB_DEFBUTTON2);
   EditCodigoCli.SetFocus;
 end else
 if EditCodigoCli.Text = ' ' then
 begin
   EditCodigoCli.Text := '1';
   EditCodigoCli.SetFocus;
 end else
  if EditCodigoCli.Text = '  ' then
 begin
   EditCodigoCli.Text := '1';
   EditCodigoCli.SetFocus;
 end else
  if EditCodigoCli.Text = '   ' then
 begin
   EditCodigoCli.Text := '1';
   EditCodigoCli.SetFocus;
 end else
  if EditCodigoCli.Text = '    ' then
 begin
   EditCodigoCli.Text := '1';
   EditCodigoCli.SetFocus;
 end else

 
 if EditCodigoCli.Text > '' then
  begin
  if edit4.Text='LETRAS' THEN

  BEGIN
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.ADD('select * from clientes where NOME_RS like ' + #39 + '%' + EditCodigoCli.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;

  ACHOU := DM.SDS_Clientes.locate('nome_rs',EditCodigoCli.Text,[loCaseInsensitive]);

  IF ACHOU=FALSE THEN
  begin
  EditCodigoCliButtonClick(sender);
  end;

  TRY
  IF ACHOU=TRUE THEN
  begin
       ClientDataSet2.Edit;
       EditCodigoCli.Text:=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
       E_Nome.Caption                  :=  DM.SDS_ClientesNOME_RS.AsString;
       ClientDataSet2NOME_CLIENTE.Text := DM.SDS_ClientesNOME_RS.AsString;
       ClientDataSet2ENDERECO.Text  := DM.SDS_ClientesENDERECO.AsString;
       ClientDataSet2CPF_CNPJ.Text  := DM.SDS_ClientesCPF_CNPJ.Text;
       ClientDataSet2RG_IE.Text     :=    DM.SDS_ClientesRG_IE.Text;
       ClientDataSet2FONE.Text      :=     DM.SDS_ClientesTELEFONE.Text;
       ClientDataSet2CIDADE.Text    :=   dm.SDS_ClientesCIDADE.AsString+'-'+DM.SDS_ClientesUF.AsString;
       ClientDataSet2BAIRRO.Text    :=   DM.Sds_clientesBairro.Text;
       ClientDataSet2uf.Text        :=  DM.SDS_ClientesUF.Text;
       ClientDataSet2CELULAR.Text   :=  DM.SDS_ClientesCELULAR.Text;
       ClientDataSet2COD_IBGE.Text  := DM.SDS_ClientesCOD_IBGE.Text;

      Edit1.SetFocus;
   end;
    except
     on E: EDatabaseError do
     ShowMessage(E.Message);

    end;
end else

IF EDIT4.Text='NUMEROS' THEN
BEGIN
 IF EditCodigoCli.text > '999999' then
begin
 //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 EditCodigoCli.Text := '1';
 EditCodigoCli.SetFocus;
end else

  //EditCodigoCli.Text := FormatFloat('0000',StrToFloat(EditCodigoCli.Text));
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.SQL.ADD('select * from clientes where CODIGO like ' + #39 + '%' + EditCodigoCli.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(EditCodigoCli.Text),[]);
  EditCodigoCli.Text := RemoveChar(EditCodigoCli.Text);


  Edit1.SetFocus;

IF ACHOU=FALSE THEN
begin
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EditCodigoCli.Text,[]);
SHOWMESSAGE('Codigo do Cliente Não Localizado');
EditCodigoCli.SetFocus;
end;


IF ACHOU=TRUE THEN
begin
       ClientDataSet2.Edit;
       E_Nome.Caption                  :=  DM.SDS_ClientesNOME_RS.AsString;
       ClientDataSet2NOME_CLIENTE.Text := DM.SDS_ClientesNOME_RS.AsString;
       ClientDataSet2ENDERECO.Text  := DM.SDS_ClientesENDERECO.AsString;
       ClientDataSet2CPF_CNPJ.Text  := DM.SDS_ClientesCPF_CNPJ.Text;
       ClientDataSet2RG_IE.Text     :=    DM.SDS_ClientesRG_IE.Text;
       ClientDataSet2FONE.Text      :=     DM.SDS_ClientesTELEFONE.Text;
       ClientDataSet2CIDADE.Text    :=   dm.SDS_ClientesCIDADE.AsString+'-'+DM.SDS_ClientesUF.AsString;
       ClientDataSet2BAIRRO.Text    :=   DM.Sds_clientesBairro.Text;
       ClientDataSet2uf.Text        :=  DM.SDS_ClientesUF.Text;
       ClientDataSet2CELULAR.Text   :=  DM.SDS_ClientesCELULAR.Text;
       ClientDataSet2COD_IBGE.Text  := DM.SDS_ClientesCOD_IBGE.Text;
       Edit1.SetFocus;
 end;
 end;
end;
      if DM.SDS_ClientesTESTA_LIMITE.Text = 'S' then
       begin
       If DM.SDS_CONFIGURACOESDEBITOS_CLIENTE.text = 'S' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := EditCodigoCli.Text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
      // Limite := (DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat - CurrencyEdit1.Value);
       Credito := (DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);
       IF Credito > 0 THEN
       begin
       FormDebitos :=nil;
       FormDebitos:=TFormDebitos.Create(self);
       FormDebitos.ShowModal;
       end;
       end;
       end;
     IF  dm.SDS_ClientesATIVO.AsString = 'B' then
     begin // bloqueado
       // texto := pansichar('Cliente com crédito Bloqueado!, não sera possivel continuar?');
        application.MessageBox('Cliente com crédito Bloqueado!','Atenção',MB_OKCANCEL+MB_ICONEXCLAMATION) ;
       EditCodigoCli.SetFocus;
        exit;
     end;

      IF  dm.SDS_Clientesativo.asstring = 'I' then
       begin // inativo
      //  texto := pansichar('Cliente INATIVO!, não sera possivel continuar?');
        application.MessageBox('Cliente INATIVO!, não sera possivel continuar?','Atenção',MB_OKCANCEL+MB_ICONEXCLAMATION) ;
        EditCodigoCli.SetFocus;
        exit;
       end;

      IF  dm.SDS_Clientes.FieldByName('ATIVO').AsString = 'S' then
      begin // spc
        application.messagebox('Desculpe! Cliente no SPC, Verifique!','Aviso',mb_ok+MB_ICONEXCLAMATION);
        EditCodigoCli.SetFocus;
        exit;
      end;

end;

procedure TFormCupomFiscal.ComboEdit1Enter(Sender: TObject);
begin
{CorEntrada(Sender);}
end;

procedure TFormCupomFiscal.EditCodigoCliEnter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormCupomFiscal.ComboEdit1Exit(Sender: TObject);
begin
{CorSaida(Sender);
DM.SDS_CondPagamento.Active:= True;
If  ComboEdit1.Text='' then
    Begin
    iRetorno := Bematech_FI_CancelaCupom();
    Analisa_iRetorno();
    Retorno_Impressora();
    CancelaVenda.Enabled:=FALSE;
    NovaVenda.Enabled:= TRUE;
    Total:=0;
    Soma:=0;
    Comissao:= 0;
    EncFinanceiro:= 0;
    Panel12.Enabled:= FALSE;
    Panel11.Enabled:= FALSE;
    Memo1.Color:= $00D7FFEB;
    ComboEdit1.Color:= $00D7FFEB;
    EditCodigoCli.Color:= $00D7FFEB;
    Edit2.Clear;
    NovaVenda.SetFocus;
    end else
If DM.SDS_CondPagamento.locate('CODIGO',ComboEdit1.Text,[])=True then
begin
        IF DM.SDS_CondPagamentoSTATUS.Value <> 'S' THEN
        BEGIN
        MSGA.Text:= 'Condição de Pagamento Inativa no Momento! Escolha Outra Condição de Pagmaneto!';
        MSGA.ShowModal;
        ComboEdit1.SetFocus;
        end else
        begin
        C_Pagamento.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
        ComboEdit1.Text:=DM.SDS_CondPagamento.Fieldbyname('CODIGO').AsString;
        CancelaVenda.Enabled:= True;
        ComboEdit1.Enabled:= false;
        ComboEdit1.Color:= clActiveBorder;
        EditCodigoCli.SetFocus;
        end;
end
else
begin
     MSGI.Text:= 'Código Invalido! Localizando Condições de Pagamento Cadastradas...';
     MSGI.ShowModal;
     FormConsCondPagamento:=TFormConsCondPagamento.Create(self);
     FormConsCondPagamento.ShowModal;

if DM.SDS_CondPagamento.RecordCount = 0 then
     begin
     MSGA.Text:= 'Não Existe Condição de Pagamento Cadastrada! Você Deve Cadastrar Uma Condição de Pagamento Para Continuar Com o Pedido!';
     MSGA.ShowModal;
     NovaVenda.Enabled:= TRUE;
     Close;
     end else
     begin

       IF DM.SDS_CondPagamentoSTATUS.Value <> 'S' THEN
        BEGIN
        MSGA.Text:= 'Condição de Pagamento Inativa no Momento! Escolha Outra Condição de Pagmaneto!';
        MSGA.ShowModal;
        ComboEdit1.SetFocus;
        end else
        begin
        C_Pagamento.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
        ComboEdit1.Text:=DM.SDS_CondPagamento.Fieldbyname('CODIGO').AsString;
        CancelaVenda.Enabled:= True;
        ComboEdit1.Enabled:= False;
        EditCodigoCli.SetFocus;
end;
end;
end; }
end;

procedure TFormCupomFiscal.ComboEdit1ButtonClick(Sender: TObject);
begin
{
     DM.SDS_CondPagamento.Active:= True;
     FormConsCondPagamento:=TFormConsCondPagamento.Create(self);
     FormConsCondPagamento.ShowModal;

     if DM.SDS_CondPagamento.RecordCount = 0 then
     begin
     MSGA.Text:= 'Não Existe Condição de Pagamento Cadastrada! Você Deve Cadastrar Uma Condição de Pagamento Para Continuar Com o Pedido!';
     MSGA.ShowModal;
     NovaVenda.Enabled:= TRUE;
     Close;
     end else
     begin

       IF DM.SDS_CondPagamentoSTATUS.Value <> 'S' THEN
        BEGIN
        MSGA.Text:= 'Condição de Pagamento Inativa no Momento! Escolha Outra Condição de Pagmaneto!';
        MSGA.ShowModal;
        end else
        begin
        C_Pagamento.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
        ComboEdit1.Text:=DM.SDS_CondPagamento.Fieldbyname('CODIGO').AsString;
        CancelaVenda.Enabled:= True;
        ComboEdit1.Enabled:= False;
        EditCodigoCli.SetFocus;
end;
end;  }
end;

procedure TFormCupomFiscal.Edit1Enter(Sender: TObject);
begin
//CorEntrada(Sender);
  Edit1.Color := clBlack;
  Editn1.Color := clBlack;
end;

procedure TFormCupomFiscal.Edit1Exit(Sender: TObject);
begin
//CorSaida(Sender); 
    if DM.SDS_CONFIGURACOESMODELO_ECF.text = '2' then
    begin
       if Edit1.Text > '' then
       if ACBrECF1.AchaICMSAliquota(sAliquota) = nil then
       BEGIN
        raise Exception.Create('Alicota '+sAliquota+' não encontrada');
        Edit1.SetFocus;
        end;
     end;
end;

procedure TFormCupomFiscal.EditN12Enter(Sender: TObject);
begin
EditN1.SelectAll;
end;

procedure TFormCupomFiscal.ConfPedidoClick(Sender: TObject);
var
   PG, CD : String;
   cFormaPgto      : String;
   cAcresDesc      : string;
   cTipoAcresDesc  : string;
   cValorAcresDesc : string;
   cValorPago      : String;
   cMsgPromocional : String;
   I, E, N:Integer;
   //desc : String;

DESCONT, VALDESCONT: DOUBLE;
begin
       ClientDataSet1.Last;

       ValCompra := ClientDataSet1Total.Value;
       Edit62.Text := FloattoStr(ValCompra);

       CPFCNPJ := ClientDataSet2CPF_CNPJ.Text;
       RGIE:= ClientDataSet2RG_IE.AsString;
       EnderComp:= ClientDataSet2ENDERECO.AsString +#13#10+'Bairro: '+ ClientDataSet2BAIRRO.AsString +' Cidade: '+ ClientDataSet2CIDADE.AsString+#13#10 + ClientDataSet2FONE.Text;

 if  ClientDataSet1.RecordCount = 0 then
  Begin
    Application.MESSAGEBOX('Não Há Itens na Lista de Compras! Você deve Inserir No Mínimo 01 Item Para Poder Concluir o Pedido !!!', 'Atenção', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1);
  end
  else
  begin
     TRY
       begin
          FormPedidoParcela:=TFormPedidoParcela.Create(self);
          FormPedidoParcela.Showmodal;
           ClientDataSet1.Edit;
           
          if DM.SDS_CONFIGURACOESABRE_VENDA.Text = 'S' then
          begin
           Edit1.Clear;
           edit1.SetFocus;
            ClientDataSet1.edit;
           end;
          end;
           Except
             ShowMessage('Erro ao Finalizar a venda....');
           end;

    end;
end;

procedure TFormCupomFiscal.E_UsuarioExit(Sender: TObject);
begin
corsaida(sender);
edit1.SetFocus;
end;

procedure TFormCupomFiscal.E_UsuarioEnter(Sender: TObject);
begin
corentrada(sender);
end;

procedure TFormCupomFiscal.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  ATIVO : string;
  balanca :Boolean;
begin
  N:= editn1.Text;
  ATIVO := 'A';
 //if formECF.ACBrECF1.Estado = estVenda then
 // begin
 if key =#13 then
 BEGIN
  Edit1.Text:= Trim(Edit1.Text);
   if edit7.Text='LETRAS' then
   BEGIN
      IF DM.SDS_CONFIGURACOESLEITOT_SERIAL.Text = 'S' then
      BEGIN
      ACBrLCB1.desAtivar;
      end else
      BEGIN
      ACBrLCB1.Desativar;
      end;
      FormConsProdutosVendas:=TFormConsProdutosVendas.Create(self);
      FormConsProdutosVendas.Edit1.Text := Edit1.Text;
      FormConsProdutosVendas.ShowModal;

       IF DM.SDS_CONFIGURACOESLEITOT_SERIAL.Text = 'S' then
       BEGIN
       ACBrLCB1.Ativar;
        end ;

      Edit1.Text := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
      Edit1.SelectAll;
   end else

   begin
    if N <> '0,000' then

    EDIT3.Clear;

    Edit3.Text := codigo_bar;

    CodigoPeso := WordsCount(Edit1.Text); // Conta digitos

    if Copy(edit1.Text, 01,01) = '2' Then  // verifica se o primeiro digito e dois ou seja Balança
    if CodigoPeso = 13 then    // se tem 13
    begin
    Edit3.Text    := (Copy(Edit1.Text, 02, 06));
    balanca := True;
    end else
    begin
    Edit3.Text := Edit1.Text;
    balanca := false;
    end;



   //  DM.Sds_produtos.Filtered := False;

   if not venda_aberta then // verificar se ha cupom em andamento
    begin

   // suiEdit1.text := '...........Abrindo Cupom........';

    NovaVendaClick(sender);

   // suiEdit1.text := '............V E N D A........';
   panel5.Visible := False;
   end;


   if Edit1.text = '' then exit;

   if  venda_aberta = True then
   begin
   if Edit1.text > '' then // verificar se ha cupom em andamento
   begin

    dm.SDS_PRODUTOS.Active := false;
    DM.Sds_produtos.sql.clear;
    DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit3.text + '%' + #39+'' + 'ORDER BY DESCRICAO');
    dm.SDS_PRODUTOS.Active := True;
    dm.SDS_PRODUTOS.Filtered := false;
    dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
    dm.SDS_PRODUTOS.Filtered := True;

    Qpromo.Close;
    Qpromo.Params.ParamByName('data').AsDate := Date;
    Qpromo.Params.ParamByName('cod_pro').AsInteger := DM.Sds_produtosCODIGO.AsInteger;
    Qpromo.Open;

    qrcaixa.Close;
    qrcaixa.Open;

    If qrcaixa.locate('CODIGO_BARRAS', Edit3.text, [])=True then
    begin
       xPreUnit      := qrcaixaPRECO_VENDA.AsFloat;
       Peso          := Peso / 100 / xPreUnit;
       Qtd_v         := FormatFloat('##0.000', peso);
       EditN1.text   := qtd_v;

        ClientDataSet1.Insert;
        A:= StrtoFloat(qrcaixa.FieldByName('VALOR_VENDA').AsString) / qrcaixa.FieldByName('QUANT_VENDA').AsInteger;
       // A:= ExatoCurrency(A,3);
        Percent:= StrtoFloat(qrcaixa.FieldByName('COMISSAO').AsString);
        B:= StrtoFloat(qrcaixa.FieldByName('QUANT_VENDA').AsString);
        //PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
        EF:= (A*PerEnc) / 100;
        UEF:= FormatFloat('##,##0.00',EF);
        EF:= StrToFloat(UEF);
        VF:= (A + EF);
        EncFin:= (EF * B);
        DESCONTO:= DESCONTO * B;
        Soma:=(A*B)+ EncFin;
        Total:=Total+(soma);
        Percent := (A*Percent /100);
        Comissao:= Comissao + (percent);
        EncFinanceiro:= EncFinanceiro + (EncFin);
        //Edit60.Text := FloattoStr(Total);
        Edit62.Text := FloattoStr(Total);
       // Edit60.Font.Color:= clBlue;
        Edit62.Font.Color:= clAqua;
        //E_Desconto.Font.Color:= clWindow;
        NValor:=1;
        NItem:=NItem+NValor;
        ClientDataset1.FieldByname('CodBarras').AsString:=(qrcaixa.FieldByName('Codigo_Barras').AsString);
        ClientDataset1.FieldByname('Codigo').AsInteger:=(qrcaixa.FieldByName('Codigo').AsInteger);
        ClientDataset1.FieldByname('Quantidade').Value:= qrcaixa.FieldByName('QUANT_VENDA').Value; //EditN1.Text;
        ClientDataset1.FieldByname('Descricao').AsString:=(qrcaixa.FieldByName('DESCRICAO').Text);
        ClientDataset1.FieldByname('abreviado').AsString:=(qrcaixa.FieldByName('abreviado').Text);
        ClientDataset1.FieldByname('Preco').Ascurrency:= A;//(qrcaixa.FieldByName('VALOR_VENDA').AsCurrency) / qrcaixa.FieldByName('QUANT_VENDA').AsInteger;
        ClientDataset1.FieldByname('Soma').AsFloat:=(Soma);
        ClientDataset1.FieldByname('Total').AsFloat:=(Total);
        ClientDataset1.FieldByname('Aliquota').AsString:=(qrcaixa.FieldByName('SIT_TRIBUTARIA').Text);
        ClientDataset1.FieldByname('Item').AsInteger:=(NItem);
        ClientDataset1.FieldByname('Desconto').AsFloat:= Desconto;
        ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
        ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
        ClientDataset1.FieldByname('Desc_Unidade').AsString:=(qrcaixa.FieldByName('Desc_Unidade').Text);
        ClientDataset1.FieldByname('prod_serv').AsString := qrcaixaPROD_SERV.Text;
        ClientDataset1.FieldByname('fracao').AsString := qrcaixaFRACAO.Text;
        ClientDataset1.FieldByname('cod_ncm').AsString := qrcaixaNCM_SH.Text;
        ClientDataset1.FieldByname('ESTOQUE').AsFloat:= qrcaixaESTOQUE.AsFloat;
        ClientDataset1.Post;
        EditN1.Text:= '1,000';

        VF := (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);

        sCodigo        := (ClientDataset1.FieldByname('CodBarras').AsString);
        sDescricao     :=  Formatar(ClientDataset1.FieldByname('Descricao').Text,25,true,' ');
        edit5.Text  := ClientDataset1.FieldByname('Aliquota').Text;
        if Edit6.Text = 'LETRAS' then
        begin
        sAliquota      :=  EDIT5.TEXT;
        END ELSE
        if Edit6.Text = 'NUMEROS' then
        begin
        sAliquota      :=  RemoveChar(ClientDataset1.FieldByname('Aliquota').Text);
        sAliquota      :=  Formatar(sAliquota,4,False,'0');
        end;
        sUnidade       := (ClientDataset1.FieldByname('Desc_Unidade').AsString);
        sTipoQtde      := 'F';
        sQtde          := FormatFloat('##,##0.000',B);
        sValor         := FormatFloat('##,##0.00',VF);
       // sQtde           :=  ClientDataset1.FieldByname('Quantidade').asString;
       // sValor          :=  ClientDataset1.FieldByname('Preco').AsString;
        sTipoDesconto  := '$';
        sValorDesc     := '0000';

       if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
       BEGIN
        iRetorno := Bematech_FI_VendeItem(PChar(sCodigo) , PChar(sDescricao), PChar(sAliquota),
        PChar(sTipoQtde), PChar(sQtde), 2, PChar(sValor), PChar(sTipoDesconto), PChar(sValorDesc));

        edit5.Text := PChar(sAliquota);
        Analisa_iRetorno();
        Retorno_Impressora();
        end;
       if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
       BEGIN
        VALORV:=  (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);
        EF:= (VALORV*PerEnc) / 100;
        VF:= (Valorv + EF);

        sCodigo        := (ClientDataset1.FieldByname('CodBarras').AsString);
        sDescricao     := (ClientDataset1.FieldByname('Descricao').AsString);
        sAliquota      := (ClientDataset1.FieldByname('Aliquota').AsString);
        sUnidade       := (ClientDataset1.FieldByname('Desc_Unidade').AsString);
        sTipoQtde      := 'F';
       // sQtde          := FormatFloat('##,##0.000',B);
        //sValor         := FormatFloat('##,##0.00',VF);
        sQtde           :=  ClientDataset1.FieldByname('Quantidade').asString;
        sValor          :=  ClientDataset1.FieldByname('Preco').AsString;
        sTipoDesconto  := '$';
        Desc := '$';

        sValorDesc     := FormatFloat('0',Desconto);


        ACBrECF1.VendeItem( sCodigo, sDescricao,
                               sAliquota, StrToFloatDef( sQtde, 0.000),
                               StrToFloatDef( svalor, 0.00),
                               StrToFloatDef( sValorDesc, 0 ), sUnidade,
                               Desc);
        end;

        Edit1.clear;
       // E_Desconto.Clear;
        EditN1.Text:= '1,000';
        //ConfPedido.Enabled:= False;
        CancelaItem.Enabled:= True;
        DBGrid1.Enabled:= True;
        edit1.Clear;
        Edit1.SetFocus;
        Edit62.Text := FloattoStr(Total); //ClientDataset1.FieldByname('Valor_Total').Text;
     Exit;
    end;

     If not ((DM.Sds_produtos.locate('CODIGO_BARRAS', Edit3.text, [])) OR (qrcaixa.locate('CODIGO_BARRAS', Edit3.text, []))) = True then
      begin
      //  MessageDlg( 'Codigo do Produto não Cadastrado ou não Localizado..',mtInformation,[mbOK],2);
        Application.MESSAGEBOX('Codigo do Produto não Cadastrado ou não Localizado..', 'Aviso...', MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
        Edit1.SetFocus;
        Edit1.Clear;
        Edit1.SelectAll;
        Exit;
      end;

       // LE SE PRODUTO É DE BALANCA
      if balanca = True then
      begin
      CodigoPeso := WordsCount(Edit1.Text); // Conta digitos

      if Copy(edit1.Text, 01,01) = '2' Then  // verifica se o primeiro digito e dois ou seja Balança
      if CodigoPeso = 13 then    // se tem 13
      begin
       EDIT3.Clear;
       Edit3.Text    := (Copy(Edit1.Text, 02, 06));
       Peso          := StrToFloat(Copy(Edit1.Text, 08, 05));
       // Codprod    := StrToInt(Copy(Edit1.Text, 03, 05));
       codigo_bar    := (Copy(Edit1.Text, 02, 06));

      dm.SDS_PRODUTOS.Active := false;
      DM.Sds_produtos.sql.clear;
      DM.Sds_produtos.sql.add('select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit3.text + '%' + #39+'' +'ORDER BY DESCRICAO');
      dm.SDS_PRODUTOS.Active := True;

      If DM.Sds_produtos.locate('CODIGO_BARRAS',Edit3.text, [])=True then
      begin

       if DM.SDS_CONFIGURACOESUSA_FRACAO.text = 'N' then
       begin
       estoque := DM.Sds_produtosESTOQUE.AsFloat;
       quantidade := strtofloat(editn1.text);
       saldo := (estoque - quantidade);

         if DM.SDS_CONFIGURACOESestoque_negativo.text = 'N' then
          If saldo <= -1 then
            begin
             saldo1 := FloatToStr(saldo);
             MessageDlg( 'Não Há Saldo Suficiente em Estoque:  Saldo = '+saldo1, mtInformation,[mbOK],0);
             //DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
             Exit;
             abort;
             edit1.setfocus;
            end;
       end else

       if DM.SDS_CONFIGURACOESUSA_FRACAO.text = 'S' then
       begin
       estoque := DM.SDS_PRODUTOSESTOQUE_FRACAO.AsFloat;
       quantidade := strtofloat(editn1.text);
       saldo := (estoque - quantidade);

          if DM.SDS_CONFIGURACOESestoque_negativo.text = 'N' then
          If saldo <= -1 then
            begin
              saldo1 := FloatToStr(saldo);
              MessageDlg( 'Não Há Saldo Suficiente em Estoque: Saldo = '+saldo1, mtInformation,[mbOK],0);
              Exit;
              abort;
              edit1.setfocus;
            end;
       end;

       if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
       BEGIN
       xPreUnit      := DM.Sds_produtosPRECO_VENDA.AsFloat;
       Peso          := Peso / 100 / xPreUnit;
       Qtd_v         := FormatFloat('##0.000', peso);
       EditN1.text   := qtd_v;

        ClientDataSet1.Insert;
        A:=StrtoFloat(DM.Sds_produtos.FieldByName('PRECO_VENDA').AsString);
        Percent:= StrtoFloat(DM.Sds_produtos.FieldByName('COMISSAO').AsString);
        B:= StrtoFloat(EditN1.Text);
        //PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
        EF:= (A*PerEnc) / 100;
        UEF:= FormatFloat('##,##0.00',EF);
        EF:= StrToFloat(UEF);
        VF:= (A + EF);
        EncFin:= (EF * B);
        DESCONTO:= DESCONTO * B;
        Soma:=(A*B)+ EncFin;
        Total:=Total+(soma);
        Percent := (A*Percent /100);
        Comissao:= Comissao + (percent);
        EncFinanceiro:= EncFinanceiro + (EncFin);
        //Edit60.Text := FloattoStr(Total);
        Edit62.Text := FloattoStr(Total);
       // Edit60.Font.Color:= clBlue;
        Edit62.Font.Color:= clAqua;
        //E_Desconto.Font.Color:= clWindow;
        NValor:=1;
        NItem:=NItem+NValor;
        ClientDataset1.FieldByname('CodBarras').AsString:=(DM.Sds_produtos.FieldByName('Codigo_Barras').AsString);
        ClientDataset1.FieldByname('Codigo').AsInteger:=(DM.Sds_produtos.FieldByName('Codigo').AsInteger);
        ClientDataset1.FieldByname('Quantidade').Value:= EditN1.Text;
        ClientDataset1.FieldByname('Descricao').AsString:=(DM.Sds_produtos.FieldByName('DESCRICAO').Text);
        ClientDataset1.FieldByname('abreviado').AsString:=(DM.Sds_produtos.FieldByName('abreviado').Text);
        if Qpromo.RecordCount > 0 then
        ClientDataset1.FieldByname('Preco').Ascurrency:=  QpromoPRECO_PROMOCAO.AsCurrency
        else
        ClientDataset1.FieldByname('Preco').Ascurrency:=(DM.Sds_produtos.FieldByName('PRECO_VENDA').AsCurrency);
        ClientDataset1.FieldByname('Soma').AsFloat:=(Soma);
        ClientDataset1.FieldByname('Total').AsFloat:=(Total);
        ClientDataset1.FieldByname('Aliquota').AsString:=(DM.Sds_produtos.FieldByName('SIT_TRIBUTARIA').Text);
        ClientDataset1.FieldByname('Item').AsInteger:=(NItem);
        ClientDataset1.FieldByname('Desconto').AsFloat:= Desconto;
        ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
        ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
        ClientDataset1.FieldByname('Desc_Unidade').AsString:=(DM.Sds_produtos.FieldByName('Desc_Unidade').Text);
        ClientDataset1.FieldByname('prod_serv').AsString := DM.Sds_produtosPROD_SERV.Text;
        ClientDataset1.FieldByname('fracao').AsString := DM.Sds_produtosFRACAO.Text;
        ClientDataset1.FieldByname('cod_ncm').AsString := DM.Sds_produtosNCM_SH.Text;
        ClientDataset1.FieldByname('ESTOQUE').AsFloat:= DM.Sds_produtosESTOQUE.AsFloat;
        ClientDataset1.Post;
        EditN1.Text:= '1,000';

       VF := (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);

        sCodigo        := (ClientDataset1.FieldByname('CodBarras').AsString);
        sDescricao     :=  Formatar(ClientDataset1.FieldByname('Descricao').Text,25,true,' ');
        edit5.Text  := ClientDataset1.FieldByname('Aliquota').Text;
        if Edit6.Text = 'LETRAS' then
        begin
        sAliquota      :=  EDIT5.TEXT;
        END ELSE
        if Edit6.Text = 'NUMEROS' then
        begin
        sAliquota      :=  RemoveChar(ClientDataset1.FieldByname('Aliquota').Text);
        sAliquota      :=  Formatar(sAliquota,4,False,'0');
        end;
        sUnidade       := (ClientDataset1.FieldByname('Desc_Unidade').AsString);
        sTipoQtde      := 'F';
        sQtde          := FormatFloat('##,##0.000',B);
        sValor         := FormatFloat('##,##0.00',VF);
       // sQtde           :=  ClientDataset1.FieldByname('Quantidade').asString;
       // sValor          :=  ClientDataset1.FieldByname('Preco').AsString;
        sTipoDesconto  := '$';
        sValorDesc     := '0000';

        iRetorno := Bematech_FI_VendeItem(PChar(sCodigo) , PChar(sDescricao), PChar(sAliquota),
        PChar(sTipoQtde), PChar(sQtde), 2, PChar(sValor), PChar(sTipoDesconto), PChar(sValorDesc));

        edit5.Text := PChar(sAliquota);
        Analisa_iRetorno();
        Retorno_Impressora();

        Edit1.clear;
       // E_Desconto.Clear;
        EditN1.Text:= '1,000';
        //ConfPedido.Enabled:= False;
        CancelaItem.Enabled:= True;
        DBGrid1.Enabled:= True;
        edit1.Clear;
        Edit1.SetFocus;
        Edit62.Text := FloattoStr(Total) //ClientDataset1.FieldByname('Valor_Total').Text;
        end else

       if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
       BEGIN

       xPreUnit      := DM.Sds_produtosPRECO_VENDA.AsFloat;
       Peso          := Peso / 100 / xPreUnit;
       Qtd_v         := FormatFloat('##0.000', peso);
       EditN1.text   := qtd_v;

        ClientDataSet1.Insert;
        A:=StrtoFloat(DM.Sds_produtos.FieldByName('PRECO_VENDA').AsString);
        Percent:= StrtoFloat(DM.Sds_produtos.FieldByName('COMISSAO').AsString);
        B:= StrtoFloat(EditN1.Text);
        //PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
        EF:= (A*PerEnc) / 100;
        UEF:= FormatFloat('##,##0.00',EF);
        EF:= StrToFloat(UEF);
        VF:= (A + EF);
        EncFin:= (EF * B);
        DESCONTO:= DESCONTO * B;
        Soma:=(A*B)+ EncFin;
        Total:=Total+(soma);
        Percent := (A*Percent /100);
        Comissao:= Comissao + (percent);
        EncFinanceiro:= EncFinanceiro + (EncFin);
        //Edit60.Text := FloattoStr(Total);
        Edit62.Text := FloattoStr(Total);
       // Edit60.Font.Color:= clBlue;
        Edit62.Font.Color:= clAqua;
        //E_Desconto.Font.Color:= clWindow;
        NValor:=1;
        NItem:=NItem+NValor;
        ClientDataset1.FieldByname('CodBarras').AsString:=(DM.Sds_produtos.FieldByName('Codigo_Barras').AsString);
        ClientDataset1.FieldByname('Codigo').AsInteger:=(DM.Sds_produtos.FieldByName('Codigo').AsInteger);
        ClientDataset1.FieldByname('Quantidade').Value:= EditN1.Text;
        ClientDataset1.FieldByname('Descricao').AsString:=(DM.Sds_produtos.FieldByName('DESCRICAO').Text);
        ClientDataset1.FieldByname('abreviado').AsString:=(DM.Sds_produtos.FieldByName('abreviado').Text);
        if Qpromo.RecordCount > 0 then
        ClientDataset1.FieldByname('Preco').Ascurrency:=  QpromoPRECO_PROMOCAO.AsCurrency
        else
        ClientDataset1.FieldByname('Preco').Ascurrency:=(DM.Sds_produtos.FieldByName('PRECO_VENDA').AsCurrency);
        ClientDataset1.FieldByname('Soma').AsFloat:=(Soma);
        ClientDataset1.FieldByname('Total').AsFloat:=(Total);
        ClientDataset1.FieldByname('Aliquota').AsString:=(DM.Sds_produtos.FieldByName('SIT_TRIBUTARIA').Text);
        ClientDataset1.FieldByname('Item').AsInteger:=(NItem);
        ClientDataset1.FieldByname('Desconto').AsFloat:= Desconto;
        ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
        ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
        ClientDataset1.FieldByname('Desc_Unidade').AsString:=(DM.Sds_produtos.FieldByName('Desc_Unidade').Text);
        ClientDataset1.FieldByname('prod_serv').AsString := DM.Sds_produtosPROD_SERV.Text;
        ClientDataset1.FieldByname('fracao').AsString := DM.Sds_produtosFRACAO.Text;
        ClientDataset1.FieldByname('cod_ncm').AsString := DM.Sds_produtosNCM_SH.Text;
        ClientDataset1.FieldByname('ESTOQUE').AsFloat:= DM.Sds_produtosESTOQUE.AsFloat;
        ClientDataset1.Post;
        EditN1.Text:= '1,000';

        VALORV:=  (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);
        EF:= (VALORV*PerEnc) / 100;
        VF:= (Valorv + EF);

        sCodigo        := (ClientDataset1.FieldByname('CodBarras').AsString);
        sDescricao     := (ClientDataset1.FieldByname('Descricao').AsString);
        sAliquota      := (ClientDataset1.FieldByname('Aliquota').AsString);
        sUnidade       := (ClientDataset1.FieldByname('Desc_Unidade').AsString);
        sTipoQtde      := 'F';
       // sQtde          := FormatFloat('##,##0.000',B);
        //sValor         := FormatFloat('##,##0.00',VF);
        sQtde           :=  ClientDataset1.FieldByname('Quantidade').asString;
        sValor          :=  ClientDataset1.FieldByname('Preco').AsString;
        sTipoDesconto  := '$';
        Desc := '$';

        sValorDesc     := FormatFloat('0',Desconto);


        ACBrECF1.VendeItem( sCodigo, sDescricao,
                               sAliquota, StrToFloatDef( sQtde, 0.000),
                               StrToFloatDef( svalor, 0.00),
                               StrToFloatDef( sValorDesc, 0 ), sUnidade,
                               Desc);
        Edit1.clear;
       // E_Desconto.Clear;
        EditN1.Text:= '1,000';
        //ConfPedido.Enabled:= False;
        CancelaItem.Enabled:= True;
        DBGrid1.Enabled:= True;
        edit1.Clear;
        Edit1.SetFocus;
        Edit62.Text := FloattoStr(Total) //ClientDataset1.FieldByname('Valor_Total').Text;
        end else

       if (DM.SDS_CONFIGURACOESMODELO_ECF.Text = '3') or (DM.SDS_CONFIGURACOESMODELO_ECF.Text = '4') then
       BEGIN
       xPreUnit      := DM.Sds_produtosPRECO_VENDA.AsFloat;
       Peso          := Peso / 100 / xPreUnit;
       Qtd_v         := FormatFloat('##0.000', peso);
       EditN1.text   := qtd_v;

        ClientDataSet1.Insert;
        A:=StrtoFloat(DM.Sds_produtos.FieldByName('PRECO_VENDA').AsString);
        Percent:= StrtoFloat(DM.Sds_produtos.FieldByName('COMISSAO').AsString);
        B:= StrtoFloat(EditN1.Text);
        //PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
        EF:= (A*PerEnc) / 100;
        UEF:= FormatFloat('##,##0.00',EF);
        EF:= StrToFloat(UEF);
        VF:= (A + EF);
        EncFin:= (EF * B);
        DESCONTO:= DESCONTO * B;
        Soma:=(A*B)+ EncFin;
        Total:=Total+(soma);
        Percent := (A*Percent /100);
        Comissao:= Comissao + (percent);
        EncFinanceiro:= EncFinanceiro + (EncFin);
        //Edit60.Text := FloattoStr(Total);
        Edit62.Text := FloattoStr(Total);
       // Edit60.Font.Color:= clBlue;
        Edit62.Font.Color:= clAqua;
        //E_Desconto.Font.Color:= clWindow;
        NValor:=1;
        NItem:=NItem+NValor;
        ClientDataset1.FieldByname('CodBarras').AsString:=(DM.Sds_produtos.FieldByName('Codigo_Barras').AsString);
        ClientDataset1.FieldByname('Codigo').AsInteger:=(DM.Sds_produtos.FieldByName('Codigo').AsInteger);
        ClientDataset1.FieldByname('Quantidade').Value:= EditN1.Text;
        ClientDataset1.FieldByname('Descricao').AsString:=(DM.Sds_produtos.FieldByName('DESCRICAO').Text);
        ClientDataset1.FieldByname('abreviado').AsString:=(DM.Sds_produtos.FieldByName('abreviado').Text);
        if Qpromo.RecordCount > 0 then
        ClientDataset1.FieldByname('Preco').Ascurrency:=     QpromoPRECO_PROMOCAO.AsCurrency
        else
        ClientDataset1.FieldByname('Preco').Ascurrency:=(DM.Sds_produtos.FieldByName('PRECO_VENDA').AsCurrency);
        ClientDataset1.FieldByname('Soma').AsFloat:=(Soma);
        ClientDataset1.FieldByname('Total').AsFloat:=(Total);
        ClientDataset1.FieldByname('Aliquota').AsString:=(DM.Sds_produtos.FieldByName('SIT_TRIBUTARIA').Text);
        ClientDataset1.FieldByname('Item').AsInteger:=(NItem);
        ClientDataset1.FieldByname('Desconto').AsFloat:= Desconto;
        ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
        ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
        ClientDataset1.FieldByname('Desc_Unidade').AsString:=(DM.Sds_produtos.FieldByName('Desc_Unidade').Text);
        ClientDataset1.FieldByname('prod_serv').AsString := DM.Sds_produtosPROD_SERV.Text;
        ClientDataset1.FieldByname('fracao').AsString := DM.Sds_produtosFRACAO.Text;
        ClientDataset1.FieldByname('cod_ncm').AsString := DM.Sds_produtosNCM_SH.Text;
        ClientDataset1.FieldByname('ESTOQUE').AsFloat:= DM.Sds_produtosESTOQUE.AsFloat;
        ClientDataset1.Post;
        EditN1.Text:= '1,000';

       VF := (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);

        sCodigo        := (ClientDataset1.FieldByname('CodBarras').AsString);
        sDescricao     :=  Formatar(ClientDataset1.FieldByname('Descricao').Text,25,true,' ');
        edit5.Text  := ClientDataset1.FieldByname('Aliquota').Text;
        if Edit6.Text = 'LETRAS' then
        begin
        sAliquota      :=  EDIT5.TEXT;
        END ELSE
        if Edit6.Text = 'NUMEROS' then
        begin
        sAliquota      :=  RemoveChar(ClientDataset1.FieldByname('Aliquota').Text);
        sAliquota      :=  Formatar(sAliquota,4,False,'0');
        end;
        sUnidade       := (ClientDataset1.FieldByname('Desc_Unidade').AsString);
        sTipoQtde      := 'F';
        sQtde          := FormatFloat('##,##0.000',B);
        sValor         := FormatFloat('##,##0.00',VF);
       // sQtde           :=  ClientDataset1.FieldByname('Quantidade').asString;
       // sValor          :=  ClientDataset1.FieldByname('Preco').AsString;
        sTipoDesconto  := '$';
        sValorDesc     := '0000';

       { iRetorno := Bematech_FI_VendeItem(PChar(sCodigo) , PChar(sDescricao), PChar(sAliquota),
        PChar(sTipoQtde), PChar(sQtde), 2, PChar(sValor), PChar(sTipoDesconto), PChar(sValorDesc));

        edit5.Text := PChar(sAliquota);
        Analisa_iRetorno();
        Retorno_Impressora();   }

        Edit1.clear;
       // E_Desconto.Clear;
        EditN1.Text:= '1,000';
        //ConfPedido.Enabled:= False;
        CancelaItem.Enabled:= True;
        DBGrid1.Enabled:= True;
        edit1.Clear;
        Edit1.SetFocus;
        Edit62.Text := FloattoStr(Total) //ClientDataset1.FieldByname('Valor_Total').Text;
        end;


       end;
       end;

     end else
     
    if balanca = False then
    begin
    If DM.Sds_produtos.locate('CODIGO_BARRAS', Edit3.text, [])=True then
    begin
       if DM.SDS_CONFIGURACOESUSA_FRACAO.text = 'N' then
       begin
       estoque := DM.Sds_produtosESTOQUE.AsFloat;
       quantidade := strtofloat(editn1.text);
       saldo := (estoque - quantidade);

         if DM.SDS_CONFIGURACOESestoque_negativo.text = 'N' then
          If saldo <= -1 then
            begin
             saldo1 := FloatToStr(saldo);
             MessageDlg( 'Não Há Saldo Suficiente em Estoque:  Saldo = '+saldo1, mtInformation,[mbOK],0);
             Exit;
             abort;
             edit1.setfocus;
            end;
       end else

       if DM.SDS_CONFIGURACOESUSA_FRACAO.text = 'S' then
       begin
       estoque := DM.SDS_PRODUTOSESTOQUE_FRACAO.AsFloat;
       quantidade := strtofloat(editn1.text);
       saldo := (estoque - quantidade);

          if DM.SDS_CONFIGURACOESestoque_negativo.text = 'N' then
          If saldo <= -1 then
            begin
              saldo1 := FloatToStr(saldo);
              MessageDlg( 'Não Há Saldo Suficiente em Estoque: Saldo = '+saldo1, mtInformation,[mbOK],0);
              Exit;
              abort;
              edit1.setfocus;
            end;
       end;
    end;
      
     IF DM.SDS_CONFIGURACOESMODELO_ECF.TEXT ='2' then
     begin
        IF RbPreco1.Checked = True THEN
        begin
        if (DM.Sds_produtosPRECO_VENDA.asfloat <= 0) then
        begin
        MessageDlg('Valor do Produto não pode ser Zero Favor Corrigir..',mtInformation,[mbOK],0);
        Edit1.SetFocus;
        Edit1.SelectAll;
        end else

        IF RbPreco1.Checked = True THEN
        begin
        if (DM.Sds_produtosPRECO_VENDA.AsFloat > 0 )  then
        BEGIN
        ClientDataSet1.Insert;
        A:=StrtoFloat(DM.Sds_produtos.FieldByName('PRECO_VENDA').AsString);
        Percent:= StrtoFloat(DM.Sds_produtos.FieldByName('COMISSAO').AsString);
        B:= StrtoFloat(EditN1.Text);
       // PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
        EF:= (A*PerEnc) / 100;
        UEF:= FormatFloat('##,##0.00',EF);
        EF:= StrToFloat(UEF);
        VF:= (A + EF);
        EncFin:= (EF * B);
        DESCONTO:= DESCONTO * B;
        Soma:=(A*B)+ EncFin;
        Total:=Total+(soma);
        Percent := (A*Percent /100);
        Comissao:= Comissao + (percent);
        EncFinanceiro:= EncFinanceiro + (EncFin);
//        Edit60.Text := FloattoStr(Total);

//        Edit60.Font.Color:= clBlue;
        Edit62.Font.Color:= clAqua;
        //E_Desconto.Font.Color:= clWindow;

        NValor:=1;
        NItem:=NItem+NValor;
        ClientDataset1.FieldByname('CodBarras').AsString:=(Edit1.Text);
        ClientDataset1.FieldByname('Codigo').AsInteger:=(DM.Sds_produtos.FieldByName('Codigo').AsInteger);
        ClientDataset1.FieldByname('Quantidade').Value:= EditN1.Text;
        ClientDataset1.FieldByname('Descricao').AsString:=(DM.Sds_produtos.FieldByName('DESCRICAO').Text);
        ClientDataset1.FieldByname('abreviado').AsString:=(DM.Sds_produtos.FieldByName('abreviado').Text);
        if Qpromo.RecordCount > 0 then
        ClientDataset1.FieldByname('Preco').Ascurrency:=   QpromoPRECO_PROMOCAO.AsCurrency
        else
        ClientDataset1.FieldByname('Preco').Ascurrency:=(DM.Sds_produtos.FieldByName('PRECO_VENDA').AsCurrency);
        ClientDataset1.FieldByname('Soma').AsFloat:=(Soma);
        ClientDataset1.FieldByname('Total').AsFloat:=(Total);
        ClientDataset1.FieldByname('Aliquota').AsString:=(DM.Sds_produtos.FieldByName('SIT_TRIBUTARIA').Text);
        ClientDataset1.FieldByname('Item').AsInteger:=(NItem);
        ClientDataset1.FieldByname('Desconto').AsFloat:= Desconto;
        ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
        ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
        ClientDataset1.FieldByname('Desc_Unidade').AsString:=(DM.Sds_produtos.FieldByName('Desc_Unidade').Text);
        ClientDataset1.FieldByname('prod_serv').AsString := DM.Sds_produtosPROD_SERV.Text;
        ClientDataset1.FieldByname('fracao').AsString := DM.Sds_produtosFRACAO.Text;
        ClientDataset1.FieldByname('cod_ncm').AsString := DM.Sds_produtosNCM_SH.Text;
        ClientDataset1.FieldByname('ESTOQUE').AsFloat:= DM.Sds_produtosESTOQUE.AsFloat;
        ClientDataset1.Post;
        EditN1.Text:= '1,000';

        //Desconto := ClientDataset1.FieldByname('Desconto').AsFloat;
        VALORV:=  (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);
        EF:= (VALORV*PerEnc) / 100;
        VF:= (Valorv + EF);

        sCodigo        := (ClientDataset1.FieldByname('CodBarras').AsString);
        sDescricao     := (ClientDataset1.FieldByname('Descricao').AsString);
        sAliquota      := (ClientDataset1.FieldByname('Aliquota').AsString);
        sUnidade       := (ClientDataset1.FieldByname('Desc_Unidade').AsString);
        sTipoQtde      := 'F';
       // sQtde          := FormatFloat('##,##0.000',B);
        //sValor         := FormatFloat('##,##0.00',VF);
        sQtde           :=  ClientDataset1.FieldByname('Quantidade').asString;
        sValor          :=  ClientDataset1.FieldByname('Preco').AsString;
        sTipoDesconto  := '$';
        Desc := '$' ;

        sValorDesc     := FormatFloat('0',Desconto);


        ACBrECF1.VendeItem( sCodigo, sDescricao,
                               sAliquota, StrToFloatDef( sQtde, 0.000),
                               StrToFloatDef( sValor , 0.00 ),
                               StrToFloatDef( sValorDesc, 0 ), sUnidade,
                               Desc);


        Edit1.clear;
       // E_Desconto.Clear;
        EditN1.Text:= '1,000';
       // ConfPedido.Enabled:= False;
        CancelaItem.Enabled:= True;
        DBGrid1.Enabled:= True;
        edit1.Clear;
        Edit1.SetFocus;
        Edit62.Text :=FloattoStr(Total); // ClientDataset1.FieldByname('Valor_Total').Text; //;
        end;
        end;
        end;


      IF RbPreco2.Checked = True THEN
      BEGIN
        if (DM.Sds_produtosPRECO_VENDA2.AsFloat <= 0)  then
        begin
        MessageDlg('Valor do Produto não pode ser Zero Favor Corrigir..',mtInformation,[mbOK],0);
        Edit1.SetFocus;
        end else

        if (DM.Sds_produtosPRECO_VENDA2.AsFloat > 0)   then
        begin
        ClientDataSet1.Insert;
        A:=StrtoFloat(DM.Sds_produtos.FieldByName('PRECO_VENDA2').AsString);
        Percent:= StrtoFloat(DM.Sds_produtos.FieldByName('COMISSAO').AsString);
        B:= StrtoFloat(EditN1.Text);
       // PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
        EF:= (A*PerEnc) / 100;
        UEF:= FormatFloat('##,##0.00',EF);
        EF:= StrToFloat(UEF);
        VF:= (A + EF);
        EncFin:= (EF * B);
        DESCONTO:= DESCONTO * B;
        Soma:=(A*B)+ EncFin;
        Total:=Total+(soma);
        Percent := (A*Percent /100);
        Comissao:= Comissao + (percent);
        EncFinanceiro:= EncFinanceiro + (EncFin);
//        Edit60.Text := FloattoStr(Total);
       // Edit62.Text := FloattoStr(Total);
//        Edit60.Font.Color:= clBlue;
        Edit62.Font.Color:= clAqua;
        //E_Desconto.Font.Color:= clWindow;

        NValor:=1;
        NItem:=NItem+NValor;
        ClientDataset1.FieldByname('CodBarras').AsString:=(Edit1.Text);
        ClientDataset1.FieldByname('Codigo').AsInteger:=(DM.Sds_produtos.FieldByName('Codigo').AsInteger);
        ClientDataset1.FieldByname('Quantidade').Value:= EditN1.Text;
        ClientDataset1.FieldByname('Descricao').AsString:=(DM.Sds_produtos.FieldByName('DESCRICAO').Text);
        ClientDataset1.FieldByname('abreviado').AsString:=(DM.Sds_produtos.FieldByName('abreviado').Text);
        if Qpromo.RecordCount > 0 then
        ClientDataset1.FieldByname('Preco').Ascurrency:=   QpromoPRECO_PROMOCAO.AsCurrency
        else
        ClientDataset1.FieldByname('Preco').Ascurrency:=(DM.Sds_produtos.FieldByName('PRECO_VENDA2').AsCurrency);
        ClientDataset1.FieldByname('Soma').AsFloat:=(Soma);
        ClientDataset1.FieldByname('Total').AsFloat:=(Total);
        ClientDataset1.FieldByname('Aliquota').AsString:=(DM.Sds_produtos.FieldByName('SIT_TRIBUTARIA').Text);
        ClientDataset1.FieldByname('Item').AsInteger:=(NItem);
        ClientDataset1.FieldByname('Desconto').AsFloat:= Desconto;
        ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
        ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
        ClientDataset1.FieldByname('Desc_Unidade').AsString:=(DM.Sds_produtos.FieldByName('Desc_Unidade').Text);
        ClientDataset1.FieldByname('prod_serv').AsString := DM.Sds_produtosPROD_SERV.Text;
        ClientDataset1.FieldByname('fracao').AsString := DM.Sds_produtosFRACAO.Text;
        ClientDataset1.FieldByname('cod_ncm').AsString := DM.Sds_produtosNCM_SH.Text;
        ClientDataset1.FieldByname('ESTOQUE').AsFloat:= DM.Sds_produtosESTOQUE.AsFloat;
        ClientDataset1.Post;
        EditN1.Text:= '1,000';

        //Desconto := ClientDataset1.FieldByname('Desconto').AsFloat;
        VALORV:=  (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);
        EF:= (VALORV*PerEnc) / 100;
        VF:= (Valorv + EF);

        sCodigo        := (ClientDataset1.FieldByname('CodBarras').AsString);
        sDescricao     := (ClientDataset1.FieldByname('Descricao').AsString);
        sAliquota      := (ClientDataset1.FieldByname('Aliquota').AsString);
        sUnidade       := (ClientDataset1.FieldByname('Desc_Unidade').AsString);
        sTipoQtde      := 'F';
        //sQtde          := FormatFloat('##,##0.000',B);
       // sValor         := FormatFloat('##,##0.00',VF);
        sQtde           :=  ClientDataset1.FieldByname('Quantidade').asString;
        sValor          :=  ClientDataset1.FieldByname('Preco').AsString;
        sTipoDesconto  := '$';
        Desc := '$' ;

        sValorDesc     := FormatFloat('0',Desconto);


        ACBrECF1.VendeItem( sCodigo, sDescricao,
                               sAliquota, StrToFloatDef( sQtde, 0.000),
                               StrToFloatDef( sValor , 0.00 ),
                               StrToFloatDef( sValorDesc, 0 ), sUnidade,
                               Desc);


        Edit1.clear;
       // E_Desconto.Clear;
        EditN1.Text:= '1,000';
       // ConfPedido.Enabled:= False;
        CancelaItem.Enabled:= True;
        DBGrid1.Enabled:= True;
        edit1.Clear;
        Edit1.SetFocus;
        Edit62.Text := FloattoStr(Total); //ClientDataset1.FieldByname('Valor_Total').Text;
        end;
        end;
        end ELSE

       IF DM.SDS_CONFIGURACOESMODELO_ECF.TEXT = '1' then
       BEGIN
       IF RbPreco1.Checked = True THEN
       begin
          if (DM.Sds_produtosPRECO_VENDA.AsFloat <= 0) then
          begin
          MessageDlg('Valor do Produto não pode ser Zero Favor Corrigir..',mtInformation,[mbOK],0);
          Edit1.SetFocus;
          Edit1.SelectAll;
          end ELSE


        IF RbPreco1.Checked = True THEN
        begin
        if (DM.Sds_produtosPRECO_VENDA.AsFloat > 0)   then
        BEGIN
        ClientDataSet1.Insert;
        A:=StrtoFloat(DM.Sds_produtos.FieldByName('PRECO_VENDA').AsString);
        Percent:= StrtoFloat(DM.Sds_produtos.FieldByName('COMISSAO').AsString);
        B:= StrtoFloat(EditN1.Text);
       // PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
        EF:= (A*PerEnc) / 100;
        UEF:= FormatFloat('##,##0.00',EF);
        EF:= StrToFloat(UEF);
        VF:= (A + EF);
        EncFin:= (EF * B);
        DESCONTO:= DESCONTO * B;
        Soma:=(A*B)+ EncFin;
        Total:=Total+(soma);
        Percent := (A*Percent /100);
        Comissao:= Comissao + (percent);
        EncFinanceiro:= EncFinanceiro + (EncFin);
//        Edit60.Text := FloattoStr(Total);

//        Edit60.Font.Color:= clBlue;
        Edit62.Font.Color:= clAqua;
        //E_Desconto.Font.Color:= clWindow;

        NValor:=1;
        NItem:=NItem+NValor;
        ClientDataset1.FieldByname('CodBarras').AsString:=(Edit1.Text);
        ClientDataset1.FieldByname('Codigo').AsInteger:=(DM.Sds_produtos.FieldByName('Codigo').AsInteger);
        ClientDataset1.FieldByname('Quantidade').Value:= EditN1.Text;
        ClientDataset1.FieldByname('Descricao').AsString:=(DM.Sds_produtos.FieldByName('DESCRICAO').Text);
        ClientDataset1.FieldByname('abreviado').AsString:=(DM.Sds_produtos.FieldByName('abreviado').Text);
        if Qpromo.RecordCount > 0 then
        ClientDataset1.FieldByname('Preco').Ascurrency:=    QpromoPRECO_PROMOCAO.AsCurrency
        else
        ClientDataset1.FieldByname('Preco').Ascurrency:=(DM.Sds_produtos.FieldByName('PRECO_VENDA').AsCurrency);
        ClientDataset1.FieldByname('Soma').AsFloat:=(Soma);
        ClientDataset1.FieldByname('Total').AsFloat:=(Total);
        ClientDataset1.FieldByname('Aliquota').AsString:=(DM.Sds_produtos.FieldByName('SIT_TRIBUTARIA').Text);
        ClientDataset1.FieldByname('Item').AsInteger:=(NItem);
        ClientDataset1.FieldByname('Desconto').AsFloat:= Desconto;
        ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
        ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
        ClientDataset1.FieldByname('Desc_Unidade').AsString:=(DM.Sds_produtos.FieldByName('Desc_Unidade').Text);
        ClientDataset1.FieldByname('prod_serv').AsString := DM.Sds_produtosPROD_SERV.Text;
        ClientDataset1.FieldByname('fracao').AsString := DM.Sds_produtosFRACAO.Text;
        ClientDataset1.FieldByname('cod_ncm').AsString := DM.Sds_produtosNCM_SH.Text;
        ClientDataset1.FieldByname('ESTOQUE').AsFloat:= DM.Sds_produtosESTOQUE.AsFloat;
        ClientDataset1.Post;
        EditN1.Text:= '1,000';

        //Desconto := ClientDataset1.FieldByname('Desconto').AsFloat;
       { VALORV:=  (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);
        EF:= (VALORV*PerEnc) / 100;
        VF:= (Valorv + EF);}
        VF := (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);

        sCodigo        := (ClientDataset1.FieldByname('CodBarras').AsString);
        sDescricao     :=  Formatar(ClientDataset1.FieldByname('Descricao').Text,25,true,' ');
        edit5.Text  := ClientDataset1.FieldByname('Aliquota').Text;
        if Edit6.Text = 'LETRAS' then
        begin
        sAliquota      :=  EDIT5.TEXT;
        END ELSE
        if Edit6.Text = 'NUMEROS' then
        begin
        sAliquota      :=  RemoveChar(ClientDataset1.FieldByname('Aliquota').Text);
        sAliquota      :=  Formatar(sAliquota,4,False,'0');
        end;

        sUnidade       := (ClientDataset1.FieldByname('Desc_Unidade').AsString);
        sTipoQtde      := 'F';
        sQtde          := FormatFloat('##,##0.000',B);
        sValor         := FormatFloat('##,##0.00',VF);
       // sQtde           :=  ClientDataset1.FieldByname('Quantidade').asString;
       // sValor          :=  ClientDataset1.FieldByname('Preco').AsString;
        sTipoDesconto  := '$';
        sValorDesc     := '0000';
       // ShowMessage('alicota:'+ sAliquota );

        iRetorno := Bematech_FI_VendeItem(PChar(sCodigo) , PChar(sDescricao), sAliquota,
        PChar(sTipoQtde), PChar(sQtde), 2, PChar(sValor), PChar(sTipoDesconto), PChar(sValorDesc));

        edit5.Text := PChar(sAliquota);
        Analisa_iRetorno();
        Retorno_Impressora();

        Edit1.clear;
        EditN1.Text:= '1,000';
        CancelaItem.Enabled:= True;
        DBGrid1.Enabled:= True;
        edit1.Clear;
        Edit1.SetFocus;
        Edit62.Text :=FloattoStr(Total); // ClientDataset1.FieldByname('Valor_Total').Text; //;
        end;
        end;
        end else

        IF RbPreco2.Checked = True THEN
        BEGIN
        if DM.Sds_produtosPRECO_VENDA2.AsFloat <= 0  then
        begin
        MessageDlg('Valor do Produto não pode ser Zero Favor Corrigir..',mtInformation,[mbOK],0);
        Edit1.SetFocus;
        end else


        if (DM.Sds_produtosPRECO_VENDA2.AsFloat > 0 ) then
        begin
        ClientDataSet1.Insert;
        A:=StrtoFloat(DM.Sds_produtos.FieldByName('PRECO_VENDA2').AsString);
        Percent:= StrtoFloat(DM.Sds_produtos.FieldByName('COMISSAO').AsString);
        B:= StrtoFloat(EditN1.Text);
       // PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
        EF:= (A*PerEnc) / 100;
        UEF:= FormatFloat('##,##0.00',EF);
        EF:= StrToFloat(UEF);
        VF:= (A + EF);
        EncFin:= (EF * B);
        DESCONTO:= DESCONTO * B;
        Soma:=(A*B)+ EncFin;
        Total:=Total+(soma);
        Percent := (A*Percent /100);
        Comissao:= Comissao + (percent);
        EncFinanceiro:= EncFinanceiro + (EncFin);
//        Edit60.Text := FloattoStr(Total);
       // Edit62.Text := FloattoStr(Total);
//        Edit60.Font.Color:= clBlue;
        Edit62.Font.Color:= clAqua;
        //E_Desconto.Font.Color:= clWindow;

        NValor:=1;
        NItem:=NItem+NValor;
        ClientDataset1.FieldByname('CodBarras').AsString:=(Edit1.Text);
        ClientDataset1.FieldByname('Codigo').AsInteger:=(DM.Sds_produtos.FieldByName('Codigo').AsInteger);
        ClientDataset1.FieldByname('Quantidade').Value:= EditN1.Text;
        ClientDataset1.FieldByname('Descricao').AsString:=(DM.Sds_produtos.FieldByName('DESCRICAO').Text);
        ClientDataset1.FieldByname('abreviado').AsString:=(DM.Sds_produtos.FieldByName('abreviado').Text);
        if Qpromo.RecordCount > 0 then
        ClientDataset1.FieldByname('Preco').Ascurrency:=   QpromoPRECO_PROMOCAO.AsCurrency
        else
        ClientDataset1.FieldByname('Preco').Ascurrency:=(DM.Sds_produtos.FieldByName('PRECO_VENDA2').AsCurrency);
        ClientDataset1.FieldByname('Soma').AsFloat:=(Soma);
        ClientDataset1.FieldByname('Total').AsFloat:=(Total);
        ClientDataset1.FieldByname('Aliquota').AsString:=(DM.Sds_produtos.FieldByName('SIT_TRIBUTARIA').Text);
        ClientDataset1.FieldByname('Item').AsInteger:=(NItem);
        ClientDataset1.FieldByname('Desconto').AsFloat:= Desconto;
        ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
        ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
        ClientDataset1.FieldByname('Desc_Unidade').AsString:=(DM.Sds_produtos.FieldByName('Desc_Unidade').Text);
        ClientDataset1.FieldByname('prod_serv').AsString := DM.Sds_produtosPROD_SERV.Text;
        ClientDataset1.FieldByname('fracao').AsString := DM.Sds_produtosFRACAO.Text;
        ClientDataset1.FieldByname('cod_ncm').AsString := DM.Sds_produtosNCM_SH.Text;
        ClientDataset1.FieldByname('ESTOQUE').AsFloat:= DM.Sds_produtosESTOQUE.AsFloat;
        ClientDataset1.Post;
        EditN1.Text:= '1,000';

        //Desconto := ClientDataset1.FieldByname('Desconto').AsFloat;
       { VALORV:=  (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);
        EF:= (VALORV*PerEnc) / 100;
        VF:= (Valorv + EF); }
        VF := (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);

        sCodigo        := (ClientDataset1.FieldByname('CodBarras').AsString);
        sDescricao     :=  Formatar(ClientDataset1.FieldByname('Descricao').Text,25,true,' ');
        edit5.Text  := ClientDataset1.FieldByname('Aliquota').Text;
        if Edit6.Text = 'LETRAS' then
        begin
        sAliquota      :=  EDIT5.TEXT;
        END ELSE
        if Edit6.Text = 'NUMEROS' then
        begin
        sAliquota      :=  RemoveChar(ClientDataset1.FieldByname('Aliquota').Text);
        sAliquota      :=  Formatar(sAliquota,4,False,'0');
        end;
        sUnidade       := (ClientDataset1.FieldByname('Desc_Unidade').AsString);
        sTipoQtde      := 'F';
        sQtde          := FormatFloat('##,##0.000',B);
        sValor         := FormatFloat('##,##0.00',VF);
       // sQtde           :=  ClientDataset1.FieldByname('Quantidade').asString;
       // sValor          :=  ClientDataset1.FieldByname('Preco').AsString;
        sTipoDesconto  := '$';
        sValorDesc     := '0000';

        iRetorno := Bematech_FI_VendeItem(PChar(sCodigo) , PChar(sDescricao), PChar(sAliquota),
        PChar(sTipoQtde), PChar(sQtde), 2, PChar(sValor), PChar(sTipoDesconto), PChar(sValorDesc));

        edit5.Text := PChar(sAliquota);
        Analisa_iRetorno();
        Retorno_Impressora();

        Edit1.clear;
       // E_Desconto.Clear;
        EditN1.Text:= '1,000';
       // ConfPedido.Enabled:= False;
        CancelaItem.Enabled:= True;
        DBGrid1.Enabled:= True;
        edit1.Clear;
        Edit1.SetFocus;
        Edit62.Text := FloattoStr(Total); //ClientDataset1.FieldByname('Valor_Total').Text;
       end;
       end;
        end else

       IF (DM.SDS_CONFIGURACOESMODELO_ECF.TEXT = '3') or (DM.SDS_CONFIGURACOESMODELO_ECF.Text = '4')then
       BEGIN
       IF RbPreco1.Checked = True THEN
       begin
         if (DM.Sds_produtosPRECO_VENDA.AsFloat <= 0)  then
          begin
          MessageDlg('Valor do Produto não pode ser Zero Favor Corrigir..',mtInformation,[mbOK],0);
          Edit1.SetFocus;
          Edit1.SelectAll;
          end ELSE


        IF RbPreco1.Checked = True THEN
        begin
        if (DM.Sds_produtosPRECO_VENDA.AsFloat > 0)  then
        BEGIN
        ClientDataSet1.Insert;
        A:=StrtoFloat(DM.Sds_produtos.FieldByName('PRECO_VENDA').AsString);
        Percent:= StrtoFloat(DM.Sds_produtos.FieldByName('COMISSAO').AsString);
        B:= StrtoFloat(EditN1.Text);
       // PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
        EF:= (A*PerEnc) / 100;
        UEF:= FormatFloat('##,##0.00',EF);
        EF:= StrToFloat(UEF);
        VF:= (A + EF);
        EncFin:= (EF * B);
        DESCONTO:= DESCONTO * B;
        Soma:=(A*B)+ EncFin;
        Total:=Total+(soma);
        Percent := (A*Percent /100);
        Comissao:= Comissao + (percent);
        EncFinanceiro:= EncFinanceiro + (EncFin);
//        Edit60.Text := FloattoStr(Total);

//        Edit60.Font.Color:= clBlue;
        Edit62.Font.Color:= clAqua;
        //E_Desconto.Font.Color:= clWindow;

        NValor:=1;
        NItem:=NItem+NValor;
        ClientDataset1.FieldByname('CodBarras').AsString:=(Edit1.Text);
        ClientDataset1.FieldByname('Codigo').AsInteger:=(DM.Sds_produtos.FieldByName('Codigo').AsInteger);
        ClientDataset1.FieldByname('Quantidade').Value:= EditN1.Text;
        ClientDataset1.FieldByname('Descricao').AsString:=(DM.Sds_produtos.FieldByName('DESCRICAO').Text);
        ClientDataset1.FieldByname('abreviado').AsString:=(DM.Sds_produtos.FieldByName('abreviado').Text);
        ClientDataset1.FieldByname('Preco').Ascurrency:=(DM.Sds_produtos.FieldByName('PRECO_VENDA').AsCurrency);
        if Qpromo.RecordCount > 0 then
        ClientDataset1.FieldByname('Preco').Ascurrency:=  QpromoPRECO_PROMOCAO.AsCurrency
        else
        ClientDataset1.FieldByname('Soma').AsFloat:=(Soma);
        ClientDataset1.FieldByname('Total').AsFloat:=(Total);
        ClientDataset1.FieldByname('Aliquota').AsString:=(DM.Sds_produtos.FieldByName('SIT_TRIBUTARIA').Text);
        ClientDataset1.FieldByname('Item').AsInteger:=(NItem);
        ClientDataset1.FieldByname('Desconto').AsFloat:= Desconto;
        ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
        ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
        ClientDataset1.FieldByname('Desc_Unidade').AsString:=(DM.Sds_produtos.FieldByName('Desc_Unidade').Text);
        ClientDataset1.FieldByname('prod_serv').AsString := DM.Sds_produtosPROD_SERV.Text;
        ClientDataset1.FieldByname('fracao').AsString := DM.Sds_produtosFRACAO.Text;
        ClientDataset1.FieldByname('cod_ncm').AsString := DM.Sds_produtosNCM_SH.Text;
        ClientDataset1.FieldByname('ESTOQUE').AsFloat:= DM.Sds_produtosESTOQUE.AsFloat;
        ClientDataset1.Post;
        EditN1.Text:= '1,000';

        //Desconto := ClientDataset1.FieldByname('Desconto').AsFloat;
       { VALORV:=  (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);
        EF:= (VALORV*PerEnc) / 100;
        VF:= (Valorv + EF);}
        VF := (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);

        sCodigo        := (ClientDataset1.FieldByname('CodBarras').AsString);
        sDescricao     :=  Formatar(ClientDataset1.FieldByname('Descricao').Text,25,true,' ');
        edit5.Text  := ClientDataset1.FieldByname('Aliquota').Text;
        if Edit6.Text = 'LETRAS' then
        begin
        sAliquota      :=  EDIT5.TEXT;
        END ELSE
        if Edit6.Text = 'NUMEROS' then
        begin
        sAliquota      :=  RemoveChar(ClientDataset1.FieldByname('Aliquota').Text);
        sAliquota      :=  Formatar(sAliquota,4,False,'0');
        end;

        sUnidade       := (ClientDataset1.FieldByname('Desc_Unidade').AsString);
        sTipoQtde      := 'F';
        sQtde          := FormatFloat('##,##0.000',B);
        sValor         := FormatFloat('##,##0.00',VF);
       // sQtde           :=  ClientDataset1.FieldByname('Quantidade').asString;
       // sValor          :=  ClientDataset1.FieldByname('Preco').AsString;
        sTipoDesconto  := '$';
        sValorDesc     := '0000';
       // ShowMessage('alicota:'+ sAliquota );

       { iRetorno := Bematech_FI_VendeItem(PChar(sCodigo) , PChar(sDescricao), sAliquota,
        PChar(sTipoQtde), PChar(sQtde), 2, PChar(sValor), PChar(sTipoDesconto), PChar(sValorDesc));

        edit5.Text := PChar(sAliquota);
        Analisa_iRetorno();
        Retorno_Impressora();   }

        Edit1.clear;
        EditN1.Text:= '1,000';
        CancelaItem.Enabled:= True;
        DBGrid1.Enabled:= True;
        edit1.Clear;
        Edit1.SetFocus;
        Edit62.Text :=FloattoStr(Total); // ClientDataset1.FieldByname('Valor_Total').Text; //;
        end;
        end;
        end else

        IF RbPreco2.Checked = True THEN
        BEGIN
        if (DM.Sds_produtosPRECO_VENDA2.AsFloat <= 0 )  then
        begin
        MessageDlg('Valor do Produto não pode ser Zero Favor Corrigir..',mtInformation,[mbOK],0);
        Edit1.SetFocus;
        end else


        if (DM.Sds_produtosPRECO_VENDA2.AsFloat > 0)   then
        begin
        ClientDataSet1.Insert;
        A:=StrtoFloat(DM.Sds_produtos.FieldByName('PRECO_VENDA2').AsString);
        Percent:= StrtoFloat(DM.Sds_produtos.FieldByName('COMISSAO').AsString);
        B:= StrtoFloat(EditN1.Text);
       // PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
        EF:= (A*PerEnc) / 100;
        UEF:= FormatFloat('##,##0.00',EF);
        EF:= StrToFloat(UEF);
        VF:= (A + EF);
        EncFin:= (EF * B);
        DESCONTO:= DESCONTO * B;
        Soma:=(A*B)+ EncFin;
        Total:=Total+(soma);
        Percent := (A*Percent /100);
        Comissao:= Comissao + (percent);
        EncFinanceiro:= EncFinanceiro + (EncFin);
//        Edit60.Text := FloattoStr(Total);
       // Edit62.Text := FloattoStr(Total);
//        Edit60.Font.Color:= clBlue;
        Edit62.Font.Color:= clAqua;
        //E_Desconto.Font.Color:= clWindow;

        NValor:=1;
        NItem:=NItem+NValor;
        ClientDataset1.FieldByname('CodBarras').AsString:=(Edit1.Text);
        ClientDataset1.FieldByname('Codigo').AsInteger:=(DM.Sds_produtos.FieldByName('Codigo').AsInteger);
        ClientDataset1.FieldByname('Quantidade').Value:= EditN1.Text;
        ClientDataset1.FieldByname('Descricao').AsString:=(DM.Sds_produtos.FieldByName('DESCRICAO').Text);
        ClientDataset1.FieldByname('abreviado').AsString:=(DM.Sds_produtos.FieldByName('abreviado').Text);
        ClientDataset1.FieldByname('Preco').Ascurrency:=(DM.Sds_produtos.FieldByName('PRECO_VENDA2').AsCurrency);
        if Qpromo.RecordCount > 0 then
        ClientDataset1.FieldByname('Preco').Ascurrency:=  QpromoPRECO_PROMOCAO.AsCurrency
        else
        ClientDataset1.FieldByname('Soma').AsFloat:=(Soma);
        ClientDataset1.FieldByname('Total').AsFloat:=(Total);
        ClientDataset1.FieldByname('Aliquota').AsString:=(DM.Sds_produtos.FieldByName('SIT_TRIBUTARIA').Text);
        ClientDataset1.FieldByname('Item').AsInteger:=(NItem);
        ClientDataset1.FieldByname('Desconto').AsFloat:= Desconto;
        ClientDataset1.FieldByname('EncFianceiro').AsFloat:= EncFin;
        ClientDataset1.FieldByname('Comissao').AsFloat:=(percent);
        ClientDataset1.FieldByname('Desc_Unidade').AsString:=(DM.Sds_produtos.FieldByName('Desc_Unidade').Text);
        ClientDataset1.FieldByname('prod_serv').AsString := DM.Sds_produtosPROD_SERV.Text;
        ClientDataset1.FieldByname('fracao').AsString := DM.Sds_produtosFRACAO.Text;
        ClientDataset1.FieldByname('cod_ncm').AsString := DM.Sds_produtosNCM_SH.Text;
        ClientDataset1.FieldByname('ESTOQUE').AsFloat:= DM.Sds_produtosESTOQUE.AsFloat;
        ClientDataset1.Post;
        EditN1.Text:= '1,000';

        //Desconto := ClientDataset1.FieldByname('Desconto').AsFloat;
       { VALORV:=  (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);
        EF:= (VALORV*PerEnc) / 100;
        VF:= (Valorv + EF); }
        VF := (FormCupomFiscal.ClientDataset1.FieldByname('Preco').Value);

        sCodigo        := (ClientDataset1.FieldByname('CodBarras').AsString);
        sDescricao     :=  Formatar(ClientDataset1.FieldByname('Descricao').Text,25,true,' ');
        edit5.Text  := ClientDataset1.FieldByname('Aliquota').Text;
        if Edit6.Text = 'LETRAS' then
        begin
        sAliquota      :=  EDIT5.TEXT;
        END ELSE
        if Edit6.Text = 'NUMEROS' then
        begin
        sAliquota      :=  RemoveChar(ClientDataset1.FieldByname('Aliquota').Text);
        sAliquota      :=  Formatar(sAliquota,4,False,'0');
        end;
        sUnidade       := (ClientDataset1.FieldByname('Desc_Unidade').AsString);
        sTipoQtde      := 'F';
        sQtde          := FormatFloat('##,##0.000',B);
        sValor         := FormatFloat('##,##0.00',VF);
       // sQtde           :=  ClientDataset1.FieldByname('Quantidade').asString;
       // sValor          :=  ClientDataset1.FieldByname('Preco').AsString;
        sTipoDesconto  := '$';
        sValorDesc     := '0000';

       { iRetorno := Bematech_FI_VendeItem(PChar(sCodigo) , PChar(sDescricao), PChar(sAliquota),
        PChar(sTipoQtde), PChar(sQtde), 2, PChar(sValor), PChar(sTipoDesconto), PChar(sValorDesc));

        edit5.Text := PChar(sAliquota);
        Analisa_iRetorno();
        Retorno_Impressora(); }

        Edit1.clear;
       // E_Desconto.Clear;
        EditN1.Text:= '1,000';
       // ConfPedido.Enabled:= False;
        CancelaItem.Enabled:= True;
        DBGrid1.Enabled:= True;
        edit1.Clear;
        Edit1.SetFocus;
        Edit62.Text := FloattoStr(Total); //ClientDataset1.FieldByname('Valor_Total').Text;
        end;

        end;


      {  except
          Application.OnException := TrataErros ;
        end; }

     end;
     end;

    if not ClientDataSet1.eof  then
    begin
    edtproduto.Caption := ClientDataSet1descricao.Text;
    editunt.text   := ClientDataSet1Preco.Text;
    edttotal.text    := ClientDataSet1Soma.Text;
    end else
    begin
       edtproduto.Caption := 'SIACE SISTEMAS';
       editunt.text   := '0,00';
       edttotal.text    := '0,00';
    end;

   end;
 END;
end;
end;
end;

procedure TFormCupomFiscal.btnPesqClick(Sender: TObject);
begin
IF FormPrincipal.FBaixaCred = 'S' THEN
BEGIN
Try
if FormCRCrediario=nil   then
    begin
     FormCRCrediario:=TFormCRCrediario.Create(self);
      FormCRCrediario.ShowModal;
      end;
    //  ComboEdit1.SetFocus;
      except
   //    ShowMessage('Erro ao tentar exibir o Formulário !!');
end;
end ELSE BEGIN
FormPrincipal.MSG_NOT.Execute;
end;
end;

procedure TFormCupomFiscal.suiButton1Click(Sender: TObject);
begin
try
if FormCaixaEcf=nil   then
    begin
     FormCaixaEcf:=TFormCaixaEcf.Create(self);
      FormCaixaEcf.ShowModal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;

procedure TFormCupomFiscal.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (Key=VK_F2) then
begin
      Edit1.Text := DM.SDS_PRODUTOS_CCODIGO_BARRAS.Text;
      Edit1.SelectAll;
end;

end;

procedure TFormCupomFiscal.suiButton2Click(Sender: TObject);
begin
Try
if FormClientesadd=nil   then
    begin
     Formclientesadd:=TFormclientesadd.Create(self);
       Formclientesadd.Showmodal;
      end;
      except
       ShowMessage('Erro ao tentar exibir o formulário de Clientes!!');
end;
FormCupomFiscal.Edit1.Clear;
//FormCupomFiscal.E_Desconto.SetFocus;
end;

procedure TFormCupomFiscal.Edit1Change(Sender: TObject);
var Key: Word;
  Shift: TShiftState;
begin
//Edit1.T:=  formECF.ACBrLCB1.Fila;
 //      formECF.ACBrLCB1.LerFila ;
  //    Edit1.text :=  formECF.ACBrLCB1LeCodigo( Sender );
 //      Edit1.Text := formECF.ACBrLCB1.UltimoCodigo;
//formECF.mProdutos.Lines.Add( 'Cód: '+formECF.ACBrLCB1.UltimoCodigo ) ; ;
   Edit1.Color := clBlack;
  Editn1.Color := clBlack;

IF (Edit1.Text>='A') AND (Edit1.Text<='Z') THEN
EDIT7.Text:='LETRAS';

IF (EDIT1.Text>='0') AND (Edit1.Text<='9') THEN
EDIT7.Text:='NUMEROS';

IF EDIT1.Text='' THEN
EDIT7.Text:='';
  
codigo_bar := edit1.text;

//CorEntrada(sender);
  Edit1.Color := clBlack;
  Editn1.Color := clBlack;
   
 //Edit3.Text := edit1.text;

{IF lUltimaLeitura.Caption > '' then
begin
Edit1.Text := ACBrLCB1.UltimoCodigo;//lUltimaLeitura.Caption;
end;
 if (Key=VK_RETURN) then
 begin
   lUltimaLeitura.Caption :='';
   Edit1.Clear;
 end;}
end;

procedure TFormCupomFiscal.ACBrLCB1LeCodigo(Sender: TObject);
begin
  lUltimaLeitura.Caption := Converte1(ACBrLCB1.UltimaLeitura ) ;
  Edit1.Clear;
  if not ACBrLCB1.UsarFila then
     Vende(Sender)
  else
   Edit1.Assign( ACBrLCB1.Fila );
  // Edit1.Text := ACBrLCB1.UltimaLeitura;
  // Edit1.Text := ACBrLCB1.UltimoCodigo;
   //Key:=VK_RETURN);
 //  Edit1KeyPress(Sender);
   // keybd_event(VK_RETURN, 0, 0, 0);

end;
procedure TFormCupomFiscal.Vende;
Var Atraso : Integer ;
begin
 // mProdutos.Lines.Add( 'Cód: '+ACBrLCB1.UltimoCodigo ) ;

  Edit1.Text := ACBrLCB1.UltimoCodigo;

  suiButton3Click(Sender);

 { Atraso := StrToIntDef(edAtraso.Text,0) ;
  if Atraso > 0 then
  begin
     pAtraso.Visible := true ;
     Application.ProcessMessages ;
     Sleep( Atraso );
     pAtraso.Visible := false ;
  end ;   }

end;

function TFormCupomFiscal.Converte1(cmd: String): String;
var A : Integer ;
begin
  Result := '' ;
  For A := 1 to length( cmd ) do
  begin
     if not (cmd[A] in ['A'..'Z','a'..'z','0'..'9',
                        ' ','.',',','/','?','<','>',';',':',']','[','{','}',
                        '\','|','=','+','-','_',')','(','*','&','^','%','$',
                        '#','@','!','~',']' ]) then
        Result := Result + '#' + IntToStr(ord( cmd[A] )) + ' '
     else
        Result := Result + cmd[A] + '';
  end ;
 end;
 
procedure TFormCupomFiscal.RbPreco2Enter(Sender: TObject);
begin
RbPreco2.Checked := True;
Edit1.SetFocus;
end;

procedure TFormCupomFiscal.RbPreco1Enter(Sender: TObject);
begin
RbPreco1.Checked := True;
Edit1.SetFocus;
end;

procedure TFormCupomFiscal.Timer1Timer(Sender: TObject);
//var
//Texto :  String;
begin
Label3.Caption:= TimeToStr(Time);
//suiStatusBar1.Panels[2].Text:= MostraData(Date);
end;

procedure TFormCupomFiscal.EditN1KeyPress(Sender: TObject; var Key: Char);
begin
 if not(key in ['0'..'9', #8]) then
          key := #0;
if Key = #13 then
begin
IF StrToFloat(EditN1.text) > 99999 then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
  EditN1.Text := '1,000';
  EditN1.SetFocus;
end else
IF StrToFloat(EditN1.text) <= 9999 then
begin
// CorSaida(Sender);
 Edit1.Clear;
 Edit1.SetFocus;
end;
end;
end;

procedure TFormCupomFiscal.suiButton3Click(Sender: TObject);
begin
keybd_event(VK_RETURN, 0, 0, 0);
end;

procedure TFormCupomFiscal.EditCodigoCliKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['a'..'z','A'..'Z', '0'..'9', #8, #32, #13]) then
          key := #0;
end;

procedure TFormCupomFiscal.EditCodigoCliChange(Sender: TObject);
begin
//DM.SDS_Clientes.Filtered := False;
IF (EditCodigoCli.Text>='A') AND (EditCodigoCli.Text<='Z') THEN
EDIT4.Text:='LETRAS';

IF (EditCodigoCli.Text>='0') AND (EditCodigoCli.Text<='9') THEN
EDIT4.Text:='NUMEROS';

IF EditCodigoCli.Text='' THEN
EDIT4.Text:='';
end;

procedure TFormCupomFiscal.cbxModeloChange(Sender: TObject);
begin
try
     ACBrECF1.Modelo := TACBrECFModelo( cbxModelo.ItemIndex ) ;
  except
     cbxModelo.ItemIndex := Integer( ACBrECF1.Modelo ) ;
     raise ;
  end ;
end;

procedure TFormCupomFiscal.Edit5Change(Sender: TObject);
begin
IF (Edit5.Text>='A') AND (Edit5.Text<='Z') THEN
EDIT6.Text:='LETRAS';

IF (EDIT5.Text>='0') AND (Edit5.Text<='9') THEN
EDIT6.Text:='NUMEROS';

IF EDIT5.Text='' THEN
EDIT6.Text:=''

end;

procedure TFormCupomFiscal.cbo_portaChange(Sender: TObject);
begin
if cbo_porta.Text='COM1' then
    Begin
      edt_ip.Enabled:=False;
      edt_ip.Color:=ClBtnFace;
      s_porta:=cbo_porta.text;
    End
      Else
        if cbo_porta.Text='COM2' then
          Begin
            edt_ip.Enabled:=False;
            edt_ip.Color:=ClBtnFace;
            s_porta:=cbo_porta.text;
          End
            Else
              if cbo_porta.Text='COM3' then
                Begin
                  edt_ip.Enabled:=False;
                  edt_ip.Color:=ClBtnFace;
                  s_porta:=cbo_porta.text;
                End
                  Else
                    if cbo_porta.Text='COM4' then
                      Begin
                        edt_ip.Enabled:=False;
                        edt_ip.Color:=ClBtnFace;
                        s_porta:=cbo_porta.text;
                      End
                        Else
                           if cbo_porta.Text='LPT1' then
                            Begin
                              edt_ip.Enabled:=False;
                              edt_ip.Color:=ClBtnFace;
                              s_porta:=cbo_porta.text;
                            End
                              Else
                                if cbo_porta.Text='LPT2' then
                                  Begin
                                    edt_ip.Enabled:=False;
                                    edt_ip.Color:=ClBtnFace;
                                    s_porta:=cbo_porta.text;
                                  End
                                    Else
                                      if cbo_porta.Text='USB' then
                                        Begin
                                          edt_ip.Enabled:=False;
                                          edt_ip.Color:=ClBtnFace;
                                          s_porta:=cbo_porta.text;
                                        End
                                          Else
                                            if cbo_porta.Text='ETHERNET' then
                                              Begin
                                                edt_ip.Enabled:=True;
                                                edt_ip.Color:=ClWhite;
                                                s_porta:=edt_ip.text;

                                               End;

end;

procedure TFormCupomFiscal.cbo_modeloChange(Sender: TObject);
begin
if cbo_modelo.Text='MP 20 CI' then
    Begin
      edt_ip.Enabled:=False;
      edt_ip.Color:=ClBtnFace;
      i_modelo:=1
    End
    Else
      if cbo_modelo.Text='MP 20 MI' then
      Begin
        edt_ip.Enabled:=False;
        edt_ip.Color:=ClBtnFace;
        i_modelo:=1;
      End
        Else
          if cbo_modelo.Text='MP 20 TH' then
          Begin
            edt_ip.Enabled:=False;
            edt_ip.Color:=ClBtnFace;
            i_modelo:=0;
          End
            Else
              if cbo_modelo.Text='MP 2000 CI' then
                Begin
                  edt_ip.Enabled:=False;
                  edt_ip.Color:=ClBtnFace;
                  i_modelo:=0;
                End
                  Else
                    if cbo_modelo.Text='MP 2000 TH' then
                    Begin
                      edt_ip.Enabled:=False;
                      edt_ip.Color:=ClBtnFace;
                      i_modelo:=0;
                    End
                      Else
                        if cbo_modelo.Text='MP 2100 TH' then
                        Begin
                          edt_ip.Enabled:=False;
                          edt_ip.Color:=ClBtnFace;
                          i_modelo:=0;
                        End
                          Else
                            if cbo_modelo.Text='MP 4000 TH' then
                            Begin
                              edt_ip.Enabled:=True;
                              edt_ip.Color:=ClWhite;
                              i_modelo:=5;
                            End
                              Else
                                if cbo_modelo.Text='MP 4200 TH' then
                                Begin
                                  edt_ip.Enabled:=True;
                                  edt_ip.Color:=ClWhite;
                                  i_modelo:=7;
                                End
                                  Else
                                     if cbo_modelo.Text='MP 2500 TH' then
                                     Begin
                                        edt_ip.Enabled:=True;
                                        edt_ip.Color:=ClWhite;
                                        i_modelo:=8;
                                     End;

end;

procedure TFormCupomFiscal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{if not odd(ClientDataSet1.RecNo) then
  if not (gdselected in State) then
    begin
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;}
end;

procedure TFormCupomFiscal.Image8Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCupomFiscal.EditN1Exit(Sender: TObject);
begin
Edit1.SetFocus;

end;

end.

