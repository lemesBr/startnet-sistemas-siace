unit gerNFE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,  SUIEdit, Mask, rxToolEdit, RXDBCtrl,
  Mylabel, SUIButton, SUIImagePanel, SUIGroupBox, SUIRadioGroup, Grids,
  XDBGrids, DB, DBClient, SimpleDS, ActiveX, wwdblook, Wwdbdlg, RzEdit,
  RzSpnEdt, ActnList, pcnNFeRTXT, ACBrNFe, IBCustomDataSet, IBDatabase,
  IBQuery, DBGrids, Math, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RXCtrls,
  frxClass, RxCurrEdit;

type
  TFormGefaNFe = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    myLabel3d2: TmyLabel3d;
    suiEdit2: TsuiEdit;
    Label2: TLabel;
    confirmar: TsuiButton;
    Label3: TLabel;
    Inserir: TsuiButton;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    btnCancelar: TsuiButton;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    suiEdit1: TsuiEdit;
    suiRadioGroup1: TsuiRadioGroup;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    RxDBComboEdit2: TComboEdit;
    Edit6: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SDS_NFE1: TSimpleDataSet;
    DTS_NFE1: TDataSource;
    SDS_NFE1NR_NOTA: TIntegerField;
    SDS_NFE1NR_PEDIDO: TIntegerField;
    ComboBox2: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    ComboBox3: TComboBox;
    SDS_NFE1N_NOTA_ENTRADA: TStringField;
    RxDBComboEdit1: TComboEdit;
    Label15: TLabel;
    ComboBox4: TComboBox;
    Edit7: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Edit8: TEdit;
    Label18: TLabel;
    Edit9: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    OpenDialog1: TOpenDialog;
    suiButton7: TsuiButton;
    QBuscaItens: TFDQuery;
    DSQBuscaItens: TDataSource;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensCODIGO_ID: TIntegerField;
    QBuscaItensITEN: TIntegerField;
    QBuscaItensCODIGO_PROD: TIntegerField;
    QBuscaItensCODIGO_PRODUTO: TIBStringField;
    QBuscaItensDESCRICAO_PRODUTO: TIBStringField;
    QBuscaItensDESCONTO: TIBBCDField;
    QBuscaItensQUANTIDADE: TIBBCDField;
    QBuscaItensPRECO_TOTAL: TIBBCDField;
    QBuscaItensCOMISSAO: TIBBCDField;
    QBuscaItensDEV: TIBStringField;
    QBuscaItensQNT_DEV: TIBBCDField;
    QBuscaItensVAL_DEV: TIBBCDField;
    QBuscaItensENC_FINANCEIRO: TIBBCDField;
    QBuscaItensUNIDADE: TIBStringField;
    QBuscaItensSIT_TRIBUTARIA: TIBStringField;
    QBuscaItensVENDEDOR: TIntegerField;
    QBuscaItensFRACAO: TIntegerField;
    QBuscaItensCOD_NCM: TIBStringField;
    QBuscaItensPROD_SERV: TIBStringField;
    QBuscaItensPERC_ISS: TIBBCDField;
    QBuscaItensBASE_ISS: TIBBCDField;
    QBuscaItensVL_ISS: TIBBCDField;
    QBuscaItensPERC_ICM: TIBBCDField;
    QBuscaItensBASE_ICMS: TIBBCDField;
    QBuscaItensVL_ICM: TIBBCDField;
    QBuscaItensPERC_IPI: TIBBCDField;
    QBuscaItensBASE_IPI: TIBBCDField;
    QBuscaItensVL_IPI: TIBBCDField;
    QBuscaItensPERC_COFINS: TIBBCDField;
    QBuscaItensBASE_COFINS: TIBBCDField;
    QBuscaItensVL_COFINS: TIBBCDField;
    QBuscaItensPERC_ICMS_SUBST: TIBBCDField;
    QBuscaItensBASE_ICMS_SUBST: TIBBCDField;
    QBuscaItensVL_ICMS_SUBST: TIBBCDField;
    QBuscaItensPERC_PIS: TIBBCDField;
    QBuscaItensBASE_PIS: TIBBCDField;
    QBuscaItensVL_PIS: TIBBCDField;
    QBuscaItensIMPRIME: TIBStringField;
    QBuscaItensCOD_EMPRESA: TIntegerField;
    QBuscaItensICMS: TIBBCDField;
    QBuscaItensIPI_IRPJ: TIBBCDField;
    QBuscaItensOUTROS_IMPOSTOS: TIBBCDField;
    Edit1: TRxCalcEdit;
    QBuscaItensPERC_ALIQUOTA_PIS: TIBBCDField;
    QBuscaItensPERC_ALIQUOTA_COFINS: TIBBCDField;
    QBuscaItensFLAG_PIS_COFINS: TIBStringField;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QBuscaItensCFOP_EST_VENDA: TIBStringField;
    QBuscaItensCST_VENDA: TIBStringField;
    QBuscaItensNCM_SH: TIBStringField;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    QBuscaItensSIT_COFINS_VENDA_EST: TIBStringField;
    QBuscaItensSIT_PIS_VENDA_INTER_EST: TIBStringField;
    QBuscaItensSIT_COFINS_VENDA_INTER_EST: TIBStringField;
    QBuscaItensSIT_PIS_VENDA_EST: TIBStringField;
    QBuscaItensCST_IPI_SAIDA: TIBStringField;
    QBuscaItensCFOP_INTER_VENDA: TIBStringField;
    QBuscaItensCST_VENDA_INTER: TIBStringField;
    QBuscaItensCOD_ANP: TIBStringField;
    QBuscaItensCOMBUSTIVEL: TIBStringField;
    QBuscaItensQTD_CAIXA: TSmallintField;
    QBuscaItensUND_TRIB: TIBStringField;
    QBuscaItensML_QUANT_BEB: TIBBCDField;
    QBuscaItensPERC_TRIBU: TIBBCDField;
    QBuscaItensFONTE: TIBStringField;
    QBuscaItensALIC_NAC: TIBBCDField;
    QBuscaItensALIC_IMP: TIBBCDField;
    QBuscaItensVEICULO: TIBStringField;
    QBuscaItensCHASSI: TIBStringField;
    QBuscaItensCOR: TIntegerField;
    QBuscaItensCOR_DESC: TIBStringField;
    QBuscaItensN_MOTOR: TIBStringField;
    QBuscaItensANO_FAB: TIBStringField;
    QBuscaItensANO_MOD_FAB: TIBStringField;
    QBuscaItensTIPO_VEIC: TIBStringField;
    QBuscaItensN_SERIE: TIBStringField;
    QBuscaItensCOD_MODELO: TIBStringField;
    QBuscaItensESPECIE_VEICULO: TIBStringField;
    QBuscaItensCOD_COR_DENATRAN: TIBStringField;
    QBuscaItensTIPO_COMBUSTIVEL: TIBStringField;
    QBuscaItensPESOBRUTO: TIBBCDField;
    QBuscaItensPESOLIQUIDO: TIBBCDField;
    QBuscaItensAPLICACAO: TIBStringField;
    SDS_NFE1NR_PROTOCOLO_NFE: TStringField;
    SDS_NFE1NR_RECIBO_NFE: TStringField;
    SDS_NFE1STATUS_CANCELADO: TStringField;
    QBuscaItensID_BICO: TIntegerField;
    QBuscaItensID_TANQUE: TIBStringField;
    QBuscaItensID_BOMBA: TIBStringField;
    QBuscaItensBICO: TIBStringField;
    QBuscaItensFLAG_ICMS: TIBStringField;
    QBuscaItensPERC_ICMS_ESTADUAL: TIBBCDField;
    QBuscaItensPERC_ICMS_INTER_ESTADUAL: TIBBCDField;
    CurrencyEdit1: TCurrencyEdit;
    Label12: TLabel;
    Label19: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label20: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    QBuscaItensCFOP_REV_EST: TIBStringField;
    QBuscaItensCFOP_REV_INTER: TIBStringField;
    QBuscaItensCFOP_EST_TRANSF: TIBStringField;
    QBuscaItensCFOP_INTER_EST_TRASNF: TIBStringField;
    Edit10: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Edit11: TEdit;
    Label23: TLabel;
    ComboBox5: TComboBox;
    Label24: TLabel;
    Edit12: TEdit;
    QBuscaItensNCM_SH_1: TStringField;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    Label25: TLabel;
    Edit13: TEdit;
    QBuscaItens1: TFDQuery;
    DataSource1: TDataSource;
    QBuscaItens1CODIGO_ITEM: TIntegerField;
    QBuscaItens1CODIGO_PRODUTO: TIntegerField;
    QBuscaItens1CODIGO_BARRAS: TStringField;
    QBuscaItens1CODIGO_NOTA: TIntegerField;
    QBuscaItens1DESCRICAO: TStringField;
    QBuscaItens1NCM_SH: TStringField;
    QBuscaItens1CST: TStringField;
    QBuscaItens1CFOP: TStringField;
    QBuscaItens1DESC_UNIDADE: TStringField;
    QBuscaItens1QUANTIDADE: TBCDField;
    QBuscaItens1VALOR_UNI: TBCDField;
    QBuscaItens1VALOR_DESC: TBCDField;
    QBuscaItens1TOTAL_ITEM: TBCDField;
    QBuscaItens1DATA: TDateField;
    QBuscaItens1BASE_ICMS: TBCDField;
    QBuscaItens1VALOR_ICMS: TBCDField;
    QBuscaItens1VALOR_IPI: TBCDField;
    QBuscaItens1PERC_ICMS: TBCDField;
    QBuscaItens1PERC_IPI: TBCDField;
    QBuscaItens1PRECO_VENDA: TBCDField;
    QBuscaItens1PRECO_VENDA2: TBCDField;
    QBuscaItens1DATA_VALIDADE: TDateField;
    QBuscaItens1DATA_FABRICACAO: TDateField;
    QBuscaItens1FRACAO: TIntegerField;
    QBuscaItens1QUANT_FRACIONADA: TBCDField;
    QBuscaItens1LOTE_MED: TStringField;
    QBuscaItens1MARG_LUCRO: TBCDField;
    QBuscaItens1ATIVO: TStringField;
    QBuscaItens1BASE_ICMS_ST: TBCDField;
    QBuscaItens1ALIC_ICMS_ST: TBCDField;
    QBuscaItens1VALOR_ICMS_ST: TBCDField;
    QBuscaItens1COD_EMPRESA: TIntegerField;
    QBuscaItens1IMOBILZ: TStringField;
    QBuscaItens1BASE_PIS: TBCDField;
    QBuscaItens1PERC_PIS: TBCDField;
    QBuscaItens1VALOR_PIS: TBCDField;
    QBuscaItens1BASE_COFINS: TBCDField;
    QBuscaItens1PERC_COFINS: TBCDField;
    QBuscaItens1VALOR_COFINS: TBCDField;
    QBuscaItens1BASE_IPI: TBCDField;
    QBuscaItens1UN_FRACAO: TStringField;
    QBuscaItens1ITEM: TIntegerField;
    QBuscaItens1CODFORNECEDOR: TIntegerField;
    QBuscaItens1NUM_NOTA: TStringField;
    QBuscaItens1ICMS_RETIDO: TStringField;
    QBuscaItens1SUBTOTAL: TBCDField;
    QBuscaItens1DESCONTO_P: TBCDField;
    QBuscaItens1ICMS_REDUCAO: TBCDField;
    QBuscaItens1ICMS_VALORRETIDO: TBCDField;
    QBuscaItens1ICMS_ISENTO: TBCDField;
    QBuscaItens1ICMS_NAOTRIBUTADO: TBCDField;
    QBuscaItens1IPI_TIPO: TStringField;
    QBuscaItens1TIPO: TIntegerField;
    QBuscaItens1FRETE: TBCDField;
    QBuscaItens1OUTRAS: TBCDField;
    QBuscaItens1SEGURO: TBCDField;
    QBuscaItens1CLASSIFICACAO_FISCAL: TStringField;
    QBuscaItens1SUB_PRODUTOS: TBCDField;
    QBuscaItens1ITEM_ESPECIAL_VALOR: TBCDField;
    QBuscaItens1ICMS_OUTRAS: TBCDField;
    QBuscaItens1ALTERA_ITEM: TIntegerField;
    QBuscaItens1CREDITO_ICMS: TBCDField;
    QBuscaItens1CREDITO_ICMS_BASE: TBCDField;
    QBuscaItens1PMARGEM: TFloatField;
    QBuscaItens1PRECO_CUSTO: TBCDField;
    QBuscaItens1CODLANCAMENTO: TStringField;
    QBuscaItens1ICMS: TBCDField;
    QBuscaItens1COD_ANP: TStringField;
    QBuscaItens1COMBUSTIVEL: TStringField;
    QBuscaItens1APLICACAO: TStringField;
    QBuscaItens1IPI_IRPJ: TBCDField;
    QBuscaItens1OUTROS_IMPOSTOS: TBCDField;
    QBuscaItens1NCM_SH_1: TStringField;
    QBuscaItens1QTD_CAIXA: TSmallintField;
    QBuscaItens1UND_TRIB: TStringField;
    QBuscaItens1ML_QUANT_BEB: TBCDField;
    QBuscaItens1SIT_COFINS_VENDA_EST: TStringField;
    QBuscaItens1SIT_PIS_VENDA_INTER_EST: TStringField;
    QBuscaItens1SIT_COFINS_VENDA_INTER_EST: TStringField;
    QBuscaItens1SIT_PIS_VENDA_EST: TStringField;
    QBuscaItens1FLAG_ICMS: TStringField;
    QBuscaItens1CST_IPI_SAIDA: TStringField;
    QBuscaItens1CST_VENDA_INTER: TStringField;
    QBuscaItens1PERC_ALIQUOTA_PIS: TBCDField;
    QBuscaItens1PERC_ALIQUOTA_COFINS: TBCDField;
    QBuscaItens1CFOP_INTER_VENDA: TStringField;
    QBuscaItens1FLAG_PIS_COFINS: TStringField;
    QBuscaItens1PERC_ICMS_ESTADUAL: TBCDField;
    QBuscaItens1PERC_ICMS_INTER_ESTADUAL: TBCDField;
    QBuscaItens1CFOP_EST_VENDA: TStringField;
    QBuscaItens1CFOP_REV_EST: TStringField;
    QBuscaItens1CFOP_REV_INTER: TStringField;
    QBuscaItens1CFOP_EST_TRANSF: TStringField;
    QBuscaItens1CFOP_INTER_EST_TRASNF: TStringField;
    QBuscaItens1CST_VENDA: TStringField;
    QBuscaItens1NCM_SH_2: TStringField;
    QBuscaItens1PERC_TRIBU: TBCDField;
    QBuscaItens1FONTE: TStringField;
    QBuscaItens1ALIC_NAC: TBCDField;
    QBuscaItens1ALIC_IMP: TBCDField;
    QBuscaItens1VEICULO: TStringField;
    QBuscaItens1CHASSI: TStringField;
    QBuscaItens1COR: TIntegerField;
    QBuscaItens1COR_DESC: TStringField;
    QBuscaItens1N_MOTOR: TStringField;
    QBuscaItens1ANO_FAB: TStringField;
    QBuscaItens1ANO_MOD_FAB: TStringField;
    QBuscaItens1TIPO_VEIC: TStringField;
    QBuscaItens1N_SERIE: TStringField;
    QBuscaItens1COD_MODELO: TStringField;
    QBuscaItens1ESPECIE_VEICULO: TStringField;
    QBuscaItens1COD_COR_DENATRAN: TStringField;
    QBuscaItens1TIPO_COMBUSTIVEL: TStringField;
    QBuscaItens1PESOBRUTO: TBCDField;
    QBuscaItens1PESOLIQUIDO: TBCDField;
    QBuscaItensCEST: TStringField;
    QBuscaItens1CEST: TStringField;
    edtBaseICMSST: TCurrencyEdit;
    Label28: TLabel;
    edtPercentualICMSST: TCurrencyEdit;
    Label29: TLabel;
    frxReport1: TfrxReport;
    QBuscaItens1ALIC_REVENDA: TBCDField;
    QBuscaItensALIC_REVENDA: TBCDField;
    QBuscaItensPRECO_UNITARIO: TBCDField;
    procedure InserirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure confirmarClick(Sender: TObject);
    procedure RxDBComboEdit2ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBComboEdit2Exit(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure RxDBComboEdit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBComboEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure CheckBox3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure _NFEnter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
   X, Y, Z, BX, By, BZ, B_ICM, B_ISS, B_IPI, ICM, IPI, ISS, B_PIS,
   B_COFINS, PIS, COFINS, icm_st, b_icms_st : Real;
  public
    { Public declarations }
    NItem, NValor:Integer;
    function ConverteReais(Valor: String): Currency;
    function ConvertCurrency(Text: String): Currency;
  end;

var
  FormGefaNFe: TFormGefaNFe;
      E, N, Contador: Integer;
        NOTA : string;

implementation

uses Principal, Ubibli1, ModulodeDados, Vendas, Nfe, Constransportador, xloc_cfop;

{$R *.dfm}

function RetIdxUltimaColVisivel(DBGrid: TDBGrid): integer;
var x: integer;
begin
  Result:= -1;

  for x:= DBGrid.Columns.Count-1 downto 0 do
     begin
        if DBGrid.Columns.Items[x].Visible then
           begin
              Result:= x;
              Break;
           end;
     end;
end;


function NaoInsereDBGrid(DBGrid: TDBGrid; DataSet: TDataSet; Key: Word): Word;
begin
   {Não deixa inserir registros no DBGrid caso:
    1- estiver em modo de edição: E
    1.1- se clicar na tecla "Insert"; OU
    1.2- se clicar na tecla "Seta para baixo" E estiver no último registro; OU
    1.2- se clicar na tecla "Tab" E estiver no último registro E estiver na
         última coluna visível. }
   Result:= Key;

   if dgEditing in DBGrid.Options then
      begin
         if (Key = VK_INSERT) or ((Key = VK_DOWN) and (DataSet.RecNo = DataSet.RecordCount)) then
            Result := 0
         else
            if (Key = VK_TAB) and (DataSet.RecNo = DataSet.RecordCount) then
               begin
                  if (DBGrid.SelectedIndex = RetIdxUltimaColVisivel(DBGrid)) then
                     Result := 0
               end;
      end;
end;


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

function TFormGefaNFe.ConvertCurrency(Text: String): Currency;
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

procedure TFormGefaNFe.InserirClick(Sender: TObject);
var
 tam, i, d, CONT: Integer;
 SOMA, SOMA1, SOMA2, SOMA3, SOMA4, SOMA5, SOMA6 : Real;
  Total1, Xt,  total_venda,  TOTAL, EdtPercentualDesconto: real;
  valor_desc :string;
  desc_t, total_g :Real;
begin
   X:=0;
   Y:=0;
   Z:=0;
   BX:=0;
   By:=0;
   BZ:=0;
   B_ICM:=0;
   B_ISS:=0;
   B_IPI:=0;
   ICM:=0;
   IPI:=0;
   ISS:=0;
   B_PIS:=0;
   B_COFINS:=0;
   PIS:=0;
   COFINS:=0;
   icm_st:=0;
   b_icms_st:=0;
   SOMA:=0;
   SOMA1:=0;
   SOMA2:=0;
   SOMA3:=0;
   SOMA4:=0;
   SOMA5:=0;
   SOMA6:=0;
   total_g :=0;
   desc_t :=0;


NItem:=1;
SDS_NFE1.Active := False;
SDS_NFE1.Active := True;


if FormGefaNFe.combobox2.itemIndex = 0 then        // saida tela de vendas
begin

 if SDS_NFE1.Locate('NR_PEDIDO',formVendas.n_VENDA.Text, [loCaseInsensitive]) = True then
 BEGIN
  if SDS_NFE1NR_PROTOCOLO_NFE.Text >'' then
  begin
   Application.MESSAGEBOX('NF-E Já Validada Troque o Nº de Sequencia para Gerar uma Nova NF-e !, Deseja substitui-la?', 'Atenção', MB_ICONQUESTION + MB_OK + MB_DEFBUTTON1);
   Exit;
   Abort;
  end else
   begin
   if Application.MESSAGEBOX('Já existe uma NF-E cadastrada com esta Venda !, Deseja substitui-la?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
   begin
    sds_nfe1.delete;
    sds_nfe1.ApplyUpdates(0);
    DM.SDS_NFE.Active := False;
    DM.SDS_NFE.Active := True;
    DM.sds_nfe_itens.Active := False;
    DM.sds_nfe_itens.Active := True;
   end;
   //ShowMessage('Já existe um NF-E cadastrada com esta Venda !!!');
   RxDBComboEdit2.SetFocus;
  end;
  end;

if Application.MESSAGEBOX('Confirma a Geração da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 //Exit;
if RxDBComboEdit2.Text ='' then
begin
ShowMessage('Favor Preencha o CFOP esta em branco');
RxDBComboEdit2.SetFocus;
Exit;
Abort;
end else
if  dm.SDS_EmpresaNUMERO.Text ='' then
begin
ShowMessage('Favor Volte nas Configurações da empresa e Corrija o Numero da Rua que esta em branco');
Exit;
Abort;
end else
 if  formVendas.Sds_pedidosNUMERO.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o Numero da Rua do cliente que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosCOD_IBGE.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o código do IBGE que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_EmpresaCOD_CID_IBGE.Text ='' then
begin
ShowMessage('Favor Volte nas Configurações da empresa e e Corrija o código do IBGE que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosCEP.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o CEP que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosENDERECO.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o Endereço do Cliente que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosCIDADE.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o Nome da cidade que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosBAIRRO.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o Nome do Bairro que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosCPF_CNPJ.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o CPF ou CNPJ que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosUF.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija a UF que esta em branco');
Exit;
Abort;
end else

begin
DM.SDS_NFE.Active := False;
DM.SDS_NFE.Active := True;
DM.sds_nfe_itens.Active := False;
DM.sds_nfe_itens.Active := True;

dm.SDS_NFE.Insert;
dm.SDS_NFE.EDIT;
dm.SPC_NOTA_NFE.ExecProc;
N:= (DM.SPC_NOTA_NFE.ParamByName('NR_NOTA').AsInteger);
if Edit1.value = 0 then
begin
Edit1.Text := IntToStr(N);
dm.sds_nfeNr_nota.Text                :=  edit1.text;
end else
if Edit1.value > 0 then
begin
dm.sds_nfeNr_nota.Text                :=  edit1.text;
end;
DM.sds_nfeDt_emissao.AsDateTime       :=  Date;
DM.sds_nfeDt_lancamento.AsDateTime    :=  date;
DM.sds_nfevl_mercadorias.Text         :=  formvendas.Sds_PedidosVALOR_ITENS.Text;
DM.sds_nfeVl_descontos.Text           :=  formvendas.Sds_PedidosVALOR_DESCONTO.Text;
dm.sds_nfecod_cliente.Text            :=  formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
dm.sds_nfeVl_acrescimos.text          :=  formvendas.Sds_PedidosENC_FINANCEIRO.Text;
DM.SDS_NFECOD_PGTO.Text               :=  formvendas.Sds_PedidosCOD_PAGTO.Text;
DM.SDS_NFECD_FUNCIONARIO.Text         :=  formvendas.Sds_PedidosCOD_VENDEDOR.text;
DM.SDS_NFESERIE_NF.Text               :=  '1';
DM.SDS_NFENR_PEDIDO.Text              :=  formvendas.N_venda.Text;
dm.SDS_NFEVL_AVISTA.Text              :=  formvendas.Sds_PedidosValor_avista.text;
DM.SDS_NFEVL_PRAZO.Text               :=  formvendas.Sds_PedidosValor_prazo.text;
dm.SDS_NFECD_EMPRESA.Text             :=  DM.SDS_EmpresaCODIGO.Text;
DM.SDS_NFEN_SEQUENCIA.Text            :=  '1';
DM.SDS_NFECD_CFOP.Text                :=  RxDBComboEdit2.Text;
DM.SDS_NFECFOP_DESC.Text              :=  suiEdit2.Text;
dm.SDS_NFECD_TRANSPORTADORA.Text      :=  RxDBComboEdit1.Text;
DM.SDS_NFEPLACA_TRANSP.Text           :=  Edit5.Text;
DM.SDS_NFEQt_volumes.Text             :=  Edit3.text;
DM.SDS_NFEespecie_volumes.Text        :=  Edit4.text;
DM.SDS_NFEMarca_volumes.Text          := 'UN';
DM.SDS_NFENr_volumes.Text             :=  Edit3.text;
DM.SDS_NFEPEso_liquido.Text           :=  Edit2.text;
DM.SDS_NFEPEso_liquido.Text           :=  Edit2.text;
DM.SDS_NFETP.TEXT                     :=  formVendas.Sds_pedidosTP.TEXT;

dm.SDS_Clientes.ACTIVE := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.add('select * from clientes where codigo =:cod order by NOME_RS ASC');
dm.SDS_Clientes.Params.ParamByName('cod').AsInteger :=  formVendas.Sds_pedidosCODIGO_CLIENTE.AsInteger;
dm.SDS_Clientes.ACTIVE := True;


DM.SDS_NFENOME_CLIENTE_FOR.Text       :=  dm.SDS_ClientesNOME_rs.Text;
DM.SDS_NFEBAIRRO_CLIENTE_FORN.Text    :=  dm.SDS_ClientesBAIRRO.Text;

DM.SDS_NFECEP_CLIENTE_FORN.Text       :=  dm.SDS_ClientesCEP.Text;
DM.SDS_NFETELEFONE.Text               :=  dm.SDS_ClientesTELEFONE.Text;
dm.SDS_NFECPF_CNPJ_CLIENTE_FORN.text  :=  dm.SDS_ClientesCPF_CNPJ.Text;
dm.SDS_NFETIPO_PESSOA.text            :=  dm.SDS_ClientesTIPO.Text;
dm.SDS_NFECOD_IBGE.Text               :=  dm.SDS_ClientesCOD_IBGE.Text;
DM.SDS_NFEPRODUTOR_RURAL.Text         :=  dm.SDS_ClientesPRODUTOR_RURAL.Text;
IF TRIM(dm.SDS_ClientesRG_IE.Text) = 'ISENTO' then
DM.SDS_NFEIE_CLIENTE_FORN.Text        := ''
ELSE
DM.SDS_NFEIE_CLIENTE_FORN.Text        :=  dm.SDS_ClientesRG_IE.Text;
if dm.SDS_ClientesNUMERO.Text = '' THEN
dm.SDS_NFEEND_NUM_CLIENTE.Text        := '0'
ELSE
dm.SDS_NFEEND_NUM_CLIENTE.Text        :=  dm.SDS_ClientesNUMERO.Text;
DM.SDS_NFEIE_PRODUTOR.Text            :=  dm.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
dm.SDS_NFECIDADE_CLIENTE_FORN.text    :=  dm.SDS_ClientesCIDADE.Text;
DM.SDS_NFEUF_CLIENTE_FORN.Text        :=  dm.SDS_ClientesUF.Text;
dm.SDS_NFEENDERECO_CLI_FORN.Text      :=  dm.SDS_ClientesENDERECO.text;
DM.SDS_NFEPAGAMENTO.text              :=  formVendas.Sds_pedidosPAGAMENTO.text;
dm.SDS_NFEVL_FRETE.ASFLOAT            :=  CurrencyEdit1.Value;
DM.SDS_NFEVL_SEGURO.AsFloat           :=  CurrencyEdit2.Value;
DM.SDS_NFEVL_SERVICOS.ASFLOAT         :=  CurrencyEdit3.Value;
DM.SDS_NFESTATUS.Text                 :=  'N';

Application.ProcessMessages;
end;

IF RxDBComboEdit1.Text >'' then
BEGIN
DM.SDS_NFECNPJ_TRANSP.Text            :=  DM.Sds_TransportadorCNPJ.Text;
DM.SDS_NFEIE_TRANSP.Text              :=  DM.Sds_TransportadorINSCRICAO.Text;
DM.SDS_NFENOME_TRANSP.Text            :=  DM.Sds_TransportadorNOME_TRANSP.TEXT;
DM.SDS_NFEEND_TRANSPORTADOR.TEXT      :=  DM.Sds_TransportadorENDERECO.Text +' ' + DM.Sds_TransportadorBAIRRO.Text;
DM.SDS_NFECIDADE_TRANSP.Text          :=  DM.Sds_TransportadorCIDADE.Text;
DM.SDS_NFEUF_TRANSP.Text              :=  DM.Sds_TransportadorUF.Text;
DM.SDS_NFEPLACA_TRANSP.text           :=  Edit5.text;
DM.SDS_NFEUF_PLACA_TRANSP.text        :=  ComboBox1.Text;

end;
DM.SDS_NFE.Post;


formvendas.Sds_Pedidos_itens.First;
Contador := formvendas.Sds_Pedidos_itens.RecordCount;

For E:=1 to Contador do
 begin
dm.sds_nfe_itens.Insert;
dm.sds_nfe_itens.Edit;

    with QBuscaItens do
      begin
         close;
         Parambyname('cod_ven').AsInteger:= strtoint(formvendas.N_venda.Text);
         Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
         open;
         Last;
      end;

 IF DM.SDS_CONFIGURACOESEXCLUI_SERV_NFE.Text = 'S' then
 begin
    IF QBuscaItensPROD_SERV.Text = 'P' then
    BEGIN
      NValor:=1;
      tam := length(RemoveChar(formvendas.Sds_Pedidos_itensCODIGO_PRODUTO.Text));

      NItem:=NItem+NValor;
      dm.sds_nfe_itensITEN.AsInteger               := NItem;
      dm.sds_nfe_itensNR_SEQUENCIA.Text            := '1';
      dm.sds_nfe_itensNR_NOTA.Text                 := edit1.text;
      if tam = 13 then
          begin
      dm.sds_nfe_itensCOD_PRODUTO.Text             := formvendas.Sds_Pedidos_itensCODIGO_PRODUTO.Text;
          end else
          begin
      dm.sds_nfe_itensCOD_PRODUTO.Text             := '';
      end;


      dm.sds_nfe_itensCD_ATUALIZACAO.AsInteger     := strtoint(formvendas.N_venda.Text);
      DM.sds_nfe_itensCODIGO_PROD.Text             := formvendas.Sds_Pedidos_itensCODIGO_PROD.Text;
      dm.sds_nfe_itensDESCRICAO_PRODUTO.Text       := formvendas.Sds_Pedidos_itensDESCRICAO_PRODUTO.Text;
      dm.sds_nfe_itensVL_DESCONTO.asfloat          := ABS(formvendas.Sds_Pedidos_itensDESCONTO.AsFloat);
      dm.sds_nfe_itensQT_PRODUTO.asfloat           := formvendas.Sds_Pedidos_itensQUANTIDADE.AsFloat;
      dm.sds_nfe_itensDESC_UNIDADE.Text            := formvendas.Sds_Pedidos_itensUNIDADE.Text;
      dm.sds_nfe_itensVL_OUTROS.asfloat            := formvendas.Sds_PedidosENC_FINANCEIRO.asfloat / dm.sds_nfe_itens.RecordCount;
      dm.sds_nfe_itensCD_CLIENTE.Text              := formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
      dm.sds_nfe_itensVL_UNITARIO.asfloat          := formvendas.Sds_Pedidos_itensPRECO_UNITARIO.Asfloat;
      if DM.SDS_CONFIGURACOESTP_DESC.Text =  'U' then
      dm.sds_nfe_itensVL_TOTAL.AsFloat             := formvendas.Sds_Pedidos_itensPRECO_TOTAL.AsFloat +  ABS(formvendas.Sds_Pedidos_itensDESCONTO.AsFloat)
      else
      dm.sds_nfe_itensVL_TOTAL.AsFloat             := formvendas.Sds_Pedidos_itensPRECO_TOTAL.AsFloat;

      if CheckBox3.Checked = True then
      begin
      if CheckBox1.Checked = True then
      DM.sds_nfe_itensCFOP.Text                    := '5929'
      ELSE
      if RxDBComboEdit2.Text = '5202' then
      DM.sds_nfe_itensCFOP.Text                    := '5202'
      ELSE
      if DM.SDS_NFETIPO_PESSOA.Text = 'J' THEN
      BEGIN
      DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_REV_EST.Text;
      end;
      if DM.SDS_NFETIPO_PESSOA.Text = 'F' THEN
      BEGIN
      DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_EST_VENDA.Text;
      end;
      dm.sds_nfe_itensCST.Text                     := QBuscaItensCST_VENDA.Text;
      dm.sds_nfe_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_EST.Text;
      dm.sds_nfe_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_EST.Text;
      dm.sds_nfe_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
      end else
      if CheckBox4.Checked = True then
      begin
      if CheckBox1.Checked = True then
      DM.sds_nfe_itensCFOP.Text                    := '6929'
      ELSE
      if RxDBComboEdit2.Text = '6202' then
      DM.sds_nfe_itensCFOP.Text                    := '6202'
      ELSE
      if DM.SDS_NFETIPO_PESSOA.Text = 'J' THEN
      BEGIN
      DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_REV_INTER.Text;
      end;
      if DM.SDS_NFETIPO_PESSOA.Text = 'F' THEN
      BEGIN
      DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_INTER_VENDA.Text;
      end;
      dm.sds_nfe_itensCST.Text                     := QBuscaItensCST_VENDA_INTER.Text;
      dm.sds_nfe_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_INTER_EST.Text;
      dm.sds_nfe_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_INTER_EST.Text;
      dm.sds_nfe_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
      end;

      IF QBuscaItensNCM_SH.Text > '' THEN
      BEGIN
      DM.sds_nfe_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
      end else
      IF QBuscaItensNCM_SH_1.Text > '' THEN
      begin
      DM.sds_nfe_itensCOD_NCM.Text                 := QBuscaItensNCM_SH_1.Text;
      end;
      DM.sds_nfe_itensCEST.Text                 := QBuscaItensCEST.Text;


      dm.sds_nfe_itensALIQ_ICM.AsFloat               := formvendas.sds_pedidos_itensPERC_ICM.AsFloat ;


      dm.sds_nfe_itensALIQ_IPI.AsFloat               := formvendas.sds_pedidos_itensPERC_IPI.AsFloat ;
      dm.sds_nfe_itensVL_IPI.AsFloat                 := formvendas.sds_pedidos_itensVL_IPI.AsFloat;
      dm.sds_nfe_itensVL_BASE_IPI.AsFloat            := formvendas.sds_pedidos_itensBASE_IPI.AsFloat;



      dm.sds_nfe_itensALIQ_ISS.AsFloat               := formvendas.sds_pedidos_itensPERC_ISS.AsFloat ;
      dm.sds_nfe_itensVL_ISS.AsFloat                 := formvendas.sds_pedidos_itensVL_ISS.AsFloat;
      dm.sds_nfe_itensVL_BASE_ISS.AsFloat            := formvendas.sds_pedidos_itensBASE_ISS.AsFloat ;



      {CALCULO DO PIS E COFINS}
      dm.sds_nfe_itensVL_BASE_PIS.AsFloat            := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
      dm.sds_nfe_itensVL_BASE_COFINS.AsFloat         := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
      DM.sds_nfe_itensALIQ_PIS.AsFloat               := formvendas.sds_pedidos_itensPERC_PIS.AsFloat;
      DM.sds_nfe_itensALIQ_COFINS.AsFloat            := formvendas.Sds_Pedidos_itensPERC_COFINS.AsFloat;
      dm.sds_nfe_itensVL_PIS.AsFloat                 := formvendas.sds_pedidos_itensVL_PIS.AsFloat ;
      dm.sds_nfe_itensVL_COFINS.AsFloat              := formvendas.sds_pedidos_itensVL_COFINS.AsFloat ;


      if ConvertCurrency(edtBaseICMSST.Text) > 0  then
      begin
        dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat      := (ConvertCurrency(edtBaseICMSST.Text) / 100) * dm.sds_nfe_itensVL_TOTAL.AsFloat;
        dm.sds_nfe_itensALIQ_ICM_SUBST.AsFloat         := ConvertCurrency(edtPercentualICMSST.text);
        dm.sds_nfe_itensVL_ICM_SUBST.AsFloat           := (ConvertCurrency(edtPercentualICMSST.text) / 100) * dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat;
      end
      else
      begin
        dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat      := formvendas.sds_pedidos_itensBASE_ICMS_SUBST.AsFloat ;
        dm.sds_nfe_itensALIQ_ICM_SUBST.AsFloat         := DM.Sds_Vendas_itensPERC_ICMS_SUBST.AsFloat;
        dm.sds_nfe_itensVL_ICM_SUBST.AsFloat           := formvendas.sds_pedidos_itensVL_ICMS_SUBST.AsFloat  ;
      end;

      dm.sds_nfe_itens.Post;
     end;
    end else
    begin
      tam := length(RemoveChar(formvendas.Sds_Pedidos_itensCODIGO_PRODUTO.Text));

      NValor:=1;
      NItem:=NItem+NValor;
      dm.sds_nfe_itensITEN.AsInteger               := NItem;
      dm.sds_nfe_itensNR_SEQUENCIA.Text            := '1';
      dm.sds_nfe_itensNR_NOTA.Text                 := edit1.text;
      if tam = 13 then
          begin
      dm.sds_nfe_itensCOD_PRODUTO.Text             := formvendas.Sds_Pedidos_itensCODIGO_PRODUTO.Text;
          end else
          begin
      dm.sds_nfe_itensCOD_PRODUTO.Text             := '';
      end;


      dm.sds_nfe_itensCD_ATUALIZACAO.AsInteger     := strtoint(formvendas.N_venda.Text);
      DM.sds_nfe_itensCODIGO_PROD.Text             := formvendas.Sds_Pedidos_itensCODIGO_PROD.Text;
      dm.sds_nfe_itensDESCRICAO_PRODUTO.Text       := formvendas.Sds_Pedidos_itensDESCRICAO_PRODUTO.Text;
      dm.sds_nfe_itensVL_DESCONTO.asfloat          := ABS(formvendas.Sds_Pedidos_itensDESCONTO.AsFloat);
      dm.sds_nfe_itensQT_PRODUTO.asfloat           := formvendas.Sds_Pedidos_itensQUANTIDADE.AsFloat;
      dm.sds_nfe_itensDESC_UNIDADE.Text            := formvendas.Sds_Pedidos_itensUNIDADE.Text;
      dm.sds_nfe_itensVL_OUTROS.asfloat            := formvendas.Sds_PedidosENC_FINANCEIRO.asfloat / dm.sds_nfe_itens.RecordCount;
      dm.sds_nfe_itensCD_CLIENTE.Text              := formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
      dm.sds_nfe_itensVL_UNITARIO.asfloat          := formvendas.Sds_Pedidos_itensPRECO_UNITARIO.Asfloat;
      if DM.SDS_CONFIGURACOESTP_DESC.Text =  'U' then
      dm.sds_nfe_itensVL_TOTAL.AsFloat             := formvendas.Sds_Pedidos_itensPRECO_TOTAL.AsFloat +  ABS(formvendas.Sds_Pedidos_itensDESCONTO.AsFloat)
      else
      dm.sds_nfe_itensVL_TOTAL.AsFloat             := formvendas.Sds_Pedidos_itensPRECO_TOTAL.AsFloat;

      if CheckBox3.Checked = True then
      begin
      if CheckBox1.Checked = True then
      DM.sds_nfe_itensCFOP.Text                    := '5929'
      ELSE
      if RxDBComboEdit2.Text = '5202' then
      DM.sds_nfe_itensCFOP.Text                    := '5202'
      ELSE
      if DM.SDS_NFETIPO_PESSOA.Text = 'J' THEN
      BEGIN
      DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_REV_EST.Text;
      end;
      if DM.SDS_NFETIPO_PESSOA.Text = 'F' THEN
      BEGIN
      DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_EST_VENDA.Text;
      end;
      dm.sds_nfe_itensCST.Text                     := QBuscaItensCST_VENDA.Text;
      dm.sds_nfe_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_EST.Text;
      dm.sds_nfe_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_EST.Text;
      dm.sds_nfe_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
      end else
      if CheckBox4.Checked = True then
      begin
      if CheckBox1.Checked = True then
      DM.sds_nfe_itensCFOP.Text                    := '6929'
      ELSE
      if RxDBComboEdit2.Text = '6202' then
      DM.sds_nfe_itensCFOP.Text                    := '6202'
      ELSE
      if DM.SDS_NFETIPO_PESSOA.Text = 'J' THEN
      BEGIN
      DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_REV_INTER.Text;
      end;
      if DM.SDS_NFETIPO_PESSOA.Text = 'F' THEN
      BEGIN
      DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_INTER_VENDA.Text;
      end;
      dm.sds_nfe_itensCST.Text                     := QBuscaItensCST_VENDA_INTER.Text;
      dm.sds_nfe_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_INTER_EST.Text;
      dm.sds_nfe_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_INTER_EST.Text;
      dm.sds_nfe_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
      end;

      IF QBuscaItensNCM_SH.Text > '' THEN
      BEGIN
      DM.sds_nfe_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
      end else
      IF QBuscaItensNCM_SH_1.Text > '' THEN
      begin
      DM.sds_nfe_itensCOD_NCM.Text                 := QBuscaItensNCM_SH_1.Text;
      end;

      dm.sds_nfe_itensALIQ_ICM.AsFloat               := formvendas.sds_pedidos_itensPERC_ICM.AsFloat ;
      dm.sds_nfe_itensVL_ICM.AsFloat                 := formvendas.sds_pedidos_itensVL_ICM.AsFloat;
      dm.sds_nfe_itensVL_BASE_ICM.AsFloat            := formvendas.sds_pedidos_itensBASE_ICMS.AsFloat;


      dm.sds_nfe_itensALIQ_IPI.AsFloat               := formvendas.sds_pedidos_itensPERC_IPI.AsFloat ;
      dm.sds_nfe_itensVL_IPI.AsFloat                 := formvendas.sds_pedidos_itensVL_IPI.AsFloat;
      dm.sds_nfe_itensVL_BASE_IPI.AsFloat            := formvendas.sds_pedidos_itensBASE_IPI.AsFloat;



      dm.sds_nfe_itensALIQ_ISS.AsFloat               := formvendas.sds_pedidos_itensPERC_ISS.AsFloat ;
      dm.sds_nfe_itensVL_ISS.AsFloat                 := formvendas.sds_pedidos_itensVL_ISS.AsFloat;
      dm.sds_nfe_itensVL_BASE_ISS.AsFloat            := formvendas.sds_pedidos_itensBASE_ISS.AsFloat ;



      {CALCULO DO PIS E COFINS}
      dm.sds_nfe_itensVL_BASE_PIS.AsFloat            := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
      dm.sds_nfe_itensVL_BASE_COFINS.AsFloat         := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
      DM.sds_nfe_itensALIQ_PIS.AsFloat               := formvendas.sds_pedidos_itensPERC_PIS.AsFloat;
      DM.sds_nfe_itensALIQ_COFINS.AsFloat            := formvendas.Sds_Pedidos_itensPERC_COFINS.AsFloat;
      dm.sds_nfe_itensVL_PIS.AsFloat                 := formvendas.sds_pedidos_itensVL_PIS.AsFloat ;
      dm.sds_nfe_itensVL_COFINS.AsFloat              := formvendas.sds_pedidos_itensVL_COFINS.AsFloat ;

      if ConvertCurrency(edtBaseICMSST.Text) > 0  then
      begin
        dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat      := (ConvertCurrency(edtBaseICMSST.Text) / 100) * dm.sds_nfe_itensVL_TOTAL.AsFloat;
        dm.sds_nfe_itensALIQ_ICM_SUBST.AsFloat         := ConvertCurrency(edtPercentualICMSST.text);
        dm.sds_nfe_itensVL_ICM_SUBST.AsFloat           := (ConvertCurrency(edtPercentualICMSST.text) / 100) * dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat;
      end
      else
      begin
        dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat      := formvendas.sds_pedidos_itensBASE_ICMS_SUBST.AsFloat ;
        dm.sds_nfe_itensALIQ_ICM_SUBST.AsFloat         := DM.Sds_Vendas_itensPERC_ICMS_SUBST.AsFloat;
        dm.sds_nfe_itensVL_ICM_SUBST.AsFloat           := formvendas.sds_pedidos_itensVL_ICMS_SUBST.AsFloat  ;
      end;

      dm.sds_nfe_itens.Post;
    end;

 formvendas.Sds_Pedidos_itens.next;
 Application.ProcessMessages;
 end;

//SOMA FECHAMENTO DA NFE
NOTA := EDIT1.TEXT;
DM.SDS_NFE.Filtered := False;
DM.SDS_NFE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
DM.SDS_NFE.Filtered := True;

BEGIN
EdtPercentualDesconto := dm.SDS_NFEVL_ACRESCIMOS.AsFloat * 100 / dm.SDS_NFEVL_MERCADORIAS.AsFloat;

dm.sds_nfe_itens.First;
X:= X + dm.sds_nfe_itensVl_ICM.AsFloat;
Y:= Y + dm.sds_nfe_itensVl_IPI.AsFloat;
Z:= Z + dm.sds_nfe_itensVl_ISS.AsFloat;
BX := BX + dm.sds_nfe_itensVL_BASE_ICM.AsFloat;
BY := BY + dm.sds_nfe_itensVL_BASE_IPI.AsFloat;
BZ := BZ + dm.sds_nfe_itensVL_BASE_ISS.AsFloat;
b_icms_st := B_icms_st + dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat;
icm_st   := icm_st + dm.sds_nfe_itensVL_ICM_SUBST.AsFloat;

B_PIS := B_PIS +  dm.sds_nfe_itensVL_BASE_PIS.AsFloat;
PIS   :=  PIS + dm.sds_nfe_itensVL_PIS.AsFloat;
B_COFINS := B_COFINS + dm.sds_nfe_itensVL_BASE_COFINS.AsFloat;
COFINS   := COFINS + dm.sds_nfe_itensVL_COFINS.AsFloat;
desc_t := desc_t +   dm.sds_nfe_itensVL_DESCONTO.AsFloat;
total_g :=total_g +  dm.sds_nfe_itensVL_TOTAL.AsFloat;
dm.sds_nfe_itens.Next;
ICM:=X;
IPI:=Y;
Iss :=Z;
B_ICM := BX;
B_IPI := By;
B_ISS := BZ;
CurrencyEdit4.Value := total_g;
CurrencyEdit5.Value := desc_t;

While not dm.sds_nfe_itens.Eof do
begin
X:= X + dm.sds_nfe_itensVl_ICM.AsFloat;
Y:= Y + dm.sds_nfe_itensVl_IPI.AsFloat;
Z:= Z + dm.sds_nfe_itensVl_ISS.AsFloat;
BX := BX + dm.sds_nfe_itensVL_BASE_ICM.AsFloat;
BY := BY + dm.sds_nfe_itensVL_BASE_IPI.AsFloat;
BZ := BZ + dm.sds_nfe_itensVL_BASE_ISS.AsFloat;

b_icms_st := B_icms_st + dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat;
icm_st   := icm_st + dm.sds_nfe_itensVL_ICM_SUBST.AsFloat;

B_PIS := B_PIS +  dm.sds_nfe_itensVL_BASE_PIS.AsFloat;
PIS   :=  PIS + dm.sds_nfe_itensVL_PIS.AsFloat;
B_COFINS := B_COFINS + dm.sds_nfe_itensVL_BASE_COFINS.AsFloat;
COFINS   := COFINS + dm.sds_nfe_itensVL_COFINS.AsFloat;
desc_t := desc_t +   dm.sds_nfe_itensVL_DESCONTO.AsFloat;
total_g := total_g + dm.sds_nfe_itensVL_TOTAL.AsFloat;
dm.sds_nfe_itens.Edit;
dm.sds_nfe_itensVL_OUTROS.AsFloat :=  dm.sds_nfe_itensVL_TOTAL.AsFloat * EdtPercentualDesconto / 100;
dm.sds_nfe_itens.post;
dm.sds_nfe_itens.ApplyUpdates(0);

dm.sds_nfe_itens.Next;

ICM:=X;
IPI:=Y;
Iss :=Z;
B_ICM := BX;
B_IPI := By;
B_ISS := BZ;
CurrencyEdit4.Value := total_g;
CurrencyEdit5.Value := desc_t;
end;
dm.sds_nfe_itens.First;

DM.SDS_NFE.Edit;
DM.SDS_NFEVL_ICM.aSfloat := ICM;
DM.SDS_NFEVL_IPI.aSfloat := IPI;
DM.SDS_NFEVL_ISS.aSfloat := ISS;
DM.SDS_NFEVL_BASE_ICM.aSfloat := B_ICM;
DM.SDS_NFEVL_BASE_IPI.aSfloat := B_IPI;
DM.SDS_NFEVL_BASE_ISS.aSfloat := B_ISS;

DM.SDS_NFEVL_BASE_PIS.aSfloat := B_PIS;
DM.SDS_NFEVL_BASE_COFINS.aSfloat := B_COFINS;
DM.SDS_NFEVL_PIS.aSfloat := PIS;
DM.SDS_NFEVL_COFINS.aSfloat := COFINS;
DM.SDS_NFEVL_BASE_ICM_SUBST.asfloat := B_icms_st;
DM.SDS_NFEVL_ICM_SUBST.asfloat := icm_st;
DM.SDS_NFEVL_MERCADORIAS.AsFloat      :=  CurrencyEdit4.Value;
DM.SDS_NFEVL_DESCONTOS.AsFloat        :=  CurrencyEdit5.Value;
DM.sds_nfeVl_total.AsFloat            :=  CurrencyEdit4.Value  - CurrencyEdit5.Value + CurrencyEdit1.value + CurrencyEdit2.value + CurrencyEdit3.value + icm_st + IPI;

DM.SDS_NFE.Post;
//dm.sds_nfe_itens.Post;


          // ACHA RESTO DA DIVISÃO
          dm.sds_nfe_itens.First;
          Total1 := 0;
          Xt:= 0;
          Xt:= Xt + StrToFloatDef(dm.sds_nfe_itensVL_OUTROS.Text,0.00);
          dm.sds_nfe_itens.Next;
          TOTAL1 := Xt;
          While not dm.sds_nfe_itens.Eof do
          begin
          Xt:= Xt + StrToFloatDef(dm.sds_nfe_itensVL_OUTROS.Text,0.00);
          dm.sds_nfe_itens.Next;
          Total1:= Xt;
          end;


          //valor_desc := (dm.sds_nfe_itensVL_OUTROS.MaxValue);

               //dm.sds_nfe_itens.Locate('VL_OUTROS',valor_desc,[]);

          total_venda := (dm.SDS_NFEVL_ACRESCIMOS.ASFLOAT - Total1);

      //    Edit13.Text := FloatToStr(total_venda ) ;
         // CurrencyEdit9.Value := total_venda;
        //  dm.sds_nfe_itens.Edit;

        //   dm.sds_nfe_itens.First;
          IF dm.SDS_NFEVL_ACRESCIMOS.ASFLOAT > TOTAL1  then
          begin
           dm.sds_nfe_itens.Edit;
           xt :=dm.sds_nfe_itensVL_OUTROS.AsFloat;
           dm.sds_nfe_itensVL_OUTROS.AsFloat := abs(xt + total_venda);
           dm.sds_nfe_itens.Post;
           dm.sds_nfe_itens.ApplyUpdates(0);
          end ELSE

          IF dm.SDS_NFEVL_ACRESCIMOS.ASFLOAT < TOTAL1   then
          begin
           dm.sds_nfe_itens.Edit;
           xt :=dm.sds_nfe_itensVL_OUTROS.AsFloat;
           dm.sds_nfe_itensVL_OUTROS.AsFloat := abs(xt - total_venda);
           dm.sds_nfe_itens.Post;
           dm.sds_nfe_itens.ApplyUpdates(0);
          end;

confirmar.Enabled := True;
Application.ProcessMessages;
end;
END else


if FormGefaNFe.combobox2.itemIndex = 2 then  // saida tela de consultas vendas
begin
Application.ProcessMessages;

 if SDS_NFE1.Locate('NR_PEDIDO',DM.sds_vendasCODIGO.Text, [loCaseInsensitive]) = True then
 BEGIN
  if (SDS_NFE1NR_PROTOCOLO_NFE.Text > '') AND (SDS_NFE1STATUS_CANCELADO.TEXT = '') then
  begin
   Application.MESSAGEBOX('NF-E Já Validada para esta venda, favor cancelar a Nfe para Gerar uma Nova NF-e !', 'Atenção', MB_ICONQUESTION + MB_OK + MB_DEFBUTTON1);
   Abort;
   Exit;
  end;
  if SDS_NFE1NR_PROTOCOLO_NFE.Text = '' then
  begin
  if Application.MESSAGEBOX('Já existe uma NF-E cadastrada com esta Venda, mas nao Validada!, Deseja substitui-la?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
  begin
  sds_nfe1.delete;
  sds_nfe1.ApplyUpdates(0);
  DM.SDS_NFE.Active := False;
  DM.SDS_NFE.Active := True;
  DM.sds_nfe_itens.Active := False;
  DM.sds_nfe_itens.Active := True;
  RxDBComboEdit2.SetFocus;
 end;
 end;
 end else

if Application.MESSAGEBOX('Confirma a Geração da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 //Exit;
 if  DM.sds_vendasNUMERO.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o Numero da Rua do cliente que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasCOD_IBGE.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o código do IBGE que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasCEP.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o CEP que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasENDERECO.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o Endereço do Cliente que esta em branco');
Exit;
Abort;
end else

if  DM.sds_vendasCIDADE.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o Nome da cidade que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasBAIRRO.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o Nome do Bairro que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasCPF_CNPJ.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o CPF ou CNPJ que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasUF.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija a UF que esta em branco');
Exit;
Abort;
end else
begin

DM.SDS_NFE.Active := False;
DM.SDS_NFE.Active := True;
DM.sds_nfe_itens.Active := False;
DM.sds_nfe_itens.Active := True;

dm.SDS_NFE.Insert;
dm.SDS_NFE.EDIT;
dm.SPC_NOTA_NFE.ExecProc;
N:= (DM.SPC_NOTA_NFE.ParamByName('NR_NOTA').AsInteger);

if Edit1.value = 0 then
begin
Edit1.Text := IntToStr(N);
dm.sds_nfeNr_nota.Text                :=  edit1.text;
end else
if Edit1.value > 0 then
begin
dm.sds_nfeNr_nota.Text                :=  edit1.text;
end;

DM.SDS_VENDAS.FIRST;
Cont := DM.SDS_VENDAS.RecordCount;
For I:=1 to Cont do
begin
DM.SDS_NFE.Edit;
SOMA := SOMA +  DM.sds_vendasVALOR_ITENS.ASFLOAT;
SOMA1 := SOMA1 +  DM.sds_vendasVALOR_DESCONTO.ASFLOAT;
//SOMA2 := SOMA2 +  DM.sds_vendasVALOR_TOTAL.ASFLOAT ;
SOMA3 := SOMA3 +   DM.sds_vendasENC_FINANCEIRO.ASFLOAT;
SOMA4 := SOMA4 +  DM.sds_vendasValor_avista.ASFLOAT;
SOMA5 := SOMA5 +  DM.sds_vendasValor_prazo.ASFLOAT;

DM.sds_nfeDt_emissao.AsDateTime       :=  DATE; //DM.sds_vendasDATA_PEDIDO.AsDateTime;
DM.sds_nfeDt_lancamento.AsDateTime    :=  DATE; //DM.sds_vendasDATA_PEDIDO.AsDateTime;
DM.sds_nfevl_mercadorias.AsFloat      :=  SOMA;
DM.sds_nfeVl_descontos.AsFloat        :=  SOMA1;
DM.sds_nfeVl_total.AsFloat            :=  SOMA2;
dm.sds_nfecod_cliente.Text            :=  DM.sds_vendasCODIGO_CLIENTE.Text;
dm.sds_nfeVl_acrescimos.AsFloat       :=  SOMA3;
DM.SDS_NFECOD_PGTO.Text               :=  DM.sds_vendasCOD_PAGTO.Text;
DM.SDS_NFECD_FUNCIONARIO.Text         :=  DM.sds_vendasCOD_VENDEDOR.text;
DM.SDS_NFESERIE_NF.Text               :=  '1';
DM.SDS_NFENR_PEDIDO.Text              :=  DM.sds_vendasCODIGO.Text;
dm.SDS_NFEVL_AVISTA.AsFloat           :=  SOMA4;
DM.SDS_NFEVL_PRAZO.AsFloat            :=  SOMA5;
dm.SDS_NFECD_EMPRESA.Text             :=  DM.SDS_EmpresaCODIGO.Text;
DM.SDS_NFEN_SEQUENCIA.Text            :=  '1';
DM.SDS_NFECD_CFOP.Text                :=  RxDBComboEdit2.Text;
DM.SDS_NFECFOP_DESC.Text              :=  suiEdit2.Text;
//dM.SDS_NFEVL_BASE_ICM.TEXT            :=  formvendas.Sds_PedidosVALOR_ITENS.TEXT;
dm.SDS_NFECD_TRANSPORTADORA.Text      :=  RxDBComboEdit1.Text;
DM.SDS_NFEPLACA_TRANSP.Text           :=  Edit5.Text;
DM.SDS_NFEQt_volumes.Text             :=  Edit3.text;
DM.SDS_NFEespecie_volumes.Text        :=  Edit4.text;
DM.SDS_NFEMarca_volumes.Text          := 'UN';
DM.SDS_NFENr_volumes.Text             :=  Edit3.text;
DM.SDS_NFEPEso_liquido.Text           :=  Edit2.text;
DM.SDS_NFEPEso_liquido.Text           :=  Edit2.text;
DM.SDS_NFETP.TEXT                     :=  DM.sds_vendasTP.TEXT;

{DM.SDS_NFENOME_CLIENTE_FOR.Text       :=  DM.sds_vendasNOME_CLIENTE.Text;
DM.SDS_NFEBAIRRO_CLIENTE_FORN.Text    :=  DM.sds_vendasBAIRRO.Text;
dm.SDS_NFEEND_NUM_CLIENTE.Text        :=  DM.sds_vendasNUMERO.Text;
DM.SDS_NFECEP_CLIENTE_FORN.Text       :=  DM.sds_vendasCEP.Text;
DM.SDS_NFETELEFONE.Text               :=  DM.sds_vendasFONE.Text;
dm.SDS_NFECPF_CNPJ_CLIENTE_FORN.text  :=  DM.sds_vendasCPF_CNPJ.Text;
dm.SDS_NFETIPO_PESSOA.text            :=  DM.sds_vendasTIPO.Text;
dm.SDS_NFECOD_IBGE.Text               :=  DM.sds_vendasCOD_IBGE.Text;
DM.SDS_NFEPRODUTOR_RURAL.Text         :=  DM.sds_vendasPROD_RURAL.Text;
DM.SDS_NFEIE_CLIENTE_FORN.Text        :=  DM.sds_vendasRG_IE.Text;
DM.SDS_NFEIE_PRODUTOR.Text            :=  DM.sds_vendasIE_PRODUTOR.Text;
dm.SDS_NFECIDADE_CLIENTE_FORN.text    :=  DM.sds_vendasCIDADE.Text;
DM.SDS_NFEUF_CLIENTE_FORN.Text        :=  DM.sds_vendasUF.Text;
dm.SDS_NFEENDERECO_CLI_FORN.Text      :=  DM.sds_vendasENDERECO.text;
  }

dm.SDS_Clientes.ACTIVE := false;
dm.SDS_Clientes.SQL.Clear;
dm.SDS_Clientes.SQL.Add('select * from clientes where codigo =:cod order by NOME_RS ASC');
dm.SDS_Clientes.Params.ParamByName('cod').AsInteger :=  DM.sds_vendasCODIGO_CLIENTE.AsInteger;
dm.SDS_Clientes.ACTIVE := True;


DM.SDS_NFENOME_CLIENTE_FOR.Text       :=  dm.SDS_ClientesNOME_rs.Text;
DM.SDS_NFEBAIRRO_CLIENTE_FORN.Text    :=  dm.SDS_ClientesBAIRRO.Text;
IF Trim(dm.SDS_ClientesRG_IE.Text) = 'ISENTO' then
DM.SDS_NFEIE_CLIENTE_FORN.Text        := ''
ELSE
DM.SDS_NFEIE_CLIENTE_FORN.Text        :=  dm.SDS_ClientesRG_IE.Text;
if dm.SDS_ClientesNUMERO.Text = '' THEN
dm.SDS_NFEEND_NUM_CLIENTE.Text        := '0'
ELSE
dm.SDS_NFEEND_NUM_CLIENTE.Text        :=  dm.SDS_ClientesNUMERO.Text;
DM.SDS_NFECEP_CLIENTE_FORN.Text       :=  dm.SDS_ClientesCEP.Text;
DM.SDS_NFETELEFONE.Text               :=  dm.SDS_ClientesTELEFONE.Text;
dm.SDS_NFECPF_CNPJ_CLIENTE_FORN.text  :=  dm.SDS_ClientesCPF_CNPJ.Text;
dm.SDS_NFETIPO_PESSOA.text            :=  dm.SDS_ClientesTIPO.Text;
dm.SDS_NFECOD_IBGE.Text               :=  dm.SDS_ClientesCOD_IBGE.Text;
DM.SDS_NFEPRODUTOR_RURAL.Text         :=  dm.SDS_ClientesPRODUTOR_RURAL.Text;
DM.SDS_NFEIE_PRODUTOR.Text            :=  dm.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
dm.SDS_NFECIDADE_CLIENTE_FORN.text    :=  dm.SDS_ClientesCIDADE.Text;
DM.SDS_NFEUF_CLIENTE_FORN.Text        :=  dm.SDS_ClientesUF.Text;
dm.SDS_NFEENDERECO_CLI_FORN.Text      :=  dm.SDS_ClientesENDERECO.text;
DM.SDS_NFEPAGAMENTO.text              :=  DM.sds_vendasPAGAMENTO.text;

DM.SDS_NFESTATUS.Text                 :=  'N';
dm.SDS_NFEVL_FRETE.ASFLOAT            :=  CurrencyEdit1.Value;
DM.SDS_NFEVL_SEGURO.AsFloat           :=  CurrencyEdit2.Value;
DM.SDS_NFEVL_SERVICOS.ASFLOAT         :=  CurrencyEdit3.Value;

if CheckBox1.Checked = True then
begin
Edit8.Text := DM.sds_vendasN_CUPOM.Text;
end;

IF RxDBComboEdit1.Text >'' then
BEGIN
DM.SDS_NFECNPJ_TRANSP.Text            :=  DM.Sds_TransportadorCNPJ.Text;
DM.SDS_NFEIE_TRANSP.Text              :=  DM.Sds_TransportadorINSCRICAO.Text;
DM.SDS_NFENOME_TRANSP.Text            :=  DM.Sds_TransportadorNOME_TRANSP.TEXT;
DM.SDS_NFEEND_TRANSPORTADOR.TEXT      :=  DM.Sds_TransportadorENDERECO.Text +' ' + DM.Sds_TransportadorBAIRRO.Text;
DM.SDS_NFECIDADE_TRANSP.Text          :=  DM.Sds_TransportadorCD_CIDADE.Text;
DM.SDS_NFEUF_TRANSP.Text              :=  DM.Sds_TransportadorUF.Text;
DM.SDS_NFEPLACA_TRANSP.text           :=  Edit5.text;
DM.SDS_NFEUF_PLACA_TRANSP.text        :=  ComboBox1.Text;
end;
DM.SDS_NFE.Post;
Application.ProcessMessages;

/// juntar os itens iguais

  DM.sds_vendas_itens.First;
  Contador := DM.sds_vendas_itens.RecordCount;
  For E:=1 to Contador do
  begin

   with QBuscaItens do
      begin
         close;
         Parambyname('cod_ven').AsInteger:= strtoint(DM.sds_vendasCODIGO.Text);
         Parambyname('codpro').AsInteger:= strtoint(DM.Sds_Vendas_itensCODIGO_PROD.Text);
         open;
         Last;
      end;

      dm.sds_nfe_itens.Insert;
      dm.sds_nfe_itens.Edit;

      if DM.SDS_CONFIGURACOESEXCLUI_SERV_NFE.Text = 'S' then
      begin
        IF QBuscaItensPROD_SERV.Text = 'P' then
        BEGIN

        tam := Length(RemoveChar(DM.sds_vendas_itensCODIGO_PRODUTO.Text));
        NValor:=1;
        NItem:=NItem+NValor;
        dm.sds_nfe_itensITEN.AsInteger               := NItem;
        dm.sds_nfe_itensNR_SEQUENCIA.Text            := '1';
        dm.sds_nfe_itensNR_NOTA.Text                 := edit1.text;
        if tam = 13 then
            begin
        dm.sds_nfe_itensCOD_PRODUTO.Text             := DM.sds_vendas_itensCODIGO_PRODUTO.Text;
            end else
            begin
        dm.sds_nfe_itensCOD_PRODUTO.Text             := '';
        end;

        dm.sds_nfe_itensCD_ATUALIZACAO.AsInteger     := strtoint(DM.sds_vendasCODIGO.Text);
        DM.sds_nfe_itensCODIGO_PROD.Text             := DM.sds_vendas_itensCODIGO_PROD.Text;
        dm.sds_nfe_itensDESCRICAO_PRODUTO.Text       := DM.sds_vendas_itensDESCRICAO_PRODUTO.Text;
        dm.sds_nfe_itensVL_DESCONTO.AsFloat          := Abs(DM.sds_vendas_itensDESCONTO.AsFloat);
        dm.sds_nfe_itensQT_PRODUTO.AsFloat           := DM.sds_vendas_itensQUANTIDADE.AsFloat;
        dm.sds_nfe_itensVL_UNITARIO.ASFLOAT             := DM.sds_vendas_itensPRECO_UNITARIO.AsFloat;
        if DM.SDS_CONFIGURACOESTP_DESC.Text =  'U' then
        dm.sds_nfe_itensVL_TOTAL.AsFloat               := DM.sds_vendas_itensPRECO_TOTAL.asfloat  + Abs(DM.sds_vendas_itensDESCONTO.AsFloat)
        else
        dm.sds_nfe_itensVL_TOTAL.Text                := DM.sds_vendas_itensPRECO_TOTAL.Text ;

        dm.sds_nfe_itensDESC_UNIDADE.Text            := DM.sds_vendas_itensUNIDADE.Text;
        dm.sds_nfe_itensVL_OUTROS.Text               := DM.sds_vendas_itensENC_FINANCEIRO.TEXT;
        dm.sds_nfe_itensCD_CLIENTE.Text              := DM.sds_vendasCODIGO_CLIENTE.Text;

        if CheckBox3.Checked = True then
        begin
        if CheckBox1.Checked = True then
        DM.sds_nfe_itensCFOP.Text                    := '5929'
        ELSE
        if RxDBComboEdit2.Text = '5202' then
        DM.sds_nfe_itensCFOP.Text                    := '5202'
        ELSE
        if DM.SDS_NFETIPO_PESSOA.Text = 'J' THEN
        BEGIN
        DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_REV_EST.Text;
        end;
        if DM.SDS_NFETIPO_PESSOA.Text = 'F' THEN
        BEGIN
        DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_EST_VENDA.Text;
        end;
        dm.sds_nfe_itensCST.Text                     := QBuscaItensCST_VENDA.Text;
        dm.sds_nfe_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_EST.Text;
        dm.sds_nfe_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_EST.Text;
        dm.sds_nfe_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
        end else
        if CheckBox4.Checked = True then
        begin
        if CheckBox1.Checked = True then
        DM.sds_nfe_itensCFOP.Text                    := '6929'
        ELSE
        if RxDBComboEdit2.Text = '6202' then
        DM.sds_nfe_itensCFOP.Text                    := '6202'
        ELSE
        if DM.SDS_NFETIPO_PESSOA.Text = 'J' THEN
        BEGIN
        DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_REV_INTER.Text;
        end;
        if DM.SDS_NFETIPO_PESSOA.Text = 'F' THEN
        BEGIN
        DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_INTER_VENDA.Text;
        end;
        dm.sds_nfe_itensCST.Text                     := QBuscaItensCST_VENDA_INTER.Text;
        dm.sds_nfe_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_INTER_EST.Text;
        dm.sds_nfe_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_INTER_EST.Text;
        dm.sds_nfe_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
        end;

        IF QBuscaItensNCM_SH.Text > '' THEN
        BEGIN
        DM.sds_nfe_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
        end else
        IF QBuscaItensNCM_SH_1.Text > '' THEN
        begin
        DM.sds_nfe_itensCOD_NCM.Text                 := QBuscaItensNCM_SH_1.Text;
        end;
         DM.sds_nfe_itensCEST.Text                   := QBuscaItensCEST.Text;

        if QBuscaItensFLAG_ICMS.Text = 'T' then
        begin
        dm.sds_nfe_itensALIQ_ICM.AsFloat               := QBuscaItensPERC_ICMS_ESTADUAL.AsFloat;
        dm.sds_nfe_itensVL_ICM.AsFloat                 := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_ICMS_ESTADUAL.AsFloat)/ 100;
        dm.sds_nfe_itensVL_BASE_ICM.AsFloat            := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
        end else
        dm.sds_nfe_itensALIQ_ICM.AsFloat               := 0;
        dm.sds_nfe_itensVL_ICM.AsFloat                 := 0;
        dm.sds_nfe_itensVL_BASE_ICM.AsFloat            := 0;

        dm.sds_nfe_itensALIQ_IPI.AsFloat               := DM.Sds_Vendas_itensPERC_IPI.AsFloat;
        dm.sds_nfe_itensVL_IPI.AsFloat                 := DM.Sds_Vendas_itensVL_IPI.AsFloat ;
        dm.sds_nfe_itensVL_BASE_IPI.AsFloat            := DM.Sds_Vendas_itensBASE_IPI.AsFloat;

        dm.sds_nfe_itensALIQ_ISS.AsFloat               := DM.Sds_Vendas_itensPERC_ISS.AsFloat;
        dm.sds_nfe_itensVL_ISS.AsFloat                 := DM.Sds_Vendas_itensVL_ISS.AsFloat;
        dm.sds_nfe_itensVL_BASE_ISS.AsFloat            := DM.Sds_Vendas_itensBASE_ISS.AsFloat;

        dm.sds_nfe_itensVL_BASE_PIS.AsFloat            := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
        dm.sds_nfe_itensVL_BASE_COFINS.AsFloat         := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
        DM.sds_nfe_itensALIQ_PIS.AsFloat               := QBuscaItensPERC_ALIQUOTA_PIS.AsFloat;
        DM.sds_nfe_itensALIQ_COFINS.AsFloat            := QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat;
        dm.sds_nfe_itensVL_PIS.AsFloat                 := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_ALIQUOTA_PIS.AsFloat)/ 100;
        dm.sds_nfe_itensVL_COFINS.AsFloat              := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat)/ 100;

        if ConvertCurrency(edtBaseICMSST.Text) > 0  then
        begin
          dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat      := (ConvertCurrency(edtBaseICMSST.Text) / 100) * dm.sds_nfe_itensVL_TOTAL.AsFloat;
          dm.sds_nfe_itensALIQ_ICM_SUBST.AsFloat         := ConvertCurrency(edtPercentualICMSST.text);
          dm.sds_nfe_itensVL_ICM_SUBST.AsFloat           := (ConvertCurrency(edtPercentualICMSST.text) / 100) * dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat;
        end
        else
        begin
          dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat      := formvendas.sds_pedidos_itensBASE_ICMS_SUBST.AsFloat ;
          dm.sds_nfe_itensALIQ_ICM_SUBST.AsFloat         := DM.Sds_Vendas_itensPERC_ICMS_SUBST.AsFloat;
          dm.sds_nfe_itensVL_ICM_SUBST.AsFloat           := formvendas.sds_pedidos_itensVL_ICMS_SUBST.AsFloat  ;
        end;
        dm.sds_nfe_itens.Post;
        end;

      end else
      begin
        tam := Length(RemoveChar(DM.sds_vendas_itensCODIGO_PRODUTO.Text));
        NValor:=1;
        NItem:=NItem+NValor;
        dm.sds_nfe_itensITEN.AsInteger               := NItem;
        dm.sds_nfe_itensNR_SEQUENCIA.Text            := '1';
        dm.sds_nfe_itensNR_NOTA.Text                 := edit1.text;
        if tam = 13 then
            begin
        dm.sds_nfe_itensCOD_PRODUTO.Text             := DM.sds_vendas_itensCODIGO_PRODUTO.Text;
            end else
            begin
        dm.sds_nfe_itensCOD_PRODUTO.Text             := '';
        end;

        dm.sds_nfe_itensCD_ATUALIZACAO.AsInteger     := strtoint(DM.sds_vendasCODIGO.Text);
        DM.sds_nfe_itensCODIGO_PROD.Text             := DM.sds_vendas_itensCODIGO_PROD.Text;
        dm.sds_nfe_itensDESCRICAO_PRODUTO.Text       := DM.sds_vendas_itensDESCRICAO_PRODUTO.Text;
        dm.sds_nfe_itensVL_DESCONTO.AsFloat          := Abs(DM.sds_vendas_itensDESCONTO.AsFloat);
        dm.sds_nfe_itensQT_PRODUTO.AsFloat           := DM.sds_vendas_itensQUANTIDADE.AsFloat;
        dm.sds_nfe_itensVL_UNITARIO.ASFLOAT             := DM.sds_vendas_itensPRECO_UNITARIO.AsFloat;
        if DM.SDS_CONFIGURACOESTP_DESC.Text =  'U' then
        dm.sds_nfe_itensVL_TOTAL.AsFloat               := DM.sds_vendas_itensPRECO_TOTAL.asfloat  + Abs(DM.sds_vendas_itensDESCONTO.AsFloat)
        else
        dm.sds_nfe_itensVL_TOTAL.Text                := DM.sds_vendas_itensPRECO_TOTAL.Text ;

        dm.sds_nfe_itensDESC_UNIDADE.Text            := DM.sds_vendas_itensUNIDADE.Text;
        dm.sds_nfe_itensVL_OUTROS.Text               := DM.sds_vendas_itensENC_FINANCEIRO.TEXT;
        dm.sds_nfe_itensCD_CLIENTE.Text              := DM.sds_vendasCODIGO_CLIENTE.Text;

        if CheckBox3.Checked = True then
        begin
        if CheckBox1.Checked = True then
        DM.sds_nfe_itensCFOP.Text                    := '5929'
        ELSE
        if RxDBComboEdit2.Text = '5202' then
        DM.sds_nfe_itensCFOP.Text                    := '5202'
        ELSE
        if DM.SDS_NFETIPO_PESSOA.Text = 'J' THEN
        BEGIN
        DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_REV_EST.Text;
        end;
        if DM.SDS_NFETIPO_PESSOA.Text = 'F' THEN
        BEGIN
        DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_EST_VENDA.Text;
        end;
        dm.sds_nfe_itensCST.Text                     := QBuscaItensCST_VENDA.Text;
        dm.sds_nfe_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_EST.Text;
        dm.sds_nfe_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_EST.Text;
        dm.sds_nfe_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
        end else
        if CheckBox4.Checked = True then
        begin
        if CheckBox1.Checked = True then
        DM.sds_nfe_itensCFOP.Text                    := '6929'
        ELSE
        if RxDBComboEdit2.Text = '6202' then
        DM.sds_nfe_itensCFOP.Text                    := '6202'
        ELSE
        if DM.SDS_NFETIPO_PESSOA.Text = 'J' THEN
        BEGIN
        DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_REV_INTER.Text;
        end;
        if DM.SDS_NFETIPO_PESSOA.Text = 'F' THEN
        BEGIN
        DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_INTER_VENDA.Text;
        end;
        dm.sds_nfe_itensCST.Text                     := QBuscaItensCST_VENDA_INTER.Text;
        dm.sds_nfe_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_INTER_EST.Text;
        dm.sds_nfe_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_INTER_EST.Text;
        dm.sds_nfe_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
        end;

        IF QBuscaItensNCM_SH.Text > '' THEN
        BEGIN
        DM.sds_nfe_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
        end else
        IF QBuscaItensNCM_SH_1.Text > '' THEN
        begin
        DM.sds_nfe_itensCOD_NCM.Text                 := QBuscaItensNCM_SH_1.Text;
        end;
        if QBuscaItensFLAG_ICMS.Text = 'T' then
        begin
        dm.sds_nfe_itensALIQ_ICM.AsFloat               := QBuscaItensPERC_ICMS_ESTADUAL.AsFloat;
        dm.sds_nfe_itensVL_ICM.AsFloat                 := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_ICMS_ESTADUAL.AsFloat)/ 100;
        dm.sds_nfe_itensVL_BASE_ICM.AsFloat            := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
        end else
        dm.sds_nfe_itensALIQ_ICM.AsFloat               := 0;
        dm.sds_nfe_itensVL_ICM.AsFloat                 := 0;
        dm.sds_nfe_itensVL_BASE_ICM.AsFloat            := 0;

        dm.sds_nfe_itensALIQ_IPI.AsFloat               := DM.Sds_Vendas_itensPERC_IPI.AsFloat;
        dm.sds_nfe_itensVL_IPI.AsFloat                 := DM.Sds_Vendas_itensVL_IPI.AsFloat ;
        dm.sds_nfe_itensVL_BASE_IPI.AsFloat            := DM.Sds_Vendas_itensBASE_IPI.AsFloat;

        dm.sds_nfe_itensALIQ_ISS.AsFloat               := DM.Sds_Vendas_itensPERC_ISS.AsFloat;
        dm.sds_nfe_itensVL_ISS.AsFloat                 := DM.Sds_Vendas_itensVL_ISS.AsFloat;
        dm.sds_nfe_itensVL_BASE_ISS.AsFloat            := DM.Sds_Vendas_itensBASE_ISS.AsFloat;

        dm.sds_nfe_itensVL_BASE_PIS.AsFloat            := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
        dm.sds_nfe_itensVL_BASE_COFINS.AsFloat         := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
        DM.sds_nfe_itensALIQ_PIS.AsFloat               := QBuscaItensPERC_ALIQUOTA_PIS.AsFloat;
        DM.sds_nfe_itensALIQ_COFINS.AsFloat            := QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat;
        dm.sds_nfe_itensVL_PIS.AsFloat                 := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_ALIQUOTA_PIS.AsFloat)/ 100;
        dm.sds_nfe_itensVL_COFINS.AsFloat              := (formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value * QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat)/ 100;

        if ConvertCurrency(edtBaseICMSST.Text) > 0  then
        begin
          dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat      := (ConvertCurrency(edtBaseICMSST.Text) / 100) * dm.sds_nfe_itensVL_TOTAL.AsFloat;
          dm.sds_nfe_itensALIQ_ICM_SUBST.AsFloat         := ConvertCurrency(edtPercentualICMSST.text);
          dm.sds_nfe_itensVL_ICM_SUBST.AsFloat           := (ConvertCurrency(edtPercentualICMSST.text) / 100) * dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat;
        end
        else
        begin
          dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat      := formvendas.sds_pedidos_itensBASE_ICMS_SUBST.AsFloat ;
          dm.sds_nfe_itensALIQ_ICM_SUBST.AsFloat         := DM.Sds_Vendas_itensPERC_ICMS_SUBST.AsFloat;
          dm.sds_nfe_itensVL_ICM_SUBST.AsFloat           := formvendas.sds_pedidos_itensVL_ICMS_SUBST.AsFloat  ;
        end;

        dm.sds_nfe_itens.Post;
      end;

     DM.sds_vendas_itens.next;
    Application.ProcessMessages;

  end;

 DM.SDS_VENDAS.NEXT;
 END;
//DM.SDS_NFE.Post;

DM.SDS_NFE.Edit;

NOTA := EDIT1.TEXT;
DM.SDS_NFE.Filtered := False;
DM.SDS_NFE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
DM.SDS_NFE.Filtered := True;

EdtPercentualDesconto := dm.SDS_NFEVL_ACRESCIMOS.AsFloat * 100 / dm.SDS_NFEVL_MERCADORIAS.AsFloat;

dm.sds_nfe_itens.First;
X:= X + dm.sds_nfe_itensVl_ICM.AsFloat;
Y:= Y + dm.sds_nfe_itensVl_IPI.AsFloat;
Z:= Z + dm.sds_nfe_itensVl_ISS.AsFloat;
BX := BX + dm.sds_nfe_itensVL_BASE_ICM.AsFloat;
BY := BY + dm.sds_nfe_itensVL_BASE_IPI.AsFloat;
BZ := BZ + dm.sds_nfe_itensVL_BASE_ISS.AsFloat;
b_icms_st := B_icms_st + dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat;
icm_st   := icm_st + dm.sds_nfe_itensVL_ICM_SUBST.AsFloat;

B_PIS := B_PIS +  dm.sds_nfe_itensVL_BASE_PIS.AsFloat;
PIS   :=  PIS + dm.sds_nfe_itensVL_PIS.AsFloat;
B_COFINS := B_COFINS + dm.sds_nfe_itensVL_BASE_COFINS.AsFloat;
COFINS   := COFINS + dm.sds_nfe_itensVL_COFINS.AsFloat;
desc_t :=  desc_t +  dm.sds_nfe_itensVL_DESCONTO.AsFloat;
total_g :=  total_g + dm.sds_nfe_itensVL_TOTAL.AsFloat;
dm.sds_nfe_itens.Next;
ICM:=X;
IPI:=Y;
Iss :=Z;
B_ICM := BX;
B_IPI := By;
B_ISS := BZ;
CurrencyEdit4.Value := total_g;
CurrencyEdit5.Value := desc_t;

While not dm.sds_nfe_itens.Eof do
begin
X:= X + dm.sds_nfe_itensVl_ICM.AsFloat;
Y:= Y + dm.sds_nfe_itensVl_IPI.AsFloat;
Z:= Z + dm.sds_nfe_itensVl_ISS.AsFloat;
BX := BX + dm.sds_nfe_itensVL_BASE_ICM.AsFloat;
BY := BY + dm.sds_nfe_itensVL_BASE_IPI.AsFloat;
BZ := BZ + dm.sds_nfe_itensVL_BASE_ISS.AsFloat;
b_icms_st := B_icms_st + dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat;
icm_st   := icm_st + dm.sds_nfe_itensVL_ICM_SUBST.AsFloat;

B_PIS := B_PIS +  dm.sds_nfe_itensVL_BASE_PIS.AsFloat;
PIS   :=  PIS + dm.sds_nfe_itensVL_PIS.AsFloat;
B_COFINS := B_COFINS + dm.sds_nfe_itensVL_BASE_COFINS.AsFloat;
COFINS   := COFINS + dm.sds_nfe_itensVL_COFINS.AsFloat;
desc_t := desc_t +    dm.sds_nfe_itensVL_DESCONTO.AsFloat;
total_g := total_g +  dm.sds_nfe_itensVL_TOTAL.AsFloat;
 dm.sds_nfe_itens.Edit;
 dm.sds_nfe_itensVL_OUTROS.AsFloat :=  dm.sds_nfe_itensVL_TOTAL.AsFloat * EdtPercentualDesconto / 100;
 dm.sds_nfe_itens.post;
 dm.sds_nfe_itens.ApplyUpdates(0);

 dm.sds_nfe_itens.Next;

ICM:=X;
IPI:=Y;
Iss :=Z;
B_ICM := BX;
B_IPI := By;
B_ISS := BZ;
CurrencyEdit4.Value := total_g;
CurrencyEdit5.Value := desc_t;
end;
dm.sds_nfe_itens.First;


          // ACHA RESTO DA DIVISÃO
          dm.sds_nfe_itens.First;
          Total1 := 0;
          Xt:= 0;
          Xt:= Xt + StrToFloatDef(dm.sds_nfe_itensVL_OUTROS.Text,0.00);
          dm.sds_nfe_itens.Next;
          TOTAL1 := Xt;
          While not dm.sds_nfe_itens.Eof do
          begin
          Xt:= Xt + StrToFloatDef(dm.sds_nfe_itensVL_OUTROS.Text,0.00);
          dm.sds_nfe_itens.Next;
          Total1:= Xt;
          end;


          //valor_desc := (dm.sds_nfe_itensVL_OUTROS.MaxValue);

               //dm.sds_nfe_itens.Locate('VL_OUTROS',valor_desc,[]);

          total_venda := (dm.SDS_NFEVL_ACRESCIMOS.ASFLOAT - Total1);

      //    Edit13.Text := FloatToStr(total_venda ) ;
         // CurrencyEdit9.Value := total_venda;
        //  dm.sds_nfe_itens.Edit;

        //   dm.sds_nfe_itens.First;
          IF dm.SDS_NFEVL_ACRESCIMOS.ASFLOAT > TOTAL1  then
          begin
           dm.sds_nfe_itens.Edit;
           xt :=dm.sds_nfe_itensVL_OUTROS.AsFloat;
           dm.sds_nfe_itensVL_OUTROS.AsFloat := abs(xt + total_venda);
           dm.sds_nfe_itens.Post;
           dm.sds_nfe_itens.ApplyUpdates(0);
          end ELSE

          IF dm.SDS_NFEVL_ACRESCIMOS.ASFLOAT < TOTAL1   then
          begin
           dm.sds_nfe_itens.Edit;
           xt :=dm.sds_nfe_itensVL_OUTROS.AsFloat;
           dm.sds_nfe_itensVL_OUTROS.AsFloat := abs(xt - total_venda);
           dm.sds_nfe_itens.Post;
           dm.sds_nfe_itens.ApplyUpdates(0);
          end;

DM.SDS_NFE.Edit;
DM.SDS_NFEVL_ICM.aSfloat := ICM;
DM.SDS_NFEVL_IPI.aSfloat := IPI;
DM.SDS_NFEVL_ISS.aSfloat := ISS;
DM.SDS_NFEVL_BASE_ICM.aSfloat := B_ICM;
DM.SDS_NFEVL_BASE_IPI.aSfloat := B_IPI;
DM.SDS_NFEVL_BASE_ISS.aSfloat := B_ISS;

DM.SDS_NFEVL_BASE_PIS.aSfloat := B_PIS;
DM.SDS_NFEVL_BASE_COFINS.aSfloat := B_COFINS;
DM.SDS_NFEVL_PIS.aSfloat := PIS;
DM.SDS_NFEVL_COFINS.aSfloat := COFINS;
DM.SDS_NFEVL_BASE_ICM_SUBST.asfloat := B_icms_st;
DM.SDS_NFEVL_ICM_SUBST.asfloat := icm_st;
//DM.sds_nfeVl_total.AsFloat  :=  formvendas.Sds_PedidosVALOR_TOTAL.AsFloat + CurrencyEdit1.value + CurrencyEdit2.value + CurrencyEdit3.value + icm_st + IPI;
SOMA2 := SOMA2 +  DM.sds_vendasVALOR_TOTAL.ASFLOAT +  + icm_st + IPI;


DM.SDS_NFEVL_MERCADORIAS.AsFloat      :=  CurrencyEdit4.Value;
DM.SDS_NFEVL_DESCONTOS.AsFloat        :=  CurrencyEdit5.Value;
DM.sds_nfeVl_total.AsFloat            :=  CurrencyEdit4.Value  - CurrencyEdit5.Value + CurrencyEdit1.value + CurrencyEdit2.value + CurrencyEdit3.value + icm_st + IPI;

//DM.sds_nfeVl_total.AsFloat  := SOMA2;
DM.SDS_NFE.Post;
confirmar.Enabled := True;
end;
end else

if FormGefaNFe.combobox2.itemIndex = 1 then  ///nfe entrada
begin
  Application.ProcessMessages;

if SDS_NFE1.Locate('N_NOTA_ENTRADA',dm.SDS_NotasFiscaisCODIGO_NOTA.Text, [loCaseInsensitive]) = True then
 BEGIN
  if Application.MESSAGEBOX('Já existe uma NF-E cadastrada com esta Venda !, Deseja substitui-la?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
  sds_nfe1.delete;
  sds_nfe1.ApplyUpdates(0);
  DM.SDS_NFE.Active := False;
  DM.SDS_NFE.Active := True;
  DM.sds_nfe_itens.Active := False;
  DM.sds_nfe_itens.Active := True;
 end;
 //ShowMessage('Já existe um NF-E cadastrada com esta Venda !!!');
 RxDBComboEdit2.SetFocus;
  end;
if Application.MESSAGEBOX('Confirma a Geração da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 //Exit;
begin
if RxDBComboEdit2.Text ='' then
begin
ShowMessage('Favor Preencha o CFOP esta em branco');
RxDBComboEdit2.SetFocus;
Exit;
Abort;
end else
if  dm.SDS_EmpresaNUMERO.Text ='' then
begin
ShowMessage('Favor Volte nas Configurações da empresa e Corrija o Numero da Rua que esta em branco');
Exit;
Abort;
end else
if  dm.Sds_notasfiscaisEND_NUM_CLIENTE.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o Numero da Rua do fornecedor que esta em branco');
Exit;
Abort;
end else
if dm.SDS_NotasFiscaisCOD_IBGE.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o código do IBGE que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_EmpresaCOD_CID_IBGE.Text ='' then
begin
ShowMessage('Favor Volte nas Configurações da empresa e e Corrija o código do IBGE que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_NotasFiscaisCEP_CLIENTE_FORN.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o CEP que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_NotasFiscaisENDERECO_CLI_FORN.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o Endereço do Cliente que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_NotasFiscaisCIDADE_CLIENTE_FORN.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o Nome da cidade que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_NotasFiscaisBAIRRO_CLIENTE_FORN.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o Nome do Bairro que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_NotasFiscaisCNPJ.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija o CPF ou CNPJ que esta em branco');
Exit;
Abort;
end else
if  dm.SDS_NotasFiscaisUF_CLIENTE_FORN.Text ='' then
begin
ShowMessage('Favor Volte na NF-E e Corrija a UF que esta em branco');
Exit;
Abort;
end else
DM.SDS_NFE.Active := False;
DM.SDS_NFE.Active := True;
DM.sds_nfe_itens.Active := False;
DM.sds_nfe_itens.Active := True;

dm.SDS_NFE.Insert;
dm.SDS_NFE.EDIT;
dm.SPC_NOTA_NFE.ExecProc;
N:= (DM.SPC_NOTA_NFE.ParamByName('NR_NOTA').AsInteger);
if Edit1.value = 0 then
begin
Edit1.Text := IntToStr(N);
dm.sds_nfeNr_nota.Text                :=  edit1.text;
end else
if Edit1.value > 0 then
begin
dm.sds_nfeNr_nota.Text                :=  edit1.text;
end;
DM.sds_nfeDt_emissao.AsDateTime       :=  date;
DM.sds_nfeDt_lancamento.AsDateTime    :=  Date;
DM.sds_nfevl_mercadorias.Text         :=  dm.SDS_NotasFiscaisVALOR_TOTAL_PRODUTOS.Text;
DM.sds_nfeVl_descontos.AsFloat        :=  Abs(dm.SDS_NotasFiscaisVALOR_DESCONTO.ASFLOAT);
DM.sds_nfeVl_total.Text               :=  dm.SDS_NotasFiscaisVALOR_TOTAL_PRODUTOS.Text;
dm.sds_nfecod_cliente.Text            :=  DM.sds_notasfiscaisCOD_Fornecedor.Text;
dm.sds_nfeVl_acrescimos.text          :=  DM.sds_notasfiscaisvalor_outras_despesas.Text;
//DM.SDS_NFECOD_PGTO.Text               :=  //formvendas.Sds_PedidosCOD_PAGTO.Text;
DM.SDS_NFECD_FUNCIONARIO.Text         :=  dm.SDS_UsuariosCodigo.text;
DM.SDS_NFESERIE_NF.Text               :=  '1';
DM.SDS_NFENR_PEDIDO.Text              :=  '';
dm.SDS_NFEVL_AVISTA.Text              := dm.SDS_NotasFiscaisValor_avista.text;
DM.SDS_NFEVL_PRAZO.Text               := dm.SDS_NotasFiscaisValor_prazo.text;
dm.SDS_NFECD_EMPRESA.Text             :=  DM.SDS_EmpresaCODIGO.Text;
DM.SDS_NFEN_SEQUENCIA.Text            :=  '1';
DM.SDS_NFECD_CFOP.Text                :=  RxDBComboEdit2.Text;
DM.SDS_NFECFOP_DESC.Text              :=  suiEdit2.Text;
//dM.SDS_NFEVL_BASE_ICM.TEXT            :=  formvendas.Sds_PedidosVALOR_ITENS.TEXT;
dm.SDS_NFECD_TRANSPORTADORA.Text      :=  RxDBComboEdit1.Text;
DM.SDS_NFEPLACA_TRANSP.Text           :=  Edit5.Text;
DM.SDS_NFEQt_volumes.Text             :=  Edit3.text;
DM.SDS_NFEespecie_volumes.Text        :=  Edit4.text;
DM.SDS_NFEMarca_volumes.Text          := 'UN';
DM.SDS_NFENr_volumes.Text             :=  Edit3.text;
DM.SDS_NFEPEso_liquido.Text           :=  Edit2.text;
Dm.SDS_NFEN_NOTA_ENTRADA.Text         :=  dm.SDS_NotasFiscaisNUM_NOTA.Text;
DM.SDS_NFETP.TEXT                     :=  dm.SDS_NotasFiscaisTP.TEXT;

dm.SDS_Fornecedores.Active := true;
dm.SDS_Fornecedores.locate('CODIGO', RemoveChar(dm.SDS_NotasFiscaisCOD_FORNECEDOR.Text),[]);

DM.SDS_NFENOME_CLIENTE_FOR.Text       :=  dm.SDS_NotasFiscaisFORNECEDOR.Text;
DM.SDS_NFEBAIRRO_CLIENTE_FORN.Text    :=  dm.SDS_NotasFiscaisBAIRRO_CLIENTE_FORN.Text;
dm.SDS_NFEEND_NUM_CLIENTE.Text        :=  dm.SDS_NotasFiscaisEND_NUM_CLIENTE.Text;
DM.SDS_NFECEP_CLIENTE_FORN.Text       :=  dm.SDS_NotasFiscaisCEP_CLIENTE_FORN.Text;
DM.SDS_NFETELEFONE.Text               :=  dm.SDS_NotasFiscaisTELEFONE.Text;
dm.SDS_NFECPF_CNPJ_CLIENTE_FORN.text  :=  dm.SDS_NotasFiscaisCNPJ.Text;
dm.SDS_NFETIPO_PESSOA.text            :=  dm.SDS_NotasFiscaisTIPO_PESSOA.Text;
dm.SDS_NFECOD_IBGE.Text               :=  dm.SDS_NotasFiscaisCOD_IBGE.Text;
if dm.SDS_FornecedoresPRODUTOR_RURAL.text = 'S' then
begin
DM.SDS_NFEPRODUTOR_RURAL.Text         :=  'S' ;
DM.SDS_NFEIE_CLIENTE_FORN.Text        :=  '';
DM.SDS_NFEIE_PRODUTOR.Text            :=  dm.SDS_FornecedoresINSC_PRODUTOR.Text;
end else
begin
DM.SDS_NFEPRODUTOR_RURAL.Text         :=  'N';//dm.SDS_NotasFiscaisPROD_RURAL.Text;
DM.SDS_NFEIE_CLIENTE_FORN.Text        :=  dm.SDS_NotasFiscaisIE.Text;
DM.SDS_NFEIE_PRODUTOR.Text            :=  ''; //dm.SDS_NotasFiscaisIE_PRODUTOR.Text;
end;

dm.SDS_NFECIDADE_CLIENTE_FORN.text    :=  dm.SDS_NotasFiscaisCIDADE_CLIENTE_FORN.Text;
DM.SDS_NFEUF_CLIENTE_FORN.Text        :=  dm.SDS_NotasFiscaisUF_CLIENTE_FORN.Text;
dm.SDS_NFEENDERECO_CLI_FORN.Text      :=  DM.SDS_NotasFiscaisENDERECO_CLI_FORN.Text;
DM.SDS_NFEPAGAMENTO.text              :=  dm.SDS_NotasFiscaisPagamento.text;
DM.SDS_NFESTATUS.Text                 :=  'N';

IF RxDBComboEdit1.Text >'' then
BEGIN
DM.SDS_NFECNPJ_TRANSP.Text            :=  DM.Sds_TransportadorCNPJ.Text;
DM.SDS_NFEIE_TRANSP.Text              :=  DM.Sds_TransportadorINSCRICAO.Text;
DM.SDS_NFENOME_TRANSP.Text            :=  DM.Sds_TransportadorNOME_TRANSP.TEXT;
DM.SDS_NFEEND_TRANSPORTADOR.TEXT      :=  DM.Sds_TransportadorENDERECO.Text +' ' + DM.Sds_TransportadorBAIRRO.Text;
DM.SDS_NFECIDADE_TRANSP.Text          :=  DM.Sds_TransportadorCD_CIDADE.Text;
DM.SDS_NFEUF_TRANSP.Text              :=  DM.Sds_TransportadorUF.Text;
end;
DM.SDS_NFE.Post;
DM.SDS_NFE.ApplyUpdates(0);

Application.ProcessMessages;

dm.SDS_NotasFiscaisItens.First;
Contador := dm.SDS_NotasFiscaisItens.RecordCount;
For E:=1 to Contador do
 begin
dm.sds_nfe_itens.Insert;
dm.sds_nfe_itens.Edit;
  tam := length(dm.SDS_NotasFiscaisItensCODIGO_PRODUTO.Text);
 NValor:=1;
 NItem:=NItem+NValor;
dm.sds_nfe_itensITEN.AsInteger               := NItem;
dm.sds_nfe_itensNR_SEQUENCIA.Text            := '1';
dm.sds_nfe_itensNR_NOTA.Text                 := edit1.text;
if tam = 13 then
    begin
dm.sds_nfe_itensCOD_PRODUTO.Text             := dm.SDS_NotasFiscaisItensCODIGO_PRODUTO.Text;
    end else
    begin
dm.sds_nfe_itensCOD_PRODUTO.Text             := '';
end;
//dm.sds_nfe_itensCOD_PRODUTO.Text             := formatar(dm.SDS_NotasFiscaisItensCODIGO_PRODUTO.Text,13,False,'0');
DM.sds_nfe_itensCODIGO_PROD.Text             := dm.SDS_NotasFiscaisItensCODIGO_PRODUTO.Text;
dm.sds_nfe_itensDESCRICAO_PRODUTO.Text       := dm.SDS_NotasFiscaisItensDESCRICAO.Text;
dm.sds_nfe_itensVL_DESCONTO.Text             := dm.SDS_NotasFiscaisItensVALOR_DESC.TEXT;
dm.sds_nfe_itensQT_PRODUTO.Text              := dm.SDS_NotasFiscaisItensQUANTIDADE.Text;
dm.sds_nfe_itensVL_UNITARIO.Text             := dm.SDS_NotasFiscaisItensvALOR_UNI.Text;
dm.sds_nfe_itensVL_TOTAL.Text                := dm.SDS_NotasFiscaisItensTOTAL_ITEM.Text;
dm.sds_nfe_itensDESC_UNIDADE.Text            := dm.SDS_NotasFiscaisItensDESC_UNIDADE.Text;
dm.sds_nfe_itensVL_OUTROS.Text               := '0';//dm.SDS_NotasFiscaisItensENC_FINANCEIRO.TEXT;
dm.sds_nfe_itensCD_CLIENTE.Text              :=  dm.SDS_NotasFiscaisCOD_FORNECEDOR.Text;
DM.sds_nfe_itensCFOP.Text                    :=  RxDBComboEdit2.Text;
DM.sds_nfe_itensCOD_NCM.Text                 := dm.SDS_NotasFiscaisItensNCM_SH.Text;
dm.sds_nfe_itensCST.text                     := DM.SDS_NotasFiscaisItensCST.TEXT;
dm.sds_nfe_itenscd_atualizacao.text          := DM.SDS_NotasFiscaisItensCODIGO_NOTA.TEXT;
dm.sds_nfe_itens.Post;
dm.sds_nfe_itens.ApplyUpdates(0);
dm.SDS_NotasFiscaisItens.next;
Application.ProcessMessages;

end;
END;


NOTA := EDIT1.TEXT;
DM.SDS_NFE.Filtered := False;
DM.SDS_NFE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
DM.SDS_NFE.Filtered := True;
confirmar.Enabled := True;
end;


end;


procedure TFormGefaNFe.btnCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFormGefaNFe.confirmarClick(Sender: TObject);

begin

 Try
 IF (RxDBComboEdit2.Text = '5202') or (RxDBComboEdit2.Text = '6202')  then
 if Edit7.Text = '' Then
 begin
    ShowMessage('Chave da NFe originaria deve ser informada para NFe de devolução');
    Edit7.SetFocus;
    Exit;
 end;
{ IF CheckBox1.Checked = true then
 if Edit8.Text = '' Then
 begin
    ShowMessage('Nº do cupom deve ser Informado');
 end ELSE  }

if DM.sds_nfe_itens.Locate('COD_NCM','',[])=True then
begin
  ShowMessage('Codigo do NCM tem que ser Preenchido.. Favor Corrigir');
end else

  begin
   DM.SDS_Crediario.Active := False;
   DM.SDS_Crediario.Active := True;

  // if FormNFE=nil   then
    begin
     CoInitialize(nil);
     //Application.CreateForm(TFormNFE, FormNFE);
     Application.ProcessMessages;
      FormNFE:=TFormNFE.Create(self);
      FormNFe.btnCriarEnviarNFCe.Enabled := false;
      FormNFe.Tag := 1;
      FormNFE.ShowModal;
       CoUninitialize;

      IF PODEFECHAR = True then
      BEGIN
      CLOSE;
      end;

      {
        FormGefaNFe.CHAVE.Clear;
        FormGefaNFe.PROT.Clear;
        FormGefaNFe.RECIBO.Clear;

        FormGefaNFe.CHAVE.Text := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe;
        FormGefaNFe.PROT.Text := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt;
        FormGefaNFe.RECIBO.Text := ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec;
         }
      end;
      end;
     except
      //     ShowMessage('Erro ao Tentar Exibir o Formulário!!');
        //end;
  on E: EDatabaseError do
                ShowMessage(E.Message);
end;
end;


procedure TFormGefaNFe.RxDBComboEdit2ButtonClick(Sender: TObject);
begin

  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    SUIEdit2.Text := DM.qrcfopNATUREZA.Text;
    RxDBComboEdit2.Text :=  DM.qrcfopCFOP.Text;
  end;
end;

procedure TFormGefaNFe.FormShow(Sender: TObject);
var
  CST : string;
  qrSQL: TFDQuery;
begin
  if ComboBox2.ItemIndex = 0 then
  begin
    DM.qrcfop.Active := False;
    DM.qrcfop.sql.Clear;
    DM.qrcfop.sql.add('select * from TABELA_CFOP where cfop >=4000');
    DM.qrcfop.Active := true;
  end;

  if ComboBox2.ItemIndex = 1 then
  begin
    DM.qrcfop.Active := False;
    DM.qrcfop.sql.Clear;
    DM.qrcfop.sql.add('select * from TABELA_CFOP where cfop <=4000');
    DM.qrcfop.Active := true;
  end;

  dm.SDS_NFE.Active := False;
  DM.sds_nfe_itens.Active := False;

  dm.Sds_Transportador.Active := False;
  dm.Sds_Transportador.Active := True;

  Edit6.text := DM.SDS_CONFIGURACOESMSG_CUPOMFISCAL.Text;

  RxDBComboEdit2.SetFocus;

  qrSQL:= TFDQuery.Create(nil);
  qrSQL.Connection:= DM.Coneccao;
  qrSQL.SQL.Add('select REGIME from EMPRESA order by codigo');
  qrSQL.Open;

  if qrSQL.FieldByName('REGIME').AsString = 'S' then
  begin
    if formVendas.CheckBox3.Checked = True then
    begin
      Edit6.Text:= 'EMPRESA OPTANTE PELO SIMPLES NACIONAL NAO GERA DIREITO A '+
      'CREDITO DE ICMS, ISS E DE IPI. ICMS CALCULADO CONFORME ICMS ST. ANEXO XI E XIII';
    end
    else
    begin
      Edit6.Text:= 'EMPRESA OPTANTE PELO SIMPLES NACIONAL NAO GERA DIREITO A '+
      'CREDITO DE ICMS, ISS E DE IPI. ICMS RECOLHIDO PELO SIMPLES NACIONAL.';
    end;
  end;
end;

procedure TFormGefaNFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormGefaNFe := nil;
end;


procedure TFormGefaNFe.RxDBComboEdit2Exit(Sender: TObject);
begin
if RxDBComboEdit2.Text > '' then
begin
if DM.qrcfop.Locate('CFOP', RxDBComboEdit2.Text,[])=True then
 begin
   SUIEdit2.Text := DM.qrcfopNATUREZA.Text;
   RxDBComboEdit1.SetFocus;
 end else

 if not DM.qrcfop.Locate('CFOP', RxDBComboEdit2.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
   RxDBComboEdit2.SetFocus;
 end;

 if (RxDBComboEdit2.Text = '5929') then
 begin
  CheckBox1.Enabled := True;
  CheckBox1.Checked := True;
  CheckBox1Click(sender);
  edit8.SetFocus;
 end;

 if (RxDBComboEdit2.Text > '5000') and (RxDBComboEdit2.Text < '6000') then
 begin
  CheckBox3.Enabled := True;
  CheckBox3.Checked := True;
  CheckBox4.Enabled := False;
  CheckBox4.Checked := False;

 CheckBox2.Checked := false;
 Edit7.Enabled := false;
 suiButton7.Enabled := false;
 ComboBox4.ItemIndex := 0;
 end;

 if (RxDBComboEdit2.Text > '6000') and (RxDBComboEdit2.Text < '8000') then
 begin
  CheckBox4.Enabled := True;
  CheckBox4.Checked := True;
  CheckBox3.Enabled := False;
  CheckBox3.Checked := False;

  CheckBox2.Checked := false;
 Edit7.Enabled := false;
 suiButton7.Enabled := false;
 ComboBox4.ItemIndex := 0;
 end;

 if (RxDBComboEdit2.Text >= '5200') and (RxDBComboEdit2.Text <= '5213')  then
 begin
 CheckBox2.Checked := True;
 Edit7.Enabled := True;
 suiButton7.Enabled := True;
 ComboBox4.ItemIndex := 3;
 Edit7.SetFocus;
 end;


 if (RxDBComboEdit2.Text = '5662') or (RxDBComboEdit2.Text = '6662') then
 begin
 CheckBox2.Checked := True;
 Edit7.Enabled := True;
 suiButton7.Enabled := True;
 ComboBox4.ItemIndex := 3;
 Edit7.SetFocus;
 end;

  if  (RxDBComboEdit2.Text >= '6200') and (RxDBComboEdit2.Text <= '6213') then
 begin
 CheckBox2.Enabled := True;
 CheckBox2.Checked := True;
 Edit7.Enabled := True;
 suiButton7.Enabled := True;
 ComboBox4.ItemIndex := 3;
 Edit7.SetFocus;
 end;
 if  (RxDBComboEdit2.Text >= '6411') and (RxDBComboEdit2.Text <= '6412') then
 begin
 CheckBox2.Enabled := True;
 CheckBox2.Checked := True;
 Edit7.Enabled := True;
 suiButton7.Enabled := True;
 ComboBox4.ItemIndex := 3;
 Edit7.SetFocus;
 end;
 if  (RxDBComboEdit2.Text >= '5411') and (RxDBComboEdit2.Text <= '5412') then
 begin
 CheckBox2.Enabled := True;
 CheckBox2.Checked := True;
 Edit7.Enabled := True;
 suiButton7.Enabled := True;
 ComboBox4.ItemIndex := 3;
 Edit7.SetFocus;
 end;

 if  (RxDBComboEdit2.Text = '5556') or (RxDBComboEdit2.Text = '6556') then
 begin
   CheckBox2.Enabled := True;
   CheckBox2.Checked := True;
   Edit7.Enabled := True;
   suiButton7.Enabled := True;
   ComboBox4.ItemIndex := 3;
   Edit7.SetFocus;
 end;

 if  (RxDBComboEdit2.Text = '5949') then
 begin
   CheckBox4.Enabled := True;
  CheckBox4.Checked := False;
  CheckBox3.Enabled := False;
  CheckBox3.Checked := False;

  CheckBox2.Checked := false;
  Edit7.Enabled := false;
  suiButton7.Enabled := false;
  ComboBox4.ItemIndex := 0;
 end;

   if (RxDBComboEdit2.Text = '6949') then
   begin
      CheckBox4.Enabled := True;
      CheckBox4.Checked := True;
      CheckBox3.Enabled := False;
      CheckBox3.Checked := False;

      CheckBox2.Checked := false;
      Edit7.Enabled := false;
      suiButton7.Enabled := false;
      ComboBox4.ItemIndex := 0;
   end;
 end;
end;

procedure TFormGefaNFe.ComboEdit1Exit(Sender: TObject);
begin
//suiEdit3.Text := dm.SDS_CSTDESCRICAO_CST.text;
end;

procedure TFormGefaNFe.RxDBComboEdit1Exit(Sender: TObject);
begin

if RxDBComboEdit1.Text > '' then
begin
 if DM.Sds_Transportador.Locate('CD_TRANSPORTADOR', RxDBComboEdit1.Text,[])=True then
 begin
 suiEdit1.text := dm.Sds_TransportadorNOME_TRANSP.text;
 Edit5.SetFocus;
 end else
 if not DM.Sds_Transportador.Locate('CD_TRANSPORTADOR', RxDBComboEdit1.Text,[])=True then
 begin
   ShowMessage('Transportador não localizado');
   RxDBComboEdit1.SetFocus;
 end;
end;
end;

procedure TFormGefaNFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key=VK_F3) then
      begin
      IF  Inserir.Enabled = TRUE THEN
      BEGIN
      InserirClick(Sender);
      end;
      end;

      if (Key=VK_F10) then
      begin
      IF  confirmar.Enabled = TRUE THEN
      BEGIN
      confirmarClick(Sender);
      end;
      end;

      if (Key=VK_F5) then
      begin
      IF  btncancelar.Enabled = TRUE THEN
      BEGIN
      btnCancelarClick(Sender);
      end;
      end;
end;

procedure TFormGefaNFe.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

if not (ActiveControl is TCustomGrid) and NOT (ActiveControl is TRxDBComboEdit)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;



procedure TFormGefaNFe.RxDBComboEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;

procedure TFormGefaNFe.ComboEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;

procedure TFormGefaNFe.RxDBComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;




procedure TFormGefaNFe.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked = false then
begin
  edit7.enabled      := false;
  suiButton7.Enabled := FALSE;
  //CheckBox1.Checked  := True;
end else
if CheckBox2.Checked = True then
begin
  edit7.enabled      := True;
  suiButton7.Enabled := True;
 // CheckBox2.Checked  := false;
end;
end;

procedure TFormGefaNFe.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = false then
begin
  edit8.enabled := false;
  edit9.enabled := false;
end else
if CheckBox1.Checked = True then
begin
  edit8.enabled := True;
  edit9.enabled := True;
end;
end;

procedure TFormGefaNFe.suiButton7Click(Sender: TObject);
var
  NFeRTXT: TNFeRTXT;
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    //tenta TXT
    DM.ACBrNFe1.NotasFiscais.Add;
    NFeRTXT := TNFeRTXT.Create(DM.ACBrNFe1.NotasFiscais.Items[0].NFe);
    NFeRTXT.CarregarArquivo(OpenDialog1.FileName);
    if NFeRTXT.LerTxt then
       NFeRTXT.Free
    else
    begin
       NFeRTXT.Free;
       //tenta XML
       DM.ACBrNFe1.NotasFiscais.Clear;
       try
          DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
       except
          ShowMessage('Arquivo NFe Inválido');
          exit;
       end;
    end;

    //trvwNFe.Items.Clear;

    for n:=0 to DM.ACBrNFe1.NotasFiscais.Count-1 do
    begin
    with DM.ACBrNFe1.NotasFiscais.Items[n].NFe do
     begin
      // trvwNFe.Items.AddChild(Node,'chNFe= '     +procNFe.chNFe);

      edit7.Text := procNFe.chNFe;
     end;
    end;
end;
end;

procedure TFormGefaNFe.ComboBox4Change(Sender: TObject);
begin
 IF ComboBox4.ItemIndex = 0 then
 begin
  CheckBox2.Enabled := False;
 // CheckBox1.Enabled := True;
 end else

 IF ComboBox4.ItemIndex = 1 then
 begin
 CheckBox2.Enabled := true;
 //CheckBox1.Enabled := true;
 end else
 IF ComboBox4.ItemIndex = 2 then
 begin
 CheckBox2.Enabled := true;
 //CheckBox1.Enabled := true;

 end;

end;

procedure TFormGefaNFe.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
{IF KEY = #13 then
BEGIN
if length(trim(Edit9.Text)) > 3 then
ShowMessage('Nº do ecf nao pode ter mais que 3 casas');
Edit9.SetFocus;}
end;


procedure TFormGefaNFe.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     { Para não deixar apagar o registro }
   if  Key = VK_DELETE then
       Key:= VK_NONAME;
       Key:= NaoInsereDBGrid(TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key);

if Key = vk_down then
begin
 if DBGrid1.SelectedField = DM.sds_nfe_itensCOD_NCM then
begin
  if Length(DM.sds_nfe_itensCOD_NCM.Text) < 8 then
  begin
    MessageDlg( 'Quantidade de caracteres no NCM deve ser 08... Favor Corrigir....',mtInformation,[mbOK],0);
   DBGRID1.COLUMNS.Grid.Fields[5].FocusControl;
  end;
end;
end;

if key = vk_return then
begin
 if DBGrid1.SelectedField = DM.sds_nfe_itensCOD_NCM then
begin
  if Length(DM.sds_nfe_itensCOD_NCM.Text) < 8 then
  begin
    MessageDlg( 'Quantidade de caracteres no NCM deve ser 08... Favor Corrigir....',mtInformation,[mbOK],0);
   DBGRID1.COLUMNS.Grid.Fields[5].FocusControl;
  end;
  end;
end;
end;

procedure TFormGefaNFe.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{ Para não deixar apagar o registro }
   if  Key = VK_DELETE then
       Key:= VK_NONAME;
     Key:= NaoInsereDBGrid(TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key);
end;

procedure TFormGefaNFe.DBGrid1ColExit(Sender: TObject);
begin
if DBGrid1.SelectedField = DM.sds_nfe_itensCOD_NCM then
begin
  if Length(DM.sds_nfe_itensCOD_NCM.Text) < 8 then
  begin
    MessageDlg( 'Quantidade de caracteres no NCM deve ser 08... Favor Corrigir....',mtInformation,[mbOK],0);
   DBGRID1.COLUMNS.Grid.Fields[5].FocusControl;
  end;
  end;
  DM.sds_nfe_itens.Edit;
  DM.sds_nfe_itens.ApplyUpdates(0);
end;

procedure TFormGefaNFe.CheckBox3MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
CheckBox4.Checked := False;
end;

procedure TFormGefaNFe.CheckBox4MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
CheckBox3.Checked := False;
end;

procedure TFormGefaNFe._NFEnter(Sender: TObject);
begin
DM.sds_nfe_itens.Edit;
end;

procedure TFormGefaNFe.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
IF Key = #13 then
begin
 DM.sds_nfe_itens.Edit;
 DM.sds_nfe_itens.ApplyUpdates(0);
end;
end;

procedure TFormGefaNFe.DBGrid1ColEnter(Sender: TObject);
begin
DM.sds_nfe_itens.Edit;
end;

procedure TFormGefaNFe.RxDBComboEdit1ButtonClick(Sender: TObject);
begin
FormConsTransp := tFormConsTransp.Create(self);
FormConsTransp.ShowModal;
RxDBComboEdit1.Text := DM.Sds_TransportadorCD_TRANSPORTADOR.Text;
suiEdit1.text := dm.Sds_TransportadorNOME_TRANSP.text;
Edit5.SetFocus;
end;

procedure TFormGefaNFe.DBGrid2Enter(Sender: TObject);
begin
DM.SDS_NFE.Edit;
end;

procedure TFormGefaNFe.DBGrid2Exit(Sender: TObject);
begin
if dm.SDS_NFE.State in [dsedit, dsinsert] then
begin
  dm.SDS_NFE.Post;
  // dm.SDS_NFE.ApplyUpdates(0);
end;
end;

procedure TFormGefaNFe.DBGrid1Exit(Sender: TObject);
begin
if dm.sds_nfe_itens.State in [dsedit, dsinsert] then
begin
  dm.sds_nfe_itens.Post;
  dm.SDS_NFE_itens.ApplyUpdates(0);
end;
end;

procedure TFormGefaNFe.Edit7Exit(Sender: TObject);
begin
   IF Length(Trim(Edit7.TEXT)) <> 44 then
    begin
      Application.MESSAGEBOX('A chave da NF-e deve conter 44 caracteres... Verifique!!!', 'Atenção', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
    end;
end;

function TFormGefaNFe.ConverteReais(Valor: String): Currency;
begin
  while Pos('.',VALOR) > 0 do
    Delete(VALOR,Pos('.',VALOR),1);
  while Pos('R$',VALOR) > 0 do
    Delete(VALOR,Pos('R$',VALOR),2);

  Result:= StrToFloat(Trim(Valor));
end;

procedure TFormGefaNFe.FormCreate(Sender: TObject);
var
  I: Integer;
begin
for I := 0 to Pred(Self.ComponentCount) do
 begin
   if Self.Components[I] is TSimpleDataSet then
   begin
     (Self.Components[I] as TSimpleDataSet).Connection:= DM.SQLC;
   end;
 end;
end;

end.

