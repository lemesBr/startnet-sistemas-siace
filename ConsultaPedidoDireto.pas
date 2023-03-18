unit ConsultaPedidoDireto;

interface

uses
  Windows, SysUtils,  Mask, rxToolEdit, Grids, DBGrids, SUIButton,
  StdCtrls, SUIEdit, Controls, ExtCtrls,
  Classes, Graphics,  Forms, Dialogs,  FMTBcd, RDprint, DB, SqlExpr,
  SUIDlg, RXCtrls, DBCtrls, ACBrECF, ACBrBase, ACBrDevice, ACBrECFClass, ACBrConsts,
  Menus, IBCustomDataSet, IBQuery, DBClient, SimpleDS, IBDatabase, sEdit,
  Buttons, sBitBtn, RzEdit, RzDBEdit, RzDBBnEd, sDBEdit, sLabel, sGroupBox,
  sPanel, Messages, Variants,  SUIDBCtrls, XDBGrids, frxClass, frxDBSet,
  frxDesgn, RzDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RxCurrEdit, AdvPanel,
  AdvGlowButton;

type
  TFormConsultaPedidoDireto = class(TForm)
    pnpesq: TAdvPanel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    suiButton1: TAdvGlowButton;
    Panel4: TAdvPanel;
    Bevel1: TBevel;
    Panel: TAdvPanel;
    BitBtn3: TAdvGlowButton;
    Label2: TLabel;
    Label4: TLabel;
    Panel8: TAdvPanel;
    Panel9: TAdvPanel;
    suiDBGrid2: TXDBGrid;
    suiDBGrid1: TXDBGrid;
    Panel11: TAdvPanel;
    Label9: TLabel;
    MSG_NR: TsuiMessageDialog;
    MSG_ERRO: TsuiMessageDialog;
    RxLabel41: TRxLabel;
    l_total: TRxLabel;
    RxLabel44: TRxLabel;
    suiDBEdit43: TDBEdit;
    RxLabel45: TRxLabel;
    suiDBEdit44: TDBEdit;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Cliente: TComboEdit;
    Label5: TLabel;
    Edit3: TEdit;
    suiButton2: TAdvGlowButton;
    suiButton5: TAdvGlowButton;
    suiButton4: TAdvGlowButton;
    L_prazo: TRxLabel;
    L_avista: TRxLabel;
    suiButton3: TAdvGlowButton;
    suiButton7: TAdvGlowButton;
    Edit4: TEdit;
    edCod: TEdit;
    mFormas: TMemo;
    SPC_N_CUPOM: TSQLStoredProc;
    excluir: TAdvGlowButton;
    suiButton6: TAdvGlowButton;
    Edit6: TEdit;
    Edit5: TEdit;
    RDprint1: TRDprint;
    suiButton8: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    AlteradadosdoCliente1: TMenuItem;
    qrCupom: TFDQuery;
    qrCupom_item: TFDQuery;
    qrecf_comando: TSimpleDataSet;
    qrecf_comandoCOMANDO: TStringField;
    qrecf_comandoNUMERO: TIntegerField;
    qrecf_comandoDESCONTO: TFMTBCDField;
    qrecf_comandoACRESCIMO: TFMTBCDField;
    qrecf_comandoDINHEIRO: TFMTBCDField;
    qrecf_comandoCHEQUEAV: TFMTBCDField;
    qrecf_comandoCHEQUEAP: TFMTBCDField;
    qrecf_comandoCARTAOCRED: TFMTBCDField;
    qrecf_comandoCARTAODEB: TFMTBCDField;
    qrecf_comandoPROMISSORIA: TFMTBCDField;
    qrecf_comandoCLIENTE: TStringField;
    qrecf_comandoENDERECO: TStringField;
    qrecf_comandoCIDADE: TStringField;
    qrecf_comandoCPF: TStringField;
    qrecf_comandoCONVENIO: TStringField;
    qrecf_comandoVENDEDOR: TStringField;
    qrecf_comandoSEQUENCIA: TIntegerField;
    qrecf_comandoRG_IE: TStringField;
    qrecf_comandoPRODUTOR_RURAL: TStringField;
    SPC_N_NFE: TSQLStoredProc;
    q_Cred_Rec: TFDQuery;
    Memo1: TMemo;
    suiButton9: TAdvGlowButton;
    QBuscaItens: TFDQuery;
    DelItem: TFDQuery;
    Panel3: TAdvPanel;
    GroupBox4: TsGroupBox;
    RxLabel22: TsLabel;
    RxLabel23: TsLabel;
    RxLabel24: TsLabel;
    DBEdit2: TsDBEdit;
    RzDBButtonEdit1: TRzDBButtonEdit;
    Ok: TAdvGlowButton;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    EvDBEditBtn1: TRzDBButtonEdit;
    suiNOTA: TAdvGlowButton;
    QConsulta: TFDQuery;
    Action11: TMenuItem;
    D1: TMenuItem;
    I1: TMenuItem;
    Label1: TLabel;
    Qrsoma: TFDQuery;
    v_PRAZO: TRxCalcEdit;
    v_TOTAL: TRxCalcEdit;
    v_AVISTA: TRxCalcEdit;
    q_VENDAS: TRxCalcEdit;
    FXduplicata: TfrxReport;
    frxDesigner1: TfrxDesigner;
    Label6: TLabel;
    suiDBEdit10: TDBEdit;
    RxLabel9: TRxLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    sBitBtn1: TAdvGlowButton;
    N_notac: TFDQuery;
    N_notacN_NOTA: TIntegerField;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensCODIGO_ID: TIntegerField;
    QBuscaItensITEN: TIntegerField;
    QBuscaItensCODIGO_PROD: TIntegerField;
    QBuscaItensCODIGO_PRODUTO: TStringField;
    QBuscaItensDESCRICAO_PRODUTO: TStringField;
    QBuscaItensPRECO_UNITARIO: TFMTBCDField;
    QBuscaItensDESCONTO: TFMTBCDField;
    QBuscaItensQUANTIDADE: TBCDField;
    QBuscaItensPRECO_TOTAL: TFMTBCDField;
    QBuscaItensCOMISSAO: TFMTBCDField;
    QBuscaItensDEV: TStringField;
    QBuscaItensQNT_DEV: TBCDField;
    QBuscaItensVAL_DEV: TFMTBCDField;
    QBuscaItensENC_FINANCEIRO: TFMTBCDField;
    QBuscaItensUNIDADE: TStringField;
    QBuscaItensSIT_TRIBUTARIA: TStringField;
    QBuscaItensVENDEDOR: TIntegerField;
    QBuscaItensFRACAO: TIntegerField;
    QBuscaItensCOD_NCM: TStringField;
    QBuscaItensPROD_SERV: TStringField;
    QBuscaItensPERC_ISS: TFMTBCDField;
    QBuscaItensBASE_ISS: TFMTBCDField;
    QBuscaItensVL_ISS: TFMTBCDField;
    QBuscaItensPERC_ICM: TFMTBCDField;
    QBuscaItensBASE_ICMS: TFMTBCDField;
    QBuscaItensVL_ICM: TFMTBCDField;
    QBuscaItensPERC_IPI: TFMTBCDField;
    QBuscaItensBASE_IPI: TFMTBCDField;
    QBuscaItensVL_IPI: TFMTBCDField;
    QBuscaItensPERC_COFINS: TFMTBCDField;
    QBuscaItensBASE_COFINS: TFMTBCDField;
    QBuscaItensVL_COFINS: TFMTBCDField;
    QBuscaItensPERC_ICMS_SUBST: TFMTBCDField;
    QBuscaItensBASE_ICMS_SUBST: TFMTBCDField;
    QBuscaItensVL_ICMS_SUBST: TFMTBCDField;
    QBuscaItensPERC_PIS: TFMTBCDField;
    QBuscaItensBASE_PIS: TFMTBCDField;
    QBuscaItensVL_PIS: TFMTBCDField;
    QBuscaItensIMPRIME: TStringField;
    QBuscaItensCOD_EMPRESA: TIntegerField;
    QBuscaItensID_BICO: TIntegerField;
    QBuscaItensID_TANQUE: TStringField;
    QBuscaItensID_BOMBA: TStringField;
    QBuscaItensBICO: TStringField;
    QBuscaItensICMS: TFMTBCDField;
    QBuscaItensCOD_ANP: TStringField;
    QBuscaItensCOMBUSTIVEL: TStringField;
    QBuscaItensAPLICACAO: TStringField;
    QBuscaItensIPI_IRPJ: TFMTBCDField;
    QBuscaItensOUTROS_IMPOSTOS: TFMTBCDField;
    QBuscaItensNCM_SH: TStringField;
    QBuscaItensQTD_CAIXA: TSmallintField;
    QBuscaItensUND_TRIB: TStringField;
    QBuscaItensML_QUANT_BEB: TFMTBCDField;
    QBuscaItensSIT_COFINS_VENDA_EST: TStringField;
    QBuscaItensSIT_PIS_VENDA_INTER_EST: TStringField;
    QBuscaItensSIT_COFINS_VENDA_INTER_EST: TStringField;
    QBuscaItensSIT_PIS_VENDA_EST: TStringField;
    QBuscaItensCST_IPI_SAIDA: TStringField;
    QBuscaItensCST_VENDA_INTER: TStringField;
    QBuscaItensPERC_ALIQUOTA_PIS: TFMTBCDField;
    QBuscaItensPERC_ALIQUOTA_COFINS: TFMTBCDField;
    QBuscaItensCFOP_INTER_VENDA: TStringField;
    QBuscaItensFLAG_PIS_COFINS: TStringField;
    QBuscaItensCFOP_EST_VENDA: TStringField;
    QBuscaItensCST_VENDA_INTER_NFCE: TStringField;
    QBuscaItensCST_VENDA_NFCE: TStringField;
    QBuscaItensCST_VENDA: TStringField;
    QBuscaItensNCM_SH1: TStringField;
    QBuscaItensPERC_TRIBU: TFMTBCDField;
    QBuscaItensFONTE: TStringField;
    QBuscaItensALIC_NAC: TFMTBCDField;
    QBuscaItensALIC_IMP: TFMTBCDField;
    QBuscaItensVEICULO: TStringField;
    QBuscaItensCHASSI: TStringField;
    QBuscaItensCOR: TIntegerField;
    QBuscaItensCOR_DESC: TStringField;
    QBuscaItensN_MOTOR: TStringField;
    QBuscaItensANO_FAB: TStringField;
    QBuscaItensANO_MOD_FAB: TStringField;
    QBuscaItensTIPO_VEIC: TStringField;
    QBuscaItensN_SERIE: TStringField;
    QBuscaItensCOD_MODELO: TStringField;
    QBuscaItensESPECIE_VEICULO: TStringField;
    QBuscaItensCOD_COR_DENATRAN: TStringField;
    QBuscaItensTIPO_COMBUSTIVEL: TStringField;
    QBuscaItensPESOBRUTO: TFMTBCDField;
    QBuscaItensPESOLIQUIDO: TFMTBCDField;
    QBuscaItensCEST: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure but(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiButton2Click(Sender: TObject);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure suiDBGrid1Enter(Sender: TObject);
    procedure suiButton5Click(Sender: TObject);
    procedure ClienteExit(Sender: TObject);
    procedure ClienteChange(Sender: TObject);
    procedure ClienteButtonClick(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure CarregaFPG;
    procedure excluirClick(Sender: TObject);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure suiButton6Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure ImprimeVenda;
    procedure ImprimeVenda40;
    procedure suiButton8Click(Sender: TObject);
    procedure AlteradadosdoCliente1Click(Sender: TObject);
    procedure ImprimeVenda60;
    procedure suiDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
   function  TotalizaFormaPagamento(const sTipo : string) : currency;
    procedure suiButton9Click(Sender: TObject);
    procedure ImprimeDUPLICATA;
    procedure EvDBEditBtn1ButtonClick(Sender: TObject);
    procedure EvDBEditBtn1Exit(Sender: TObject);
    procedure EvDBEditBtn1Enter(Sender: TObject);
    procedure suiNOTAClick(Sender: TObject);
    procedure OkClick(Sender: TObject);
    procedure RzDBButtonEdit1ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBButtonEdit1Exit(Sender: TObject);
    procedure suiDBGrid1RowSelect(Sender: TObject; Action: TSelectAction);
    procedure FormPaint(Sender: TObject);
    Procedure Selecao_Grade(Tipo : Integer);
    procedure Action11Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure FXduplicataGetValue(const VarName: String;
      var Value: Variant);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure suiDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure suiDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure suiDBGrid1CellClick(Column: TXColumn);

  private
  D : Currency;
  Function Converte( cmd : String) : String;

  
  public
     X : Real;
     TipoCupom : Char ;
          Total, Comissao,EncFinanceiro:Double;
    ValCompra, Dinheiro, Soma,  desct, A, B, C, acresc, AVISTA, CHEQUE, VALE, CARTAO, PRAZO, cTotalForma :Double;
    Cod,Contador, I, NItem, NValor:Integer;
    Pagamento, CPFCNPJ, RGIE, EnderComp: String;
  end;
  const
  //ECFTeste_VERSAO = '2.01' ;
  Estados : array[TACBrECFEstado] of string =
    ('Não Inicializada', 'Desconhecido', 'Livre', 'Venda',
    'Pagamento', 'Relatório', 'Bloqueada', 'Requer Z', 'Requer X', 'Nao Fiscal' );
   _C = 'tYk*5W@' ;

var
  FormConsultaPedidoDireto: TFormConsultaPedidoDireto;

implementation

uses ModulodeDados, Z_RotinasGerais, ModulodeDadosConsultas3, Principal,
  ReemissaoPP, Vendas, lancNotasFiscais, ConsClientes,
  ModulodeDadosConsultas, ModulodeDadosRelatorios, printPedidos, duplicata,
  ContratoVEnda, ECFTeste1, ImpNotafiscal, PEDIDO80COL,
  gerNFE, Z_DeclaracoesBemaFi32, uFarmaciaPopular2, ClientesaddPedido, Ubibli1,
  gerNFce, DMOS1, DUPLICATA80COL, DocsFiscais, extenso1, xloc_cfop, Titulos,
  Udmcob;



{$R *.DFM}

function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
const arrDecimal: array[0..3] of Integer = (1, 10, 100, 1000);
begin
   if (Abs(Decimal) > 3) then
      raise ERangeError.Create('TruncExato: O decimal deve está no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
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
  end;

function TFormConsultaPedidoDireto.TotalizaFormaPagamento(const sTipo : string) : currency;
begin
   cTotalForma:= 0;

   with DMC.sds_pagto do
      begin
         First;
         while not eof do
            begin
               if trim(DMC.sds_pagtoTIPO.AsString) = trim(sTipo) then
                  cTotalForma:= cTotalForma + DMC.sds_pagtoVALOR.AsCurrency;
               next;
            end;
      end;
   result:= ExatoCurrency(cTotalForma,2);
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

procedure TFormConsultaPedidoDireto.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = True then
begin
   CheckBox2.Checked := False;
   CheckBox3.Checked := False;
end;
end;


Procedure TFormConsultaPedidoDireto.Selecao_Grade(Tipo : Integer);
Begin
//DM.sds_vendas.DisableControls;
DM.sds_vendas.First;
While not DM.sds_vendas.Eof do
Begin
If Tipo = 1 then// Marcar todos
suiDBGrid1.SelectedRows.CurrentRowSelected := True
Else
If Tipo = 2 then  // Desmarcar todas
suiDBGrid1.SelectedRows.CurrentRowSelected := False
Else
If Tipo = 3 then  // Alternar seleção
suiDBGrid1.SelectedRows.CurrentRowSelected := not suiDBGrid1.SelectedRows.CurrentRowSelected;
DM.sds_vendas.Next;
End;
DM.sds_vendas.First;
//DM.sds_vendas.EnableControls;
End;

function TFormConsultaPedidoDireto.Converte(cmd: String): String;
var A : Integer ;
begin
  Result := '' ;
  For A := 1 to length( cmd ) do
  begin
     if (Ord(cmd[A]) < 32) or (Ord(cmd[A]) > 127) then
        Result := Result + '#' + IntToStr(ord( cmd[A] ))
     else
        Result := Result + cmd[A] ;
  end ;
  end;
procedure TFormConsultaPedidoDireto.CarregaFPG;
Var A : Integer ;
begin
  mFormas.Clear ;
  with FormECF do
  begin
     { Bematech e NaoFiscal permitem cadastrar formas de Pagamento dinamicamente }
     if (FormECF.ACBrECF1.Modelo in [ecfBematech,ecfNaoFiscal])then
        ACBrECF1.CarregaFormasPagamento
     else
        ACBrECF1.AchaFPGIndice('') ;  { força carregar, se ainda nao o fez }

     for A := 0 to formECF.ACBrECF1.FormasPagamento.Count -1 do
     begin
        {mFormas.Lines.Add( ACBrECF1.FormasPagamento[A].Indice+' -> '+
              formECF.ACBrECF1.FormasPagamento[A].Descricao+' - '+IfThen(
              formECF.ACBrECF1.FormasPagamento[A].PermiteVinculado,'v',''));}
     end ;
  end ;
  end;


procedure  TFormConsultaPedidoDireto.ImprimeDUPLICATA;
var
     subtotal, total : currency;
     linha : integer;
     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

     CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf: String;

begin
    Conf := 'S';

     total    := 0;
     Traco    := '------------------------------------------------';
     // Parametros para o CUPOM FISCAL
    // RDprint1.Impressora := Bobina;
     rdprint1.TamanhoQteLinhas      := 1;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 55;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := S20cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := false;


     // DADOS DA EMPRESA
     Razao_emp    := dm.SDS_EmpresaNOME_FANTASIA.AsString;
     Endereco_emp := dm.SDS_EmpresaENDERECO.AsString;
     Numero_emp   := DM.SDS_EmpresaNUMERO.AsString;
     CEP_EMP      := dm.SDS_EmpresaCEP.AsString;
     CID_emp      := dm.SDS_EmpresaCIDADE.AsString;
     ESTADO_emp   := dm.SDS_EmpresaUF.AsString;
     TEL_emp      := dm.SDS_EmpresaTELEFONE.AsString;


     //DADOS DO CLIENTE
     CLI := DMC.CDS_PedidosCODIGO_CLIENTE.Text +' - ' + dmc.CDS_PedidosNOME_CLIENTE.AsString;
     END_CLI := dmc.CDS_PedidosENDERECO.AsString;
     Numero_CLI := dmc.CDS_PedidosNUMERO.AsString;
     CEP_CLI := dmc.CDS_PedidosCEP.AsString;
     CID_CLI := dmc.CDS_PedidosCIDADE.AsString;
     ESTADO_CLI := dmc.CDS_PedidoSUF.AsString;

     // Cabeçalho do Cupom...
     with rdprint1 do
        begin
        abrir;
         if length( Razao_emp ) > 32 then
           impc(02,25,RAZAO_EMP,[comp17, normal])
        else
           impc(02,25,RAZAO_EMP,[comp17, normal]);
        impc(03,25,ENDERECO_EMP + ',' + NUMERO_EMP ,[comp17, normal]);
        impc(04,25,CEP_EMP + ' - ' + CID_EMP + ' - ' + ESTADO_EMP,[comp17, normal]);
        impc(05,25,'Fone ' + tel_emp,[comp17, normal]);
        imp (07,01,'Nº ' + DMC.CDS_PedidosCODIGO.Text +
                   '   ' + datetimetostr(now) +
                   '    Op.: ' + DMC.CDS_PedidosUSUARIO.Text );

        // Dados do Cliente...
        imp (08,01,traco);
        impf(09,01,CLI,[comp17]);
        impf(10,01, END_CLI + ',' + NUMERO_CLI,[comp17]);
        impf(11,01,CEP_CLI  + ' - ' +
                   CID_CLI + ' - ' +
                   ESTADO_CLI, [comp17]);
        // Titulo dos Itens...
        imp (12,01,traco);
        imp (13,01,'                D U P L I C A T A               ');
        imp (14,01,traco);

        imp (15,01,'Estou  Ciente que  pagarei  a  Quantia  Conforme');
        imp (16,01,'parcelas abaixo em seus respectivos vencimentos:');
         end;            // Imprime itens do pedido...
       linha := 17;

     // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
     with rdprint1 do
        begin
        // Total...

        imp(linha,01,'Formas de pagamento');
        inc   (linha);
        imp(linha,01,'Descricao:       ' + '   Data Vecto ' + '    Valor Parcela');
        inc   (linha);

        DMC.QRY_COND_PAGTO.First;
        while not DMC.QRY_COND_PAGTO.Eof do
            begin
               if DMC.QRY_COND_PAGTOVALOR.AsFloat > 0 then
                  begin
                     imp (linha,01, DMC.qry_COND_PAGTOTIPO_PAGTO.Text );
                     imp (linha,20, DMC.qry_COND_PAGTODATA_VENCIMENTO.Text );
                     impval(linha,35,'###,###,##0.00',DMC.qry_COND_PAGTOVALOR.AsFloat + DMC.CDS_PedidosVALOR_TROCO.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.qry_COND_PAGTO.Next;
            end;

        imp (linha,01,traco);
        inc (linha);
        impc(linha,25,'Obrigado pela preferência',[]);
        inc (linha);
        inc (linha);
        impc(linha,25,'VOLTE SEMPRE',[]);
        inc (linha);
        inc (linha);
        inc (linha);
        imp   (linha,01,traco);
        inc   (linha);
        impc(linha,25,'***   ASSINATURA   ***',[]);
        inc (linha);
        inc (linha);
        inc (linha);
        inc (linha);
        // Avança 7 linhas em Branco...
        linha := linha + 7;
        imp (linha,01,' '); // Para forçar impressão da página
        Conf :=  DM.SDS_CONFIGURACOESPREVIEW.text;//dm.LeIni( '\cnfcomercio.ini', 'ConfiguracaoLocal' , 'NAO_FISCAL_TELA');
   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, NÃO ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      if  Conf = 'S' then                                                {}
   {}          rdprint1.OpcoesPreview.Preview := true                         {}
   {}       else                                                              {}
   {}          rdprint1.OpcoesPreview.Preview := false;                       {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}

        fechar;
        end;

    // Restaura valores normais para imprimir Cupom Não Fiscal...
    rdprint1.OpcoesPreview.Preview := false;
    rdprint1.TamanhoQteLinhas      := 1;
end;


procedure TFormConsultaPedidoDireto.ImprimeVenda40;
var
     subtotal, total : currency;
     linha : integer;
     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

     CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf: String;

begin
     total    := 0;
     Traco    := '-------------------------------------------------------';
     // Parametros para o CUPOM FISCAL
     rdprint1.TamanhoQteLinhas      := 1;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 55;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := s20cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := false;

     // DADOS DA EMPRESA
     Razao_emp    := dm.SDS_EmpresaNOME_FANTASIA.AsString;
     Endereco_emp := dm.SDS_EmpresaENDERECO.AsString;
     Numero_emp   := DM.SDS_EmpresaNUMERO.AsString;
     CEP_EMP      := dm.SDS_EmpresaCEP.AsString;
     CID_emp      := dm.SDS_EmpresaCIDADE.AsString;
     ESTADO_emp   := dm.SDS_EmpresaUF.AsString;
     TEL_emp      := dm.SDS_EmpresaTELEFONE.AsString;


     //DADOS DO CLIENTE
     CLI := DMC.CDS_PedidosCODIGO_CLIENTE.Text +' - ' + dmc.CDS_PedidosNOME_CLIENTE.AsString;
     END_CLI := dmc.CDS_PedidosENDERECO.AsString;
     Numero_CLI := dmc.CDS_PedidosNUMERO.AsString;
     CEP_CLI := dmc.CDS_PedidosCEP.AsString;
     CID_CLI := dmc.CDS_PedidosCIDADE.AsString;
     ESTADO_CLI := dmc.CDS_PedidoSUF.AsString;

     // Cabeçalho do Cupom...
     with rdprint1 do
        begin
        abrir;
        if length( Razao_emp ) > 32 then
           impc(02,28,RAZAO_EMP,[comp17, Negrito])
        else
           impc(02,28,RAZAO_EMP,[comp12, Negrito]);
        impc(03,28,ENDERECO_EMP + ',' + NUMERO_EMP ,[Comp12]);
        impc(04,28,CEP_EMP + ' - ' + CID_EMP + ' - ' + ESTADO_EMP,[Comp12]);
        impc(05,28,'Fone ' + tel_emp,[Comp12]);
        imp (07,01,'Nº ' + FOrmVendaS.N_venda.Text +
                   '   ' + datetimetostr(now) +
                   '    Op.: ' + DMC.CDS_PedidosUSUARIO.Text );

        // Dados do Cliente...
        imp (08,01,traco);
        impf(09,01,CLI,[comp12]);
        impf(10,01, END_CLI + ',' + NUMERO_CLI,[comp12]);
        impf(11,01,CEP_CLI  + ' - ' +
                   CID_CLI + ' - ' +
                   ESTADO_CLI, [comp12]);

        // Titulo dos Itens...
        imp (12,01,traco);
        imp (13,01,'Qte    Descrição dos Produtos     UN Unitário Sub-Total');
        imp (14,01,traco);
        end;

       // Imprime itens do pedido...
       linha := 15;
       DMC.SDS_Pedido_Itens.First;
       while not DMC.SDS_Pedido_Itens.eof do
        begin
        with rdprint1 do
           begin
           impval(linha,01,'0.000',DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat,[]);
           impf  (linha,8,''+DMC.SDS_Pedido_ItensDESCRICAO_PRODUTO.AsString,[]);
           impf  (linha,35,DMC.SDS_Pedido_ItensUNIDADE.AsString,  []);
           impval(linha,38,'#,##0.00', DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat,[]);
          // subtotal := itensCALC_TOTAL.Value;
          // total    := total + subtotal;
           impval(linha,47,'##,##0.00', DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat, []);
           inc(linha);
           end;
        DMC.SDS_Pedido_Itens.next;
        end;

     // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
     with rdprint1 do
        begin
        // Total...
        imp   (linha,01,traco);
        inc   (linha);
        imp   (linha,01,'Total Geral da Venda');
        impval(linha,42,'###,###,##0.00',DMC.CDS_PedidosVALOR_ITENS.AsFloat,[]);
        // Desconto Global
        inc (linha);
        imp (linha,01,'(-) Desconto Global');
        impval(linha,42,'-##,###,##0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat,[]);
        // Total Liquido...
        inc (linha);
        imp(linha,01,'VALOR A PAGAR R$');
        impval(linha,42,'###,###,##0.00',DMC.CDS_PedidosVALOR_Total.AsFloat,[]);
        inc   (linha);
        // Formas de pagamento
        imp   (linha,01,traco);
        inc   (linha);
        imp(linha,01,'Formas de pagamento');
        inc   (linha);

        DMC.qry_COND_PAGTO.First;
        while not DMC.qry_COND_PAGTO.Eof do
            begin
               if DMC.qry_COND_PAGTOVALOR.AsFloat > 0 then
                  begin
                     imp (linha,01, DMC.qry_COND_PAGTOTIPO_PAGTO.Text );
                     impval(linha,42,'###,###,##0.00',DMC.qry_COND_PAGTOVALOR.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.qry_COND_PAGTO.Next;
            end;
         imp (linha,01, 'Troco' );
         impval(linha,33,'###,###,##0.00',DMC.CDS_PedidosVALOR_TROCO.AsFloat,[Comp12, Negrito]);
         inc   (linha);
        // Final...

        imp (linha,01,traco);
        inc (linha);
        impc(linha,28,'Obrigado pela preferência',[comp12]);
        inc (linha);
        inc (linha);
        impc(linha,28,'VOLTE SEMPRE',[Normal]);
        inc (linha);
        inc (linha);
        impc(linha,28,'***  SEM VALOR FISCAL  ***',[]);
        inc (linha);
        inc (linha);
        inc (linha);
        inc (linha);
        imp   (linha,01,traco);
        inc   (linha);
        impc(linha,25,'***   ASSINATURA   ***',[]);

        // Avança 7 linhas em Branco...
        linha := linha + 7;
        imp (linha,01,' '); // Para forçar impressão da página
        Conf :=  DM.SDS_CONFIGURACOESPREVIEW.text;//dm.LeIni( '\cnfcomercio.ini', 'ConfiguracaoLocal' , 'NAO_FISCAL_TELA');
   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, NÃO ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      if  Conf = 'S' then                                                {}
   {}          rdprint1.OpcoesPreview.Preview := true                         {}
   {}       else                                                              {}
   {}          rdprint1.OpcoesPreview.Preview := false;                       {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}

        fechar;
        end;

    // Restaura valores normais para imprimir Cupom Não Fiscal...
    rdprint1.OpcoesPreview.Preview := false;
    rdprint1.TamanhoQteLinhas      := 1;
end;



procedure TFormConsultaPedidoDireto.ImprimeVenda;
var
     subtotal, total : currency;
     linha : integer;
     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

     CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf: String;

begin
     total    := 0;
     Traco    := '----------------------------------------------------------------------------------------------------------------------------------------------------';
     // Parametros para o CUPOM FISCAL
     rdprint1.TamanhoQteLinhas      := 44;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 160;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := s20cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := false;
     RDprint1.Margens.Top:=1;
     RDprint1.Margens.Bottom:=3;

     // DADOS DA EMPRESA
     Razao_emp    := dm.SDS_EmpresaNOME_FANTASIA.AsString;
     Endereco_emp := dm.SDS_EmpresaENDERECO.AsString;
     Numero_emp   := DM.SDS_EmpresaNUMERO.AsString;
     CEP_EMP      := dm.SDS_EmpresaCEP.AsString;
     CID_emp      := dm.SDS_EmpresaCIDADE.AsString;
     ESTADO_emp   := dm.SDS_EmpresaUF.AsString;
     TEL_emp      := dm.SDS_EmpresaTELEFONE.AsString;


     //DADOS DO CLIENTE
     CLI := 'Cód: '+ dmc.CDS_PedidosCODIGO_CLIENTE.Text + '  Nome: '+ dmc.CDS_PedidosNOME_CLIENTE.AsString;
     END_CLI := dmc.CDS_PedidosENDERECO.AsString;
     Numero_CLI := dmc.CDS_PedidosNUMERO.AsString;
     CEP_CLI := dmc.CDS_PedidosCEP.AsString;
     CID_CLI := dmc.CDS_PedidosCIDADE.AsString;
     ESTADO_CLI := dmc.CDS_PedidoSUF.AsString;

     // Cabeçalho do Cupom...
     with rdprint1 do
        begin
        abrir;
        if length( Razao_emp ) > 32 then
           impc(02,70,RAZAO_EMP,[comp17, Negrito])
        else
           impc(02,70,RAZAO_EMP,[comp12, Negrito]);
        impc(03,70,ENDERECO_EMP + ',' + NUMERO_EMP ,[Comp12]);
        impc(04,70,CEP_EMP + ' - ' + CID_EMP + ' - ' + ESTADO_EMP,[Comp12]);
        impc(05,70,'Fone :' + tel_emp,[Comp12]);
       // inc   (linha);
        imp (06,01,traco);
       // inc   (linha);
        impc(07,70,'COMPROVANTE DE VENDA',[comp17, Negrito]);
        //inc   (linha);
        imp (08,01,traco);
        //inc   (linha);
        impf (09,01,'Nº Venda :' + dmc.CDS_PedidosCODIGO.Text +
                   '       Data: ' + dmc.CDS_PedidosDATA_PEDIDO.AsString + '    Hora: '+DMC.CDS_PedidosHORA.Text+
                   '         Vendedor.: ' + DMC.CDS_PedidosUSUARIO.Text, [comp12, Negrito]);

        // Dados do Cliente...
        imp (10,01,traco);
        imp(11,01,CLI);
        imp(11,75,'Apel./Fant.: '+ dmc.SDS_ClienteAPELIDO.text);
        imp(12,01, 'End.:' +END_CLI + ',' + 'Nº: ' +NUMERO_CLI);
        imp(12,75,'Cep: '+CEP_CLI  + ' - ' +
                   'Cidade: ' + CID_CLI + ' - ' +
                   'UF: '+ ESTADO_CLI);
        imp(13,01,'CPF/CNPj: '+ dmc.CDS_PedidosCPF_CNPJ.text);
        imp(13,75,'Rg/IE: '+ dmc.CDS_PedidosRG_IE.text + ' Fone :' + dmc.CDS_PedidosFONE.text);
        // Titulo dos Itens...
        imp (14,01,traco);
        imp (15,01,'Codigo          Descrição dos Produtos                          Marca         Qte        UN        Unitário            Descontos           Sub-Total');
        imp (16,01,traco);
        end;

       // Imprime itens do pedido...
       linha := 17;
       DMC.SDS_Pedido_Itens.First;
       while not DMC.SDS_Pedido_Itens.eof do
        begin
        with rdprint1 do
           begin
            if dm.SDS_CONFIGURACOESPESQ_PADRAO.Text = '3' then
           impf  (linha,01,DMC.SDS_Pedido_Itensreferencia.AsString,  [])
           else
           impf  (linha,01,DMC.SDS_Pedido_ItensCODIGO_PRODUTO.AsString,  []);
           impf  (linha,17,DMC.SDS_Pedido_ItensDESCRICAO_PRODUTO.AsString,[]);
           impf  (linha,65,DMC.SDS_Pedido_ItensNOME_MARCA.AsString,  []);
           impval(linha,75,'#,##0.000',DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat,[]);
           impf  (linha,90,DMC.SDS_Pedido_ItensUNIDADE.AsString,  []);
           impval(linha,100,'#,##0.00', DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat,[]);
          // subtotal := itensCALC_TOTAL.Value;
          // total    := total + subtotal;
           impval(linha,120,'##,##0.00', DMC.SDS_Pedido_ItensDESCONTO.AsFloat, []);
           impval(linha,140,'##,##0.00', DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat, []);
           inc(linha);
           end;
        DMC.SDS_Pedido_Itens.next;
        end;

        // SOMA QUANTIDADE
        DMC.SDS_Pedido_Itens.First;
        D:= D + DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat;
        DMC.SDS_Pedido_Itens.Next;
        // RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        While not DMC.SDS_Pedido_Itens.Eof do
        begin

        D:= D + DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat;
        DMC.SDS_Pedido_Itens.Next;
        //RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        end;

        // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
        with rdprint1 do
        begin
        // Total...
        imp   (linha,01,traco);
        inc   (linha);
        imp   (linha,90,'Total Geral da Venda R$');
        impval(linha,135,'###,###,##0.00',DMC.CDS_PedidosVALOR_ITENS.AsFloat,[]);

        // Desconto Global
        inc (linha);
        imp   (linha,35,'Qtde de Itens da Venda R$');
        impval(linha,69,'###,###,##0.000',D,[]);
        imp (linha,90,'(-) Desconto Global');
        impval(linha,135,'-##,###,##0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat,[]);
        inc (linha);
        imp (linha,90,'Acréscimos/Financeiro:');
        impval(linha,135,'##,###,##0.00',DMC.CDS_PedidosENC_FINANCEIRO.AsFloat,[]);
        // Total Liquido...

        inc (linha);
        imp(linha,90,'Valor Liquido da Venda R$');
        impval(linha,135,'###,###,##0.00',DMC.CDS_PedidosVALOR_Total.AsFloat,[]);
        inc   (linha);
        // Formas de pagamento
        imp   (linha,01,traco);
        inc   (linha);
        imp(linha,01,'Formas de pagamento     Parcela          Vencimento         Valor Parcela');
        inc   (linha);
        imp   (linha,01,traco);
        inc   (linha);

        DMC.qry_COND_PAGTO.First;
        while not DMC.qry_COND_PAGTO.Eof do
            begin
               if DMC.qry_COND_PAGTOVALOR.AsFloat >= 0 then
                  begin
                     imp (linha,01, DMC.qry_COND_PAGTOTIPO_PAGTO.Text );
                     imp (linha,28, DMC.qry_COND_PAGTOPARCELA.Text );
                     imp (linha,42, DMC.qry_COND_PAGTODATA_VENCIMENTO.Text );
                     impval(linha,60,'###,###,##0.00',DMC.qry_COND_PAGTOVALOR.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.qry_COND_PAGTO.Next;
            end;
         imp (linha,01, 'Troco' );
         impval(linha,60,'###,###,##0.00',DMC.CDS_PedidosVALOR_TROCO.AsFloat,[]);
         inc   (linha);
        // Final...

        imp (linha,01,'-------------------------------------------------------------------------');
        inc (linha);
        impc(linha,01,'Obs : ' + DMC.CDS_PedidosOBSERVACOES.Text,[comp12]);
        inc (linha);
        inc (linha);
        imp   (linha,105,'_________________________________');
        inc   (linha);
        impc(linha,122,'***  ASSINATURA  ***',[]);

        // Avança 7 linhas em Branco...
        linha := linha+ 2; //linha + 7;
        imp (linha,01,' '); // Para forçar impressão da página
        Conf :=  DM.SDS_CONFIGURACOESPREVIEW.text;//dm.LeIni( '\cnfcomercio.ini', 'ConfiguracaoLocal' , 'NAO_FISCAL_TELA');
   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, NÃO ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      if  Conf = 'S' then                                                {}
   {}          rdprint1.OpcoesPreview.Preview := true                         {}
   {}       else                                                              {}
   {}          rdprint1.OpcoesPreview.Preview := false;                       {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}

        fechar;
        end;

    // Restaura valores normais para imprimir Cupom Não Fiscal...
    rdprint1.OpcoesPreview.Preview := false;
    rdprint1.TamanhoQteLinhas      := 44;
end;


procedure TFormConsultaPedidoDireto.ImprimeVenda60;
var
     subtotal, total : currency;
     linha : integer;
     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

     CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf: String;

begin
   total    := 0;
     Traco    := '---------------------------------------------------------------------------------------------';
     // Parametros para o CUPOM FISCAL
     rdprint1.TamanhoQteLinhas      := 44;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 95;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := s20cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := false;
     RDprint1.Margens.Top:=1;
     RDprint1.Margens.Bottom:=3;

     // DADOS DA EMPRESA
     Razao_emp    := dm.SDS_EmpresaNOME_FANTASIA.AsString;
     Endereco_emp := dm.SDS_EmpresaENDERECO.AsString;
     Numero_emp   := DM.SDS_EmpresaNUMERO.AsString;
     CEP_EMP      := dm.SDS_EmpresaCEP.AsString;
     CID_emp      := dm.SDS_EmpresaCIDADE.AsString;
     ESTADO_emp   := dm.SDS_EmpresaUF.AsString;
     TEL_emp      := dm.SDS_EmpresaTELEFONE.AsString;


     //DADOS DO CLIENTE
     CLI := 'Cód: '+ dmc.CDS_PedidosCODIGO_CLIENTE.Text + '  Nome: '+ dmc.CDS_PedidosNOME_CLIENTE.AsString;
     END_CLI := dmc.CDS_PedidosENDERECO.AsString;
     Numero_CLI := dmc.CDS_PedidosNUMERO.AsString;
     CEP_CLI := dmc.CDS_PedidosCEP.AsString;
     CID_CLI := dmc.CDS_PedidosCIDADE.AsString;
     ESTADO_CLI := dmc.CDS_PedidoSUF.AsString;

     // Cabeçalho do Cupom...
     with rdprint1 do
        begin
        abrir;
        if length( Razao_emp ) > 32 then
           impc(02,50,RAZAO_EMP,[comp12, Negrito])
        else
           impc(02,50,RAZAO_EMP,[comp12, Negrito]);
        impc(03,50,ENDERECO_EMP + ',' + NUMERO_EMP ,[Comp12]);
        impc(04,50,CEP_EMP + ' - ' + CID_EMP + ' - ' + ESTADO_EMP,[Comp12]);
        impc(05,50,'Fone :' + tel_emp,[Comp12]);
       // inc   (linha);
        imp (06,01,traco);
       // inc   (linha);
       // impc(07,50,'COMPROVANTE DE VENDA',[comp17, Negrito]);
        //inc   (linha);
      //  imp (08,01,traco);
        //inc   (linha);
        imp (07,01,'Nº Venda :' + dmc.CDS_PedidosCODIGO.Text +
                   '       Data: ' + dmc.CDS_PedidosDATA_PEDIDO.AsString + '    Hora: '+DMC.CDS_PedidosHORA.Text+
                   '         Vendedor.: ' + DMC.CDS_PedidosUSUARIO.Text );

        // Dados do Cliente...
        imp (08,01,traco);
        imp (09,01,CLI);
        imp(09,65,'Apel./Fant.: '+ dmc.SDS_ClienteAPELIDO.text);
        imp(10,01,'End.:' +END_CLI + ',' + 'Nº: ' +NUMERO_CLI);
        imp(11,01,'Cep: '+CEP_CLI  + '-' +
                   'Cid: ' + CID_CLI + '-' +
                   'UF: '+ ESTADO_CLI);
        imp(10,65,'CPF/CNPj: '+ dmc.CDS_PedidosCPF_CNPJ.text);
        imp(11,65,'Rg/IE: '+ dmc.CDS_PedidosRG_IE.text);
        // Titulo dos Itens...
        imp (12,01,traco);
        imp (13,01,'Codigo        Descrição dos Produtos     Marca   Qte   UN    Unitário  Descontos   Sub-Total');
        imp (14,01,traco);
        end;

       // Imprime itens do pedido...
       linha := 15;
       DMC.SDS_Pedido_Itens.First;
       while not DMC.SDS_Pedido_Itens.eof do
        begin
        with rdprint1 do
           begin
           impf  (linha,01,DMC.SDS_Pedido_ItensCODIGO_PRODUTO.AsString,  []);
           impf  (linha,15,DMC.SDS_Pedido_ItensDESCRICAO_PRODUTO.AsString,[]);
           impf  (linha,40,DMC.SDS_Pedido_ItensNOME_MARCA.AsString,  []);
           impval(linha,46,'#,##0.000',DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat,[]);
           impf  (linha,56,DMC.SDS_Pedido_ItensUNIDADE.AsString,  []);
           impval(linha,62,'#,##0.00', DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat,[]);
          // subtotal := itensCALC_TOTAL.Value;
          // total    := total + subtotal;
           impval(linha,72,'##,##0.00', DMC.SDS_Pedido_ItensDESCONTO.AsFloat, []);
           impval(linha,84,'##,##0.00', DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat, []);
           inc(linha);
           end;
        DMC.SDS_Pedido_Itens.next;
        end;

        // SOMA QUANTIDADE
        DMC.SDS_Pedido_Itens.First;
        D:= D + DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat;
        DMC.SDS_Pedido_Itens.Next;
        // RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        While not DMC.SDS_Pedido_Itens.Eof do
        begin

        D:= D + DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat;
        DMC.SDS_Pedido_Itens.Next;
        //RXLabel8.Caption:= FormatFloat('##,##0.00',X);
        end;

        // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
        with rdprint1 do
        begin
        // Total...
        imp   (linha,01,traco);
        inc   (linha);
        imp   (linha,50,'Total Geral da Venda R$');
        impval(linha,84,'##,##0.00',DMC.CDS_PedidosVALOR_ITENS.AsFloat,[]);

        // Desconto Global
        inc (linha);
        imp   (linha,1,'Qtde de Itens da Venda:');
        impval(linha,26,'###,###,##0.000',D,[]);
        imp (linha,50,'(-) Desconto Global');
        ImpVal(linha,84,'##,##0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat,[]);
        inc (linha);
     //   imp (linha,50,'Acréscimos/Financeiro:');
     //   impval(linha,84,'##,##0.00',DMC.CDS_PedidosENC_FINANCEIRO.AsFloat,[]);
        // Total Liquido...

      //  inc (linha);
        imp(linha,50,'Valor Liquido da Venda R$');
        impval(linha,84,'##,##0.00',DMC.CDS_PedidosVALOR_Total.AsFloat,[]);
        inc   (linha);
        // Formas de pagamento
        imp   (linha,01,traco);
        inc   (linha);
        imp(linha,01,'Formas de pagamento       Parcela                   Vencimento                Valor Parcela');
        inc   (linha);
        imp   (linha,01,traco);
        inc   (linha);

        DMC.qry_COND_PAGTO.First;
        while not DMC.qry_COND_PAGTO.Eof do
            begin
               if DMC.qry_COND_PAGTOVALOR.AsFloat > 0 then
                  begin
                     imp (linha,01, DMC.qry_COND_PAGTOTIPO_PAGTO.Text );
                     imp (linha,28, DMC.qry_COND_PAGTOPARCELA.Text );
                     imp (linha,52, DMC.qry_COND_PAGTODATA_VENCIMENTO.Text );
                     impval(linha,84,'##,##0.00',DMC.qry_COND_PAGTOVALOR.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.qry_COND_PAGTO.Next;
            end;
         imp (linha,01, 'Troco' );
         impval(linha,84,'##,##0.00',DMC.CDS_PedidosVALOR_TROCO.AsFloat,[]);
         inc   (linha);
        // Final...

        imp (linha,01,'-------------------------------------------------------------------------');
        inc (linha);
        impc(linha,01,'Obs : ' + DMC.CDS_PedidosOBSERVACOES.Text,[comp12]);
        inc (linha);
        inc (linha);
        imp   (linha,55,'_________________________________');
        inc   (linha);
        impc(linha,72,'***  ASSINATURA  ***',[]);

        // Avança 7 linhas em Branco...
        linha := linha+ 2; //linha + 7;
        imp (linha,01,' '); // Para forçar impressão da página
        Conf :=  DM.SDS_CONFIGURACOESPREVIEW.text;//dm.LeIni( '\cnfcomercio.ini', 'ConfiguracaoLocal' , 'NAO_FISCAL_TELA');
   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, NÃO ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      if  Conf = 'S' then                                                {}
   {}          rdprint1.OpcoesPreview.Preview := true                         {}
   {}       else                                                              {}
   {}          rdprint1.OpcoesPreview.Preview := false;                       {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}

        fechar;
        end;

    // Restaura valores normais para imprimir Cupom Não Fiscal...
    rdprint1.OpcoesPreview.Preview := false;
    rdprint1.TamanhoQteLinhas      := 44;

end;


procedure TFormConsultaPedidoDireto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//DM.Conexao.Rollback;
//suiDBGrid1.SelectedRows.CurrentRowSelected := not suiDBGrid1.SelectedRows.CurrentRowSelected;

Action:=CaFree;
FormConsultaPedidoDireto:=nil;
//formECF :=nil;
end;

procedure TFormConsultaPedidoDireto.DateEdit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaPedidoDireto.DateEdit2Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaPedidoDireto.Edit1Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaPedidoDireto.DateEdit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaPedidoDireto.DateEdit2Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaPedidoDireto.Edit1Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaPedidoDireto.but(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
if not (ActiveControl is TDBLookupComboBox) then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormConsultaPedidoDireto.FormShow(Sender: TObject);
begin
    DMC3.SQLD_PedidosGeral.Active:=FALSE;
    DMC3.CDS_PedidosGeral.Active:=FALSE;
    DMC3.SDS_ItensPedidoGeral.Active:=FALSE;
    DMC3.SQLD_PedidosCliente.Active:=FALSE;
    DMC3.CDS_PedidosCliente.Active:=FALSE;
    DMC3.SDS_ItensPedidoCliente.Active:=FALSE;
    DMC3.SQLD_PedidosUsuario.Active:=FALSE;
    DMC3.CDS_PedidosUsuario.Active:=FALSE;
    DMC3.SDS_ItensPedidoUsuario.Active:=FALSE;
    DMC3.SQLD_Pedidos_Pagamento.Active:=False;
    DMC3.CDS_Pedidos_Pagamento.Active:=False;
    DMC3.SDS_ItensPedido_Pagamento.Active:= False;
    DateEdit1.SetFocus;
    DateEdit1.Date := Date;
    DateEdit2.Date := Date;

    suiDBGrid1.SetFocus;
   // DM.Sds_Pedidos.Filtered := False;
   if dm.SDS_UsuariosV_TOTAL_VENDAS.Text = 'N' then
   begin
    l_total.visible := False;
    V_total.visible := False;
    L_avista.visible := False;
    L_prazo.visible := false;
    V_avista.visible := false;
    V_prazo.visible := False;
    end else
   if dm.SDS_UsuariosV_TOTAL_VENDAS.Text = 'S' then
   begin
    l_total.visible := True;
    L_avista.visible := True;
    L_prazo.visible := True;
    V_total.visible := True;
    V_avista.visible := True;
    V_prazo.visible := True;
    end;

    suiButton1Click(Sender);
end;

procedure TFormConsultaPedidoDireto.Edit2Enter(Sender: TObject);
begin
 CorEntrada(Sender);
end;

procedure TFormConsultaPedidoDireto.Edit2Exit(Sender: TObject);
begin
 CorSaida(Sender);
end;

procedure TFormConsultaPedidoDireto.suiButton1Click(Sender: TObject);
var
  inicio, final, periodo, cli, venda, user :string;
begin
 //  try
   inicio:=datetostr(DATE);
   final:=datetostr(DATE);

   inicio:=dateedit1.TexT;
   final:=dateedit2.TexT;

   cli := cliente.Text;

   Venda := edit2.text;
   user :=   Edit4.text;

  { dm.sds_vendas.Filtered := False;
   DM.Sds_vendas.Active := false;
   //DM.Sds_Vendas_itens.Active := false;
   dm.QRY_vendas.close;
   dm.QRY_vendas.SQL.Clear;
   dm.QRY_vendas.SQL.add('select * from PEDIDOS where codigo >0'+'');
   if inicio >'  /  /    ' then
   dm.QRY_vendas.SQL.add('and DATA_pedido >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO<='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
   if cli >'' then
   dm.QRY_vendas.SQL.add('and CODIGO_CLIENTE ='+(cli)+'');
   if venda >'' then
   DM.qry_vendas.SQL.add('and codigo ='+(venda)+'');
    if user >'' then
   DM.qry_vendas.SQL.add('and USUARIO ='+QuotedStr(USER)+'');
   DM.qry_vendas.SQL.add('ORDER BY Codigo ASC');
   DM.qry_vendas.Open;
   DM.Sds_vendas.Active := True;
   //DM.Sds_Vendas_itens.Active := true; }

   dm.sds_vendas.Filtered := False;
   //DM.Sds_Vendas_itens.Active := false;
   dm.sds_vendas.close;
   dm.sds_vendas.SQL.Clear;
   dm.sds_vendas.SQL.add('select * from PEDIDOS where codigo > 0' +'');
   if inicio >'  /  /    ' then
   dm.sds_vendas.SQL.add('and DATA_pedido >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(inicio)))+' and DATA_PEDIDO<='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)))+'');
   if cli >'' then
   dm.sds_vendas.SQL.add('and CODIGO_CLIENTE ='+(cli)+'');
   if venda >'' then
   dm.sds_vendas.SQL.add('and codigo ='+(venda)+'');
   if user >'' then
   dm.sds_vendas.SQL.add('and USUARIO ='+QuotedStr(USER)+'');
   if CheckBox1.Checked = True then
   dm.sds_vendas.SQL.add('and NUM_NOTA > 0 ');
   if CheckBox3.Checked = True then
   dm.sds_vendas.SQL.add('and NUM_NOTA IS NULL ' +'');
   dm.sds_vendas.SQL.add('ORDER BY Codigo ASC');
   dm.sds_vendas.Open;

  // DM.Sds_vendas.Active := True;
   //DM.Sds_Vendas_itens.Active := true; }


  if DateEdit1.text <> '  /  /    ' then
    periodo := ' and data_pedido >= :datai and data_pedido <= :dataf ';

    if Cliente.TEXT = '' then
    cli := ''
    else
    cli := ' and codigo_cliente = ''' + Cliente.TEXT + '''';

    if edit2.TEXT = '' then
    VENDA := ''
    else
    VENDA := ' and codigo = ''' + Edit2.TEXT + '''';

    if edit4.TEXT = '' then
    user := ''
    else
    user := ' and USUARIO = ''' + Edit4.TEXT + '''';



  Qrsoma.close;
  Qrsoma.sql.clear;
  Qrsoma.sql.Add('select sum(VALOR_TOTAL) valor_TOTAL, sum(VALOR_AVISTA) valor_AVISTA, sum(VALOR_PRAZO) valor_PRAZO ' + // sum_0 A VENCER
      'from pedidos where codigo is not null ' + periodo + cli + venda + '');
  if CheckBox1.Checked = True then
  Qrsoma.sql.Add(' and NUM_NOTA > 0 ');
   if CheckBox3.Checked = True then
  Qrsoma.sql.Add(' and NUM_NOTA IS NULL ' +'');

  if DateEdit1.text <> '  /  /    ' then
  BEGIN
  Qrsoma.Params.ParamByName('datai').asdatetime := DateEdit1.DATE;
  Qrsoma.Params.ParamByName('dataf').asdatetime := DateEdit2.DATE;
  end;
  Qrsoma.open;

  V_AVISTA.Value := Qrsoma.FieldByName('VALOR_AVISTA').asfloat;
  v_PRAZO.Value := Qrsoma.FieldByName('VALOR_PRAZO').asfloat;
  v_TOTAL.Value := Qrsoma.FieldByName('VALOR_TOTAL').asfloat;
  q_VENDAS.Text  := IntToStr(dm.sds_vendas.RecordCount);
  {  try
    suiDBGrid1.cursor:=crhourglass;
    DM.Sds_vendas.first;
    repeat
    IF DM.Sds_vendasCHEK_BOX.Value <> 'F' THEN
    BEGIN
    DM.Sds_vendas.edit;
    DM.Sds_vendasCHEK_BOX.Value:='F';
    DM.Sds_vendas.Post;
    DM.Sds_vendas.ApplyUpdates(0);
    end;
    DM.Sds_vendas.Next;
    until DM.Sds_vendas.eof;
    DM.Sds_vendas.first;
    suiDBGrid1.cursor:=crdefault;
    except
    DM.Sds_vendas.cancel;
    end;
    DM.Sds_vendas.refresh;
    suiDBGrid1.refresh;
    Except
     MSG_ERRO.ShowModal;
   end;   }
 {   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update pedidos set pedidos.chek_box = ''F'' WHERE DATA_PEDIDO between  :datai and :dataf ';
            Parambyname('datai').AsDate    := DateEdit1.date;
            Parambyname('dataf').AsDate    := DateEdit2.date;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;

   DM.Sds_vendas.refresh;  }
   suiDBGrid1.refresh;
   DM.Sds_vendas.Last;
end;


procedure TFormConsultaPedidoDireto.TabSheet1Show(Sender: TObject);
begin
//DateEdit3.SetFocus;
end;

procedure TFormConsultaPedidoDireto.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConsultaPedidoDireto.suiButton2Click(Sender: TObject);
{begin
  Try
  //if FormReemissaoPP=nil   then
    begin
    FormReemissaoPP:=TFormReemissaoPP.Create(self);
      FormReemissaoPP.EDIT1.Text :=dm.Sds_vendasCODIGO.Text;
      FormReemissaoPP.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;}
var
Endercomp, Cli, cpf_cnpj, prod: String;
   Resp : TModalResult ;
   Percent, EncFin, PerEnc, EF, VF, VD: Real;

   PG, CD, PAG : String;
   cFormaPgto      : String;
   cAcresDesc      : string;
   cTipoAcresDesc  : string;
   cValorAcresDesc : string;
   cValorPago      : String;
   cMsgPromocional : String;
   cAcresc         : string;
   cValorDesc      : string;
   cAcreDesc,  cTipoAcreDesc, cValorAcreDesc, tributos: string;
   NumeroCupom, NumeroCaixa: string;
   iconta, f, cod_Cli : Integer;
   Desc : Char ;
   I, e :Integer;
   Descricao, cupon : String ;
   COO, CodFormaPagamento, CodComprovanteNaoFiscal, SubTotal : String;
   sValor : String ;
   dValor, troco, cValorPago1, tributo : Double ;
   Linha :String;
   FPG : TACBrECFFormaPagamento ;
    END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
    cabecalho, pagamento,meio, itens: string;
begin
  Venda := dm.sds_vendascodigo.text;
  cod_Cli:= dm.sds_vendasCODIGO_CLIENTE.AsInteger;

  if VENDA > '' Then
  Begin
    DMC.SDS_Pedido_Itens.Active := False;
    DMC.SQLD_Pedidos.Active := False;
    DMC.CDS_Pedidos.Active := False;
    DMC.SQLD_Pedidos.Params[0].AsString := VENDA;
    DMC.SQLD_Pedidos.Active := True;
    DMC.CDS_Pedidos.Active := True;
    DMC.SDS_Pedido_Itens.Active := True;
    If DMC.CDS_Pedidos.Locate('CODIGO',VENDA,[])= True then
    Begin


                  if DM.SDS_UsuariosIMP_DARUMA_NFCE.Text ='S'then
                   if Application.MESSAGEBOX('Confirma emissão da Venda (Daruma)?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                   begin
                        DMC.SDS_CHEQUES.Active := false;
                          DMC.sds_mov_Caixa.Active := False;
                          DMC.SDS_Crediario_Contrato.Active :=False;
                          DMC.SDS_Pedido_Itens.Active:= False;
                          DMC.SDS_Cliente.Active:= False;
                          DMC.SQLD_Pedidos.Active:=False;
                          DMC.CDS_Pedidos.Active:=False;
                          DM.SDS_Empresa.active := false;
                          DMC.SQLD_Pedidos.Params[0].AsString:= VENDA;
                           DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                          DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                          DMC.SQLD_Pedidos.Active:=True;
                          DMC.CDS_Pedidos.Active:=True;
                          DMC.SDS_Pedido_Itens.Active:= True;
                          DMC.SDS_Cliente.Active:= True;
                          DM.SDS_Empresa.active := true;
                          DMC.SDS_Crediario_Contrato.Active :=true;
                          DMC.sds_mov_Caixa.Active := True;
                          DMC.SDS_CHEQUES.Active := True;


                      cabecalho := '<bmp></bmp>'+ dm.sds_empresanome_fantasia.text+'<l></l>'+
                                  'CNPJ: '+dm.sds_empresacnpj.text+'   I.E:'+dm.sds_empresaIE.text+'<l></l>'+
                                  ''+dm.sds_empresaENDERECO.text+' nº:'+dm.sds_empresaNUMERO.text +'<l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  '      <b>C O M P R O V A N T E  D E  V E N D A</b><l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  '<c>Número: '+dmc.cds_pedidosCODIGO.Text +   '  Emissão: '+dmc.cds_pedidosDATA_PEDIDO.text+'  Vend:'+dmc.cds_pedidosUSUARIO.text +'<c><l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  'Nome: '+dmc.cds_pedidosnome_cliente.Text+'<l></l>'+
                                  'Cpf: '+dmc.cds_pedidoscpf_cnpj.Text+'<l></l>'+
                                  'End: '+dmc.cds_pedidosendereco.Text+ 'nº'+dmc.cds_pedidosnumero.Text+'<l></l>'+
                                  'Bairro: '+dmc.cds_pedidosbairro.Text+ 'Cid:'+dmc.cds_pedidoscidade.Text+'UF:'+dmc.cds_pedidosuf.Text+'<l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  '<c>Codigo    Descricao         Qtde Un   VlrUnit   VlrTotal</c><l></l>'+
                                  '------------------------------------------------<l></l>';
                      Memo1.Clear;
                      DMC.SDS_Pedido_Itens.First;
                      Contador := DMC.Sds_Pedido_itens.RecordCount;
                      For E:=1 to Contador do
                      begin

                             Memo1.Lines.Add('<c>'+DMC.Sds_Pedido_itenscodigo_produto.text+ '    '+DMC.Sds_Pedido_itensdescricao_produto.text+'</c><l></l>'+
                                             '<c>'+FormatFloat('##,##0.00',DMC.Sds_Pedido_itensquantidade.asfloat)+'                         '+DMC.Sds_Pedido_itensunidade.text+'    X '+FormatFloat('##,##0.00',DMC.Sds_Pedido_itenspreco_unitario.asfloat)+'   '+Formatar(FormatFloat('##,##0.00',(DMC.Sds_Pedido_itenspreco_total.asfloat)),8,false,' ')+'</c><l></l>');
                       DMC.Sds_Pedido_itens.next;
                       end;

                     itens:= Memo1.Text;
                    // DM.ACBrNFe1.NotasFiscais.items[0].nfe.Det.Items[n].Prod.cProd

                    meio:=    '------------------------------------------------<l></l>'+
                              'QTD. TOTAL DE ITENS                          '+FORMPRINCIPAL.texto_justifica(IntToStr(Contador),3,' ','E')+'<l></l>'+
                              'VALOR TOTAL R$                        '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',dmc.cds_pedidosvalor_itens.asfloat),10,' ','E')+'<l></l>'+
                              'Descontos                             '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',dmc.CDS_PedidosVALOR_DESCONTO.asfloat),10,' ','E')+'<l></l>'+
                              'Troco                                 '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',dmc.CDS_PedidosVALOR_TROCO.asfloat),10,' ','E')+'<l></l>'+
                              'FORMA DE PAGAMENTO                    Valor Pago<l></l>';


                            DMC.QRY_COND_PAGTO.close;
                            DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                            DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                            DMC.QRY_COND_PAGTO.Open;


                          DMC.QRY_COND_PAGTO.First;
                          while not DMC.QRY_COND_PAGTO.Eof do
                              begin
                                 if DMC.QRY_COND_PAGTOVALOR.AsFloat > 0 then
                                    begin
                                       pag:=(Formatar(DMC.QRY_COND_PAGTOTIPO_PAGTO.Text,35, True,'.')+'R$ '+Formatar(FormatFloat('###,###,##0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat),10,false,' '));
                                    end;
                                 DMC.QRY_COND_PAGTO.Next;
                              end;


                     pagamento:=  ''+pag+'<l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  '                  ASSINATURA                    <l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  '<c>                 SIACE SISTEMAS              </c><sl>4</sl><gui></gui><l></l>';


                    iRetorno:=iImprimirTexto_DUAL_DarumaFramework(cabecalho+ itens + meio + pagamento, 0);


                   end;   


     // if Impressao.ShowModal = mryes then
     IF DM.SDS_CONFIGURACOESIMP_VENDA.TEXT = 'S' THEN
     begin
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do Pedido?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
     // Exit;
    //  TRY
       begin
        IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
        IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
        BEGIN
        DMC.SDS_Crediario_Contrato.Active :=False;
        DMC.SDS_Pedido_Itens.Active := False;
        DMC.SDS_Cliente.Active := False;
        DMC.SQLD_Pedidos.Active :=False;
        DMC.CDS_Pedidos.Active :=False;
        DMC.SQLD_Pedidos.Params[0].AsString:=venda;
        DMC.SQLD_Pedidos.Active :=True;

        DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;

        DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;

        DMC.QRY_COND_PAGTO.close;
        DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
        DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
        DMC.QRY_COND_PAGTO.Open;

        DMC.CDS_Pedidos.Active :=True;
        DMC.SDS_Pedido_Itens.Active := True;
        DMC.SDS_Cliente.Active := True;
        DMC.SDS_Crediario_Contrato.Active :=true;
        Endercomp:= (formVendas.Sds_PedidosENDERECO.Text + ' / ' + formVendas.Sds_PedidosBAIRRO.Text
              + ', N° ' +formVendas.Sds_pedidosNUMERO.Text + ' - ' + formVendas.Sds_PedidosCIDADE.Text);
        Cli:= (DMC.CDS_PedidosCODIGO_CLIENTE.Text + ' - ' + DMC.CDS_PedidosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteAPELIDO.Text + ')');
        cpf_cnpj:= DMC.CDS_PedidosCpf_cnpj.text + ' Fone: ' + DMC.CDS_PedidosFONE.text;
        prod := 'Insc. Produtor  : ' + DMC.SDS_ClienteINSC_PRODUTOR_RURAL.Text;
        DMR.RvRelatorios.SetParam('Produtor',Prod);
        DMR.RvRelatorios.SetParam('dados',cpf_cnpj);
        DMR.RvRelatorios.SetParam('Ender',Endercomp);
        DMR.RvRelatorios.SetParam('Cliente',Cli);
        DMR.RvRelatorios.SetParam('Produtor',Prod);
       // DMR.RvRelatorios.SelectReport('Rp_PedidoDiretoN',False);
        DMR.RvRelatorios.SelectReport('Rp_PedidoDiretoN',False);
        DMR.RvRelatorios.Execute;
            end else

       IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
       IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
       BEGIN
        DMC.SDS_Crediario_Contrato.Active :=False;
        DMC.SDS_Pedido_Itens.Active := False;
        DMC.SDS_Cliente.Active := False;
        DMC.SQLD_Pedidos.Active :=False;
        DMC.CDS_Pedidos.Active :=False;
        DMC.SQLD_Pedidos.Params[0].AsString:=venda;
        DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
        DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
        DMC.SQLD_Pedidos.Active :=True;

        DMC.QRY_COND_PAGTO.close;
        DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
        DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
        DMC.QRY_COND_PAGTO.Open;

        DMC.CDS_Pedidos.Active :=True;
        DMC.SDS_Pedido_Itens.Active := True;
        DMC.SDS_Cliente.Active := True;
        DMC.SDS_Crediario_Contrato.Active :=true;
        Endercomp:= (DMC.CDS_PedidosENDERECO.Text + ' / ' + DMC.CDS_PedidosBAIRRO.Text
        + ' - ' + DMC.CDS_PedidosCIDADE.Text);
        Cli:= (DMC.CDS_PedidosCODIGO_CLIENTE.Text + ' - ' + DMC.CDS_PedidosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteAPELIDO.Text + ')');
        cpf_cnpj:= DMC.CDS_PedidosCpf_cnpj.text+ ' Fone: ' + DMC.CDS_PedidosFONE.text;
        prod := 'Insc. Produtor  : ' + DMC.SDS_ClienteINSC_PRODUTOR_RURAL.Text;
        DMR.RvRelatorios.SetParam('Produtor',Prod);
        DMR.RvRelatorios.SetParam('dados',cpf_cnpj);
        DMR.RvRelatorios.SetParam('Ender',Endercomp);
        DMR.RvRelatorios.SetParam('Cliente',Cli);
        DMR.RvRelatorios.SelectReport('Rp_PedidoDireto2',False);
        DMR.RvRelatorios.Execute;
        end;

             IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
               IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:=venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;

                    DMC.QRY_COND_PAGTO.close;
                    DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                    DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                    DMC.QRY_COND_PAGTO.Open;

                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    IMPRIMIRPEDIDOS := TIMPRIMIRPEDIDOS.Create(Nil);
                    ImprimirPedidos.RLReport1.DefaultFilter.Destroy;
                  //  IMPRIMIRPEDIDOS.RLReport1.Prepare;
                    ImprimirPedidos.RLReport1.PreviewModal;
                END ELSE
                 IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
                  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:=venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                    DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.QRY_COND_PAGTO.close;
                    DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                    DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                    DMC.QRY_COND_PAGTO.Open;

                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    IMPRIMIRPEDIDOS := TIMPRIMIRPEDIDOS.Create(Nil);
                   //    IMPRIMIRPEDIDOS.RLReport1.Prepare;
                   // ImprimirPedidos.RLReport1.DefaultFilter.ClassNameIs('RLDraftFilter1');
                    ImprimirPedidos.RLReport1.PreviewModal;
                    end;


                 IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q' THEN
                  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:=venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                    DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                    DMC.SQLD_Pedidos.Active:=True;

                    DMC.QRY_COND_PAGTO.close;
                    DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                    DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                    DMC.QRY_COND_PAGTO.Open;

                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    FormPedido40col := TFormPedido40col.Create(self);
                    FormPedido40col.RLReport1.DefaultFilter.Destroy;
                    FormPedido40col.RLReport1.Prepare;
                    FormPedido40col.RLReport1.PreviewModal;
                   END ELSE
                 IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q' THEN
                  IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:= venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                    DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.QRY_COND_PAGTO.close;
                    DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                    DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                    DMC.QRY_COND_PAGTO.Open;

                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    FormPedido40col := TFormPedido40col.Create(self);
                    FormPedido40col.RLReport1.Prepare;
                    FormPedido40col.RLReport1.PreviewModal;
                    end;

                    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '3' THEN
                   //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:= venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                    DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                    DMC.SQLD_Pedidos.Active:=True;

                    DMC.QRY_COND_PAGTO.close;
                    DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                    DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                    DMC.QRY_COND_PAGTO.Open;

                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;
                    ImprimeVenda;
                    end;

                    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '4' THEN
                   //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:= venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                    DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                    DMC.SQLD_Pedidos.Active:=True;

                    DMC.QRY_COND_PAGTO.close;
                    DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                    DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                    DMC.QRY_COND_PAGTO.Open;

                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;

                    ImprimeVenda40;
                    end;

                    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '5' THEN
                   //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:= venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                    DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                    DMC.SQLD_Pedidos.Active:=True;

                    DMC.QRY_COND_PAGTO.close;
                    DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                    DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                    DMC.QRY_COND_PAGTO.Open;

                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;

                    ImprimeVenda60;
                    end;

                {    except
                    showmessage('Erro na Impressão do Pedido!');
                    end;   }

            end;
         end;

        end;

        if DMC.CDS_PedidosTP.Text = 'C' then
        IF DM.SDS_CONFIGURACOESDUPLICATA.Value = 'S' THEN
         BEGIN
         // If duplicata.ShowModal = mryes then
         if MESSAGEBOX(Application.Handle, 'Confirma a Impressão da Duplicata?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
        // Exit;
         try
         // begin
          IF (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I') or (DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I')  THEN
          begin
          IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
          BEGIN
            DMC.SDS_Crediario_Contrato.Active :=False;
            DMC.SDS_Pedido_Itens.Active:= False;
            DMC.SDS_Cliente.Active:= False;
            DMC.SQLD_Pedidos.Active:=False;
            DMC.CDS_Pedidos.Active:=False;
            DM.SDS_Empresa.active := false;
            DMC.SQLD_Pedidos.Params[0].AsString:= venda;
            DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
            DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
            DMC.SQLD_Pedidos.Active:=True;
            DMC.CDS_Pedidos.Active:=True;
            DMC.SDS_Pedido_Itens.Active:= True;
            DMC.SDS_Cliente.Active:= True;
            DM.SDS_Empresa.active := true;
            DMC.SDS_Crediario_Contrato.Active :=true;
            formduplicatas := Tformduplicatas.Create(self);
            formduplicatas.RLReport1.DefaultFilter.Destroy;
            formduplicatas.RLReport1.Prepare;
            formduplicatas.RLReport1.PreviewModal;
          END ELSE
           //IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'I' THEN
           IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
           BEGIN
            DMC.SDS_Crediario_Contrato.Active :=False;
            DMC.SDS_Pedido_Itens.Active:= False;
            DMC.SDS_Cliente.Active:= False;
            DMC.SQLD_Pedidos.Active:=False;
            DMC.CDS_Pedidos.Active:=False;
            DM.SDS_Empresa.active := false;
            DMC.SQLD_Pedidos.Params[0].AsString:= venda;
            DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
            DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
            DMC.SQLD_Pedidos.Active:=True;
            DMC.CDS_Pedidos.Active:=True;
            DMC.SDS_Pedido_Itens.Active:= True;
            DMC.SDS_Cliente.Active:= True;
            DM.SDS_Empresa.active := true;
            DMC.SDS_Crediario_Contrato.Active :=true;
            Endercomp:= (DMC.CDS_PedidosENDERECO.Text + ' / ' + DMC.CDS_PedidosBAIRRO.Text
            + ' - ' + DMC.CDS_PedidosCIDADE.Text);
            Cli:= (DMC.CDS_PedidosCODIGO_CLIENTE.Text + ' - ' + DMC.CDS_PedidosNOME_CLIENTE.Text + ' - ('+ DMC.SDS_ClienteAPELIDO.Text + ')');
            formduplicatas := Tformduplicatas.Create(self);
            formduplicatas.RLReport1.Prepare;
            formduplicatas.RLReport1.PreviewModal;
           end;
           end
           else
           begin
          //    IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'P' THEN
           //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
           BEGIN
            DMC.SDS_Crediario_Contrato.Active :=False;
            DMC.SDS_Pedido_Itens.Active:= False;
            DMC.SDS_Cliente.Active:= False;
            DMC.SQLD_Pedidos.Active:=False;
            DMC.CDS_Pedidos.Active:=False;
            DM.SDS_Empresa.active := false;
            DMC.SQLD_Pedidos.Params[0].AsString:= venda;
            DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
            DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
            DMC.SQLD_Pedidos.Active:=True;
            DMC.CDS_Pedidos.Active:=True;
            DMC.SDS_Pedido_Itens.Active:= True;
            DMC.SDS_Cliente.Active:= True;
            DM.SDS_Empresa.active := true;
            DMC.SDS_Crediario_Contrato.Active :=true;

            DM.qrrelatorio.open;

            FXduplicata.LoadFromFile('rel\f000150.fr3');
            FXduplicata.ShowReport;
          // end
           end;
           end;
           except
                ShowMessage('Erro na Impressão da duplicata!');
            end;
           end;

                            DMC.QRY_COND_PAGTO.close;
                            DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                            DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                            DMC.QRY_COND_PAGTO.Open;

                       // DMC.SDS_COND_PAGTO.Last;

                        if DMC.QRY_COND_PAGTO.Locate('TIPO_PAGTO','A PRAZO',[]) = true then
                        begin
                        if dm.SDS_CONFIGURACOESCUPON_VINCULADO.Text = 'S' then
                        begin
                        if Application.MESSAGEBOX('Confirma Emissão do Comprovante de Vinculado(DUPLICATA)?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                          BEGIN
                          IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Text = '4' THEN
                            //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                            BEGIN
                          DMC.SDS_CHEQUES.Active := false;
                          DMC.sds_mov_Caixa.Active := False;
                          DMC.SDS_Crediario_Contrato.Active :=False;
                          DMC.SDS_Pedido_Itens.Active:= False;
                          DMC.SDS_Cliente.Active:= False;
                          DMC.SQLD_Pedidos.Active:=False;
                          DMC.CDS_Pedidos.Active:=False;
                          DM.SDS_Empresa.active := false;
                          DMC.SQLD_Pedidos.Params[0].AsString:= venda;
                          DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                          DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                          DMC.SQLD_Pedidos.Active:=True;
                          DMC.CDS_Pedidos.Active:=True;
                          DMC.SDS_Pedido_Itens.Active:= True;
                          DMC.SDS_Cliente.Active:= True;
                          DM.SDS_Empresa.active := true;
                          DMC.SDS_Crediario_Contrato.Active :=true;
                          DMC.sds_mov_Caixa.Active := True;
                          DMC.SDS_CHEQUES.Active := True;

                            DMC.QRY_COND_PAGTO.close;
                            DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                            DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                            DMC.QRY_COND_PAGTO.Open;

                          ImprimeDUPLICATA;
                          END ELSE

                               IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q' THEN
                              //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                                BEGIN
                                DMC.SDS_CHEQUES.Active := false;
                                DMC.sds_mov_Caixa.Active := False;
                                DMC.SDS_Crediario_Contrato.Active :=False;
                                DMC.SDS_Pedido_Itens.Active:= False;
                                DMC.SDS_Cliente.Active:= False;
                                DMC.SQLD_Pedidos.Active:=False;
                                DMC.CDS_Pedidos.Active:=False;
                                DM.SDS_Empresa.active := false;
                                DMC.SQLD_Pedidos.Params[0].AsString:= venda;
                                DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                                DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                                DMC.QRY_COND_PAGTO.close;
                                DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                                DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                                DMC.QRY_COND_PAGTO.Open;
                                DMC.SQLD_Pedidos.Active:=True;
                                DMC.CDS_Pedidos.Active:=True;
                                DMC.SDS_Pedido_Itens.Active:= True;
                                DMC.SDS_Cliente.Active:= True;
                                DM.SDS_Empresa.active := true;
                                DMC.SDS_Crediario_Contrato.Active :=true;
                                DMC.sds_mov_Caixa.Active := True;
                                DMC.SDS_CHEQUES.Active := True;

                                DMC.QRY_COND_PAGTO.close;
                                DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                                DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                                DMC.QRY_COND_PAGTO.Open;

                                if DM.SDS_CONFIGURACOESPREVIEW.text= 'N' then
                                begin
                                Formduplicata40col := TFormduplicata40col.Create(self);
                                Formduplicata40col.RLReport1.DefaultFilter.Destroy;
                                Formduplicata40col.RLReport1.Prepare;
                                Formduplicata40col.RLReport1.Print;
                                end else
                                if DM.SDS_CONFIGURACOESPREVIEW.text= 'S' then
                                begin
                                Formduplicata40col := TFormduplicata40col.Create(self);
                                Formduplicata40col.RLReport1.DefaultFilter.Destroy;
                                Formduplicata40col.RLReport1.Prepare;
                                Formduplicata40col.RLReport1.PreviewModal;
                                end;
                                end;
                          end;
                          END;
                      end;

            if DMC.CDS_PedidosTP.Text = 'C' then
             IF DM.SDS_CONFIGURACOESCONTRATO.TEXT = 'S' THEN
                 BEGIN
              //  If contrato.ShowModal = mryes then
               if MESSAGEBOX(Application.Handle, 'Confirma a Impressão do Contrato?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                 try
                    BEGIN
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DMC.SQLD_Pedidos.Params[0].AsString:= venda;
                    DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                    DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    FormContratoVenda := TFormContratoVenda.Create(self);
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'P' THEN
                     BEGIN
                     FormContratoVenda.RLReport1.DefaultFilter.Destroy;
                     FormContratoVenda.RLReport1.Prepare;
                     FormContratoVenda.RLReport1.PreviewModal;
                     END ELSE
                     IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT = 'M' THEN
                     BEGIN
                     FormContratoVenda.RLReport1.Prepare;
                     FormContratoVenda.RLReport1.PreviewModal;
                     end;
                    end;

                    except
                ShowMessage('Erro na Impressão do Contrato!');
                end;
                end;

                   if DMC.QRY_COND_PAGTO.Locate('TIPO_PAGTO','A PRAZO',[]) = true then
                        begin
                    //EMISSÃO DO CARNE
                    IF DM.SDS_CONFIGURACOESIMP_NOTA.Text ='S' THEN
                    if Application.MESSAGEBOX('Confirma a Emissão do carnê?', 'confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                    begin
                          DMC.qrcontasreceber.close;
                          DMC.qrcontasreceber.sql.Clear;
                          DMC.qrcontasreceber.sql.add('select * from crediario where CODIGO_COMPRA = ''' + DM.sds_vendas.fieldbyname('codigo').asstring + ''' order by data_vencimento asc');
                          DMC.qrcontasreceber.open;

                          DMC.qrcliente.close;
                          DMC.qrcliente.sql.Clear;
                          DMC.qrcliente.sql.add('select * from clientes where codigo = ''' + DM.sds_vendas.fieldbyname('codigo_cliente').asstring + ''' order by nome_rs asc');
                          DMC.qrcliente.open;

                        dm.qrrelatorio.open;
                        dm.qrrelatorio.edit;
                        dm.qrrelatorio.fieldbyname('linha8').AsString := '';

                        if DMC.QRCONTASRECEBER.RECORDCOUNT > 0 then
                        begin
                          dm.qrrelatorio.fieldbyname('linha7').asstring := 'A PRAZO';
                          DMC.qrcontasreceber.first;
                          while not DMC.qrcontasreceber.eof do
                          begin
                            dm.qrrelatorio.fieldbyname('LINHA8').asstring :=
                            formPrincipal.texto_justifica(DMC.qrcontasreceber.fieldbyname('DATA_VENCIMENTO').asstring, 10, ' ', 'D') + ' - R$ ' +
                            formPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00', DMC.qrcontasreceber.fieldbyname('VALOR_COMPRA').asFLOAT), 8, ' ', 'E') + ' | ' +
                            dm.qrrelatorio.fieldbyname('linha8').AsString;

                            DMC.qrcontasreceber.next;
                          end;
                        end
                        else
                        begin
                          dm.qrrelatorio.fieldbyname('linha8').AsString := 'A VISTA';
                        end;


                        dm.qrrelatorio.fieldbyname('linha1').asstring := DM.SDS_EMPRESACIDADE.TEXT + FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',DM.sds_vendas.fieldbyname('data_PEDIDO').asdatetime);
                        dm.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(DM.sds_vendas.fieldbyname('vALOR_total').asfloat));
                        dm.qrrelatorio.fieldbyname('linha3').asstring := inttostr(DMC.qrcontasreceber.recordcount);
                        dm.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00', DMC.qrcontasreceber.fieldbyname('valor_COMPRA').asfloat);
                        dm.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(DM.sds_vendas_ITENS.RecordCount);
                        dm.qrrelatorio.post;
                      //  FXvenda.LoadFromFile('c:\siace\rel\f000154.fr3');
                      //  FXvenda.ShowReport;
                        if DMC.QRCONTASRECEBER.RECORDCOUNT > 0 then
                        begin
                          DMC.FXvenda.LoadFromFile('rel\f000153.fr3');
                          DMC.FXvenda.ShowReport;
                        end;
                    end;
                    end;

   If DM.SDS_CONFIGURACOESCUPOM.Text = 'S' then
    begin
     // If ecfimprimir.ShowModal = mryes then
     if MESSAGEBOX(Application.Handle, 'Confirma Impressão do Cupom Fiscal?', 'confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      Begin
        try
           if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
             begin

                       DMC.SDS_Pedido_Itens.Active:= False;
                       DMC.SDS_Cliente.Active:= False;
                       DMC.SQLD_Pedidos.Active:=False;
                       DMC.CDS_Pedidos.Active:=False;
                      // DMC.SDS_PDV.Active:=False;
                      // DM.SDS_CondPagamento.Active:=False;
                       DMC.SQLD_Pedidos.Params[0].AsString:=venda;
                       DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                       DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                      // DMC.SDS_PDV.Active:=true;
                       DMC.SQLD_Pedidos.Active:=True;
                       DMC.CDS_Pedidos.Active:=True;
                       DMC.SDS_Pedido_Itens.Active:= True;
                       DMC.SDS_Cliente.Active:= True;
                     //  DM.SDS_CondPagamento.Active:=true;

                     if DMC.CDS_PedidosN_CUPOM.Text = '' then
                     begin
                      iRetorno := Bematech_FI_AbreCupom( pchar( '' ) );
                      FormPrincipal.Analisa_iRetorno();
                      FormPrincipal.Retorno_Impressora();

                       application.ProcessMessages;

                       DMC.SDS_Pedido_Itens.First;
                       Contador:= DMC.SDS_Pedido_Itens.RecordCount;

                       For I:=1 to Contador do
                       begin

                       CPFCNPJ:= (DMC.cDS_pedidosCPF_CNPJ.AsString);
                       RGIE:= DMC.cDS_pedidosRG_IE.AsString + #13#10+ ' IE Produtor: ' + DMC.SDS_ClienteINSC_PRODUTOR_RURAL.Text;
                       EnderComp:= DMC.cDS_pedidosENDERECO.AsString + #13#10 + DMC.cDS_pedidosBAIRRO.AsString+' - '+DMC.CDS_PedidosCIDADE.AsString +' - '+DMC.SDS_ClienteUF.text ;

                       // parametros
                       B := StrToFloatDef(DMC.SDS_Pedido_Itens.FieldByname('Quantidade').Text, 0.000);
                       EF := DMC.SDS_Pedido_ItensENC_FINANCEIRO.AsFloat;
                       VF := StrToFloatDef(DMC.SDS_Pedido_Itens.FieldByname('PRECO_UNITARIO').Text,0.00);
                       Desct:= DMC.CDS_Pedidos.FieldByname('VALOR_DESCONTO').Value;
                       ValCompra := DMC.CDS_Pedidos.FieldByname('VALOR_TOTAL').Value;
                       // fim parametros


                       sCodigo        :=  DMC.SDS_Pedido_ItensCodigo_produto.AsString;
                       sDescricao     :=  Formatar(DMC.SDS_Pedido_ItensDescricao_produto.AsString,25,true,' ');

                       edit5.Text  := DMC.SDS_Pedido_Itens.FieldByname('SIT_TRIBUTARIA').Text;
                       if Edit6.Text = 'LETRAS' then
                       begin
                       sAliquota      :=  EDIT5.TEXT;
                       END ELSE
                       if Edit6.Text = 'NUMEROS' then
                       begin
                       sAliquota      :=  RemoveChar(DMC.SDS_Pedido_Itens.FieldByname('SIT_TRIBUTARIA').TEXT);
                       sAliquota      :=  Formatar(sAliquota,4,False,'0');
                       end;
                       sUnidade       := (DMC.SDS_Pedido_Itens.FieldByname('UNIDADE').AsString);
                       sTipoQtde      := ('F');
                       sQtde          := FormatFloat('##,##0.000',B);
                       sValor         := FormatFloat('##,##0.00',VF);
                       sTipoDesconto  := '$';
                      // cValorDesc     := '0000';
                        IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                        BEGIN
                       cValorDesc     := '0000';
                       END ELSE
                       IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                       BEGIN
                       cValorDesc      := FormatFloat('##,##0.00',DMC.SDS_Pedido_ItensDESCONTO.ASFLOAT);
                       END;

                       iRetorno := Bematech_FI_VendeItem(PChar(sCodigo) , PChar(sDescricao), PChar(sAliquota),
                       PChar(sTipoQtde), sQtde, 2, sValor, PChar(sTipoDesconto), PChar(cValorDesc));

                       FormPrincipal.Analisa_iRetorno();
                       FormPrincipal.Retorno_Impressora();

                            with formvendas.QBuscaItens1 do
                            begin
                             close;
                             Parambyname('cod_ven').AsInteger:= strtoint(venda);
                             Parambyname('codpro').AsInteger:= strtoint(DMC.SDS_Pedido_ItensCODIGO_PROD.text);
                             open;
                             Last;
                           end;


                         if formvendas.QBuscaItens1alic_nac.AsFloat > 0.01 then
                         begin
                          tributo := tributo + ExatoCurrency((DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat  * formvendas.QBuscaItens1ALIC_NAC.AsFloat / 100),2);
                          end else
                         if formvendas.QBuscaItens1PERC_TRIBU.AsFloat > 0.01 then
                         begin
                           tributo := tributo + ExatoCurrency((DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat * formvendas.QBuscaItens1PERC_TRIBU.AsFloat / 100),2);
                         end;

                        DMC.SDS_Pedido_Itens.Next;
                        application.ProcessMessages;
                       end;

                       begin
                       CD:= DMC.CDS_PedidosTP.AsString;
                       IF CD = 'A' THEN BEGIN
                       //PG:= 'DINHEIRO';
                       PG:= '01';
                       PAG :='DINHEIRO';
                       end else
                       IF CD = 'C' THEN BEGIN
                       //PG:= 'CREDIARIO';
                       PG:= '04';
                       PAG :='PRAZO';
                       end else
                       IF CD = 'H' THEN BEGIN
                       //PG:= 'CHEQUE';
                       PG:= '02';
                       PAG :='CHEQUE';
                       end else
                       IF CD = 'F' THEN BEGIN
                       //PG:= 'FINANCEIRA';
                       PG:= '03';
                       PAG :='CARTAO';
                       end else
                       IF CD = 'V' THEN BEGIN
                       //PG:= 'VALE';
                       PG:= '05';
                       PAG :='VALE';
                       end;


                          cFormaPgto      := PAG;
                          cValorPago      := FormatFloat('0.00',ValCompra);
                          tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo)+ ' FONTE: IBPT';
                          cMsgPromocional := tributos+#13+#10+'Cliente:'+' '+(DMC.cds_pedidosCodigo_Cliente.Text)+' - '+(DMC.cds_pedidosNOME_Cliente.Text)+#13+#10+'Cnpj/Cpf:'+' '+CPFCNPJ+' - '+'Ie/Rg:'+' '+RGIE+#13+#10+'Endereço:'+' '+ENDERCOMP+#13+#10+(DMC.CDS_PedidosOBSERVACOES.AsString)+#13+#10'Venda:'+DMC.CDS_Pedidoscodigo.Text+#13+#10'Vendedor:' +(DMC.CDS_PedidosUSUARIO.Text)+#13+#10+ 'PARTIDA: '+DMC.CDS_PedidosN_PARTIDA.TEXT+#13+#10+#13+#10+#13+#10+#13+#10;

                          if DMC.CDS_PedidosVALOR_DESCONTO.AsFloat >= 0 then
                          BEGIN
                          cAcreDesc      := 'D';
                          cTipoAcreDesc  := '$';
                          cValorAcreDesc := FormatFloat('0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat);
                          end else
                          if DMC.CDS_PedidosENC_FINANCEIRO.AsFloat >0 then
                          BEGIN
                          cAcreDesc      := 'A';
                          cTipoAcreDesc  := '$';
                          cValorAcreDesc := FormatFloat('0.00',DMC.CDS_PedidosENC_FINANCEIRO.AsFloat);
                          end;
                          iRetorno := Bematech_FI_IniciaFechamentoCupom( pchar( cAcreDesc ), pchar( cTipoAcreDesc ), pchar( cValorAcreDesc ) );
                          FormPrincipal.Analisa_iRetorno();
                          FormPrincipal.Retorno_Impressora();

                          iRetorno := Bematech_FI_EfetuaFormaPagamento( pchar( cFormaPgto ), pchar( cValorPago ) );
                          FormPrincipal.Analisa_iRetorno();
                          FormPrincipal.Retorno_Impressora();

                          iRetorno := Bematech_FI_TerminaFechamentoCupom( pchar( cMsgPromocional ) );
                          FormPrincipal.Analisa_iRetorno();
                          FormPrincipal.Retorno_Impressora();

                          application.ProcessMessages;

                          suiButton2.Default := True;

                          begin
                          SPC_N_CUPOM.Params[0].AsInteger :=  StrToInt(DMC.CDS_PedidosCODIGO.text);
                          for iConta := 1 to 6 do
                          NumeroCupom := NumeroCupom + ' ';
                          iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );
                          FormPrincipal.Analisa_iRetorno();
                         // ShowMessage( 'Número do Cupom: ' + NumeroCupom);
                          FormPrincipal.Retorno_Impressora();
                          SPC_N_CUPOM.Params[1].AsInteger  :=  StrToInt(NumeroCupom);
                          for iConta := 1 to 4 do
                          NumeroCaixa := NumeroCaixa + ' ';
                          iRetorno := Bematech_FI_NumeroCaixa( NumeroCaixa );
                          FormPrincipal.Analisa_iRetorno();
                         // ShowMessage( 'Número do Caixa: ' + NumeroCaixa);
                          FormPrincipal.Retorno_Impressora();
                          SPC_N_CUPOM.Params[2].asstring  :=  NumeroCaixa;
                          SPC_N_CUPOM.ExecProc;
                          end;


                        //Desativar1.Click;
                       //  suiButton2Click(Sender);

                       if DM.SDS_CONFIGURACOESCUPON_VINCULADO.Text ='S' then
                       begin
                       if Application.MESSAGEBOX('Confirma a Emissão do Comprovante Vinculado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                       IF PAG = 'PRAZO' then
                       begin
                     {  COO := FormCupomFiscal.ACBrECF1.NumCupom ;


                       CodFormaPagamento := PAG ;
                       CodComprovanteNaoFiscal := FormCupomFiscal.Edit2.Text;
                       sValor := cValorPago;

                       sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                                    ',',DecimalSeparator,[]) ;
                       dValor := StrToFloatDef(sValor,0) ;  }
                       DMC.QRY_COND_PAGTO.close;
                       DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                       DMC.QRY_COND_PAGTO.Params.ParamByName('COD_EMPRESA').AsInteger  := IEMP;
                       DMC.QRY_COND_PAGTO.Open;

                       CodComprovanteNaoFiscal := DMC.CDS_PEDIDOSCODIGO.Text;
                       for iConta := 1 to 6 do
                       NumeroCupom := NumeroCupom + ' ';
                       iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );

                       cFormaPgto := PAG;
                       cValorPago := FormatFloat('0.00',DMC.CDS_PedidosVALOR_TOTAL.AsFloat);

                       if Trim(CodComprovanteNaoFiscal) <> '' then
                      { FormCupomFiscal.ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                              dValor) }
                       iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado( pchar( cFormaPgto), pchar( cValorPago ), pchar( NumeroCupom ) )

                       else
                      // FormCupomFiscal.ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
                       iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado( pchar( cFormaPgto), pchar( cValorPago ), pchar( NumeroCupom ) );
                       Linha :=  ('Estou Ciente que pagarei a Quantia Conforme'+#13+#10+
                                  'parcelas abaixo em seus respectivos vencimentos:'+#13+#13+#10);


                       iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

                       Linha :=  ('Parcelamento:'+#13+#13+#10);

                       iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

                       linha := ('Venda:  ' + ' Parc.  ' + '  Data Vecto ' + ' Valor Parcela'+#13+#13+#10);
                       iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );;

                       sValor := formatFloat('0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat);

                       DMC.qry_COND_PAGTO.First;
                       Contador:= DMC.qry_COND_PAGTO.RecordCount;
                       For F:=1 to Contador do
                       begin
                       Linha := ((DMC.QRY_COND_PAGTOTITULO.AsString) + '     '+ (DMC.qry_COND_PAGTOParcela.AsString) + '      ' +(DMC.qry_COND_PAGTODATA_VENCIMENTO.AsString) + '     '+(sValor))+#13+#13+#10;
                       DMC.qry_COND_PAGTO.Next;
                        iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );
                       end;

                        linha:= ( '.'+#13+#10+
                                  '.'+#13+#10+
                                  '.'+#13+#10+
                                  '.'+#13+#10+
                                  #13+#13'------------------------------------------'+#13+#10+
                                  'Cliente:'+' '+(DMC.cds_PEDIDOSCodigo_Cliente.Text)+' -'+
                                  (DMC.cds_PEDIDOSNOME_cliente.Text)+#13+#10+
                                  'Cpf/Cnpj:'+' '+DMC.cds_PEDIDOSCPF_CNPJ.text+' - '+
                                  'Rg:'+' '+DMC.CDS_PedidosRG_IE.text+#13+#10+
                                  'Endereço:'+' '+DMC.cds_PEDIDOSENDERECO.text+#13+#13+
                                   DMC.cds_PEDIDOSbairro.text +' - ' + dmc.cds_pedidosCidade.text+'-'+dmc.CDS_PedidosUF.text+#13+#13);
                        iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

                        Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                                 'Siace Sistemas'+#13)+#13+#10+'Vendedor:'+' '+ dmc.cds_pedidosUSUARIO.text;
                        iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

                        iRetorno := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
                         application.ProcessMessages;
                        end;
                        end;
                          end;

                         end else
                         if DMC.CDS_PedidosN_CUPOM.Text > '' then
                         begin
                          ShowMessage('CUPOM JA IMPRESSO PARA ESTA VENDA...');
                         end;



           end else




            IF DM.SDS_CONFIGURACOESMODELO_ECF.TEXT = '2' THEN
            begin
            //  Desc := '%' ;
          //  if Formvendas.RbValor.Checked then
            Desc := '$' ;
                          application.ProcessMessages;

                      formECF := nil;
                      formecf := tformECF.Create(self);
                      formECF.Ativcar1Click( Sender );
                      formECF.Desativar1Click(sender);
                      formECF.Ativcar1Click( Sender );

                       // Panel2.Visible := false;
                       // Panel3.Visible := True;
                      application.ProcessMessages;

                          if formECF.ACBrECF1.Estado = estRequerZ then
                           begin
                           if MessageDlg('A Redução Z pode Bloquear o seu ECF até a 12:00pm'+#10+#10+
                           'Continua assim mesmo ?',mtWarning,mbYesNoCancel,0) <> mrYes then
                            exit ;
                            if MessageDlg('Você tem certeza ?',mtWarning,mbYesNoCancel,0) <> mrYes then
                             exit ;
                            // end ;
                            Resp := MessageDlg('Envia hora atual ?',mtConfirmation,mbYesNoCancel,0) ;

                            if Resp = mrYes then
                            formECF.ACBrECF1.ReducaoZ( now )
                            else if Resp = mrNo then
                            formECF.ACBrECF1.ReducaoZ( )
                            else
                            exit ;
                           // mResp.Lines.Add( 'Reduçao Z');
                           // AtualizaMemos ;
                            end;

                    if DMC.CDS_PedidosN_CUPOM.Text = '' then
                    begin

                      begin
                       formEcf.ACBrECF1.AbreCupom();
                       formecf.mResp.Lines.Add( 'AbreCupom' );
                       end;
                       begin
                       DMC.SDS_Pedido_Itens.Active:= False;
                       DMC.SDS_Cliente.Active:= False;
                       DMC.SQLD_Pedidos.Active:=False;
                       DMC.CDS_Pedidos.Active:=False;
                       dmc.sds_pagto.Close;
                      // DMC.SDS_PDV.Active:=False;
                      // DM.SDS_CondPagamento.Active:=False;
                       DMC.SQLD_Pedidos.Params[0].AsString:=venda;
                       DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                       DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                      // DMC.SDS_PDV.Active:=true;
                       DMC.SQLD_Pedidos.Active:=True;
                       DMC.CDS_Pedidos.Active:=True;
                       DMC.SDS_Pedido_Itens.Active:= True;
                       DMC.SDS_Cliente.Active:= True;
                       dmc.sds_pagto.Open;
                     //  DM.SDS_CondPagamento.Active:=true;

                       DMC.SDS_Pedido_Itens.First;
                       Contador:= DMC.SDS_Pedido_Itens.RecordCount;
                       For I:=1 to Contador do
                       begin

                       CPFCNPJ:= (DMC.cDS_pedidosCPF_CNPJ.AsString);
                       RGIE:= (DMC.cDS_pedidosRG_IE.AsString);
                       EnderComp:= DMC.cDS_pedidosENDERECO.AsString +#13#10 + DMC.cDS_pedidosBAIRRO.AsString+' - '+DMC.CDS_PedidosCIDADE.AsString;

                       // parametros
                       B := DMC.SDS_Pedido_ItensQuantidade.AsFloat;
                       A :=StrtoFloat(DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsString);
                       //PerEnc:= StrtoFloat(DM.SDS_CondPagamento.FieldByName('JUROS_BASE').AsString);
                       EF := DMC.SDS_Pedido_ItensENC_FINANCEIRO.AsFloat;
                       VF := {(A + EF)} DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat;
                       Desct:= DMC.CDS_PedidosVALOR_DESCONTO.AsFloat;
                       ValCompra := DMC.CDS_PedidosVALOR_TOTAL.AsFloat;
                       // fim parametros

                       sCodigo        := DMC.SDS_Pedido_ItensCodigo_produto.AsString;
                       sDescricao     := DMC.SDS_Pedido_ItensDescricao_produto.AsString;
                       sAliquota      := (DMC.SDS_Pedido_Itens.FieldByname('SIT_TRIBUTARIA').AsString);
                       sUnidade       := (DMC.SDS_Pedido_Itens.FieldByname('UNIDADE').AsString);
                       sTipoQtde      := ('F');
                       sQtde          := DMC.SDS_Pedido_ItensQUANTIDADE.AsString;  //FormatFloat('##.##0.000',B);
                       sValor         := DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsString;    //('##.##0.00',VF);

                       sTipoDesconto  := '$';
                      // cValorDesc := '000';//DMc.SDS_Pedido_ItensDESCONTO.AsString; //'0000';

                     //  sValorDesc := vd * (-1);

                      // cValorDesc := FormatFloat('0',CValorDesc);

                        IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                        BEGIN
                       cValorDesc     := '0000';
                       END ELSE
                       IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                       BEGIN
                       cValorDesc      := DMC.SDS_Pedido_ItensDESCONTO.Text;
                       END;

                       FormEcf.ACBrECF1.VendeItem( sCodigo, sDescricao,
                               sAliquota, StrToFloatDef( sQtde, 0.000 ),
                               StrToFloatDef(sValor ,0.00),
                               StrToFloatDef(cValorDesc ,0.00), Sunidade,
                               desc);



                            with FORMVENDAS.QBuscaItens1 do
                            begin
                             close;
                             Parambyname('cod_ven').AsInteger:= strtoint(venda);
                             Parambyname('codpro').AsInteger:= strtoint(DMc.SDS_Pedido_ItensCODIGO_PROD.text);
                             open;
                             Last;
                           end;

                         if FORMVENDAS.QBuscaItens1alic_nac.AsFloat > 0.01 then
                         begin
                          tributo := tributo + ExatoCurrency((DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat  * FORMVENDAS.QBuscaItens1ALIC_NAC.AsFloat / 100),2);
                          end else
                         if FORMVENDAS.QBuscaItens1PERC_TRIBU.AsFloat > 0.01 then
                         begin
                           tributo := tributo + ExatoCurrency((DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat * FORMVENDAS.QBuscaItens1PERC_TRIBU.AsFloat / 100),2);
                         end;
                       DMC.SDS_Pedido_Itens.Next;

                       application.ProcessMessages;
                       end;

                       begin
                       CD:= DMC.CDS_PedidosTP.AsString;
                       IF CD = 'A' THEN BEGIN
                       //PG:= 'DINHEIRO';
                       PG:= '01';
                       PAG :='DINHEIRO';
                       end else
                       IF CD = 'C' THEN BEGIN
                       //PG:= 'CREDIARIO';
                       PG:= '04';
                       PAG :='PRAZO';
                       end else
                       IF CD = 'H' THEN BEGIN
                       //PG:= 'CHEQUE';
                       PG:= '02';
                       PAG :='CHEQUE';
                       end else
                       IF CD = 'F' THEN BEGIN
                       //PG:= 'FINANCEIRA';
                       PG:= '03';
                       PAG :='CARTAO';
                       end else
                       IF CD = 'V' THEN BEGIN
                       //PG:= 'VALE';
                       PG:= '05';
                       PAG :='VALE';
                       end;

                        //  Desct := desct * (-1); // converte para valor negativo

                         // acresc := dmc.CDS_PedidosENC_FINANCEIRO.AsFloat;

                          if DMC.CDS_PedidosVALOR_DESCONTO.AsString >'0' then
                          BEGIN
                          desct := (DMC.CDS_PedidosVALOR_DESCONTO.AsFloat *(-1));
                          end else

                          if DMC.CDS_PedidosENC_FINANCEIRO.Text >'0' then
                          BEGIN
                          desct := DMC.CDS_PedidosENC_FINANCEIRO.AsFloat;
                          end;

                          cFormaPgto      := PG;
                        //  cAcresDesc      := 'D';
                        //  cTipoAcresDesc  := '$';

                         // cAcresc         := FormatFloat('0.00',acresc);
                          cValorAcresDesc := FormatFloat('0.00',desct);
                          cValorPago      := FormatFloat('0.00',ValCompra);
                          cMsgPromocional :='Cliente:'+' '+(DMC.cds_pedidosCodigo_Cliente.Text)+' - '+(DMC.cds_pedidosNOME_Cliente.Text)+#13+#10+'Cnpj/Cpf:'+' '+CPFCNPJ+' - '+'Ie/Rg:'+' '+RGIE+#13+#10+'Endereço:'+' '+ENDERCOMP+#13+#10+(DMC.CDS_PedidosOBSERVACOES.AsString)+#13+#13+#10'Venda:'+ dmc.CDS_PedidosCODIGO.Text+#13+#13+#10'Vendedor:' +(DMC.CDS_PedidosUSUARIO.Text)+#13+#10+ 'PARTIDA: '+DMC.CDS_PedidosN_PARTIDA.TEXT+#13+#10+#13+#10+#13+#10+#13+#10;



                         Descricao := PAG;
                         begin
                          FPG := FormECF.ACBrECF1.AchaFPGDescricao( Descricao ) ;

                         if FPG = nil then
                         // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                          ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                         edCod.Text := FPG.Indice ;
                         cFormaPgto      := edCod.Text;
                         { Bematech permite cadastrar formas de Pagamento dinamicamente }
                         if (FormECF.ACBrECF1.ModeloStr = 'Bematech') and
                         (pos( FPG.Descricao, mFormas.Text ) = 0) then
                         CarregaFPG ;
                         end ;

                           BEGIN
                          formecf.ACBrECF1.Subtotal;
                          formEcf.ACBrECF1.SubtotalizaCupom (StrToFloat(cValorAcresDesc));
                       //   formEcf.ACBrECF1.SubtotalizaCupom (StrToFloat(CAcresc));
                        //  formecf.ACBrECF1.Subtotal;
                         // formEcf.ACBrECF1.SubtotalizaCupom (StrToFloat(CAcresc));
                           formEcf.mResp.Lines.Add( 'Subtotaliza Cupom: '+cValorAcresDesc);
                          end;

                         { begin
                          if TipoCupom <> 'N' then
                          // formECF.ACBrECF1.EfetuaPagamento(formECF.ACBrECF1.FormasPagamento[0].Indice,
                          (formECF.ACBrECF1.Subtotal - formECF.ACBrECF1.TotalPago), 'ZERANDO SALDO A PAGAR RESTANTE');

                          FormEcf.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                           FormEcf.mResp.Lines.Add( 'Efetua Pagamento: '+cFormaPgto +
                          ' Valor: '+cValorPago );
                          end;  }





                           dmc.sds_pagto.First;
                           While not dmc.sds_pagto.Eof do
                           begin
                             if dmc.sds_pagtoTIPO.text = 'A'  then
                             BEGIN
                             PAG :='DINHEIRO';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := FormECF.ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (FormECF.ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;

                            // cFormaPgto := pag;
                             cValorPago  :=  FloatToStr(dmc.sds_pagtoValor.AsFloat);
                             formecf.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;

                             if dmc.sds_pagtotipo.text = 'H'  then
                             BEGIN
                             PAG :='CHEQUE';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := FormECF.ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (FormECF.ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.asfloat);
                             formecf.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;
                           

                             if dmc.sds_pagtotipo.text = 'F'  then
                             BEGIN
                             PAG :='CARTAO';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := FormECF.ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (FormECF.ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.AsFloat);
                              formecf.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;


                             if dmc.sds_pagtotipo.text = 'C'  then
                             BEGIN
                             PAG :='PRAZO';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := FormECF.ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (FormECF.ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.AsFloat);
                              formecf.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;


                             if dmc.sds_pagtotipo.text ='V'  then
                             BEGIN
                             PAG :='VALE';
                             Descricao := PAG;
                             if dmc.sds_pagtovalor.asfloat > 0  then
                             begin
                             FPG := FormECF.ACBrECF1.AchaFPGDescricao( Descricao ) ;

                             if FPG = nil then
                             // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
                              ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

                             edCod.Text := FPG.Indice ;
                             cFormaPgto      := edCod.Text;
                             { Bematech permite cadastrar formas de Pagamento dinamicamente }
                             if (FormECF.ACBrECF1.ModeloStr = 'Bematech') and
                             (pos( FPG.Descricao, mFormas.Text ) = 0) then
                             CarregaFPG ;
                             end ;
                             cValorPago  := FormatFloat('0.00',dmc.sds_pagtoValor.AsFloat);
                             formecf.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
                             end;


                             dmc.sds_pagto.next;
                          // end;
                            end; 

                          begin
                             // lei 12.741/2013 transparencia dos impostos
                             // ACBrECF1.InfoRodapeCupom.Imposto.Texto := '...'; utilize essa propriedade se quiser personalizar o texto exemplo: Valor impostos %s (%s %) meu texto
                          formecf.ACBrECF1.InfoRodapeCupom.Imposto.ValorAproximado := tributo;  // informar o valor aproximado calculado a partir dos itens
                          formecf.ACBrECF1.InfoRodapeCupom.Imposto.Fonte           := ' IBPT'; // informar a fonte de onde veio a informação para calculo

                          formecf.ACBrECF1.FechaCupom(cMsgPromocional);
                          formEcf.mResp.Lines.Add( 'Fecha Cupom: '+ cMsgPromocional );
                          application.ProcessMessages;
                          end;


                          if (FormECF.ACBrECF1.Modelo in [ecfBematech, ecfSweda, ecfDaruma, ecfSchalter, ecfMecaf, ecfYanco, ecfDataRegis, ecfUrano, ecfICash,
                          ecfQuattro])then
                          begin
                          SPC_N_CUPOM.Params[0].AsInteger :=  StrToInt(venda);
                          SPC_N_CUPOM.Params[1].AsInteger  := StrToInt(formECF.ACBrECF1.NumCupom);
                          SPC_N_CUPOM.Params[2].AsString  :=  formECF.ACBrECF1.NumECF;
                          SPC_N_CUPOM.ExecProc;
                          end;
                          end;

                            // inicio da emissao do copon vinculado
                           if DM.SDS_CONFIGURACOESCUPON_VINCULADO.Text ='S' then
                           begin
                           IF PAG = 'PRAZO' then
                           if Application.MESSAGEBOX('Confirma a Emissão do Comprovante Vinculado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                           begin
                           COO := FormECF.ACBrECF1.NumCupom ;

                           cValorPago := dmc.CDS_PedidosVALOR_TOTAL.Text;

                           CodFormaPagamento := edCod.Text ;
                           CodComprovanteNaoFiscal := DMC.CDS_PEDIDOSCODIGO.TEXT;
                           sValor := cValorPago;

                           sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                                        ',',DecimalSeparator,[]) ;
                           dValor := StrToFloatDef(sValor,0) ;

                           if Trim(CodComprovanteNaoFiscal) <> '' then
                           FormECF.ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                                  dValor)
                           else
                           FormECF.ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
                           Linha :=  ('Estou Ciente que pagarei a Quantia Conforme'+#13+#10+
                                      'parcelas abaixo em seus respectivos vencimentos:'+#13+#13+#10);


                           FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                           Linha :=  ('Parcelamento:'+#13+#13+#10);

                            FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                            linha := ('Venda:  ' + ' Parc.  ' + '  Data Vecto ' + ' Valor Parcela');
                            FormECF.ACBrECF1.LinhaCupomVinculado( Linha );


                            DMC.QRY_COND_PAGTO.close;
                            DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                            DMC.QRY_COND_PAGTO.Open;

                           DMC.QRY_COND_PAGTO.First;
                           Contador:= DMC.QRY_COND_PAGTO.RecordCount;
                           For F:=1 to Contador do
                           begin
                           sValor := formatFloat('0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat);
                           Linha := ((DMC.QRY_COND_PAGTOTITULO.AsString) + '     '+ (DMC.QRY_COND_PAGTOParcela.AsString) + '      ' +(DMC.qry_COND_PAGTODATA_VENCIMENTO.AsString) + '    '+(sValor));
                           DMC.QRY_COND_PAGTO.Next;
                            FormECF.ACBrECF1.LinhaCupomVinculado( Linha );
                           end;

                            linha:= (#13+#13'------------------------------------------'+#13+#10+
                                      'Cliente:'+' '+(DMC.CDS_PEDIDOSCodigo_CliENTE.Text)+' -'+
                                      (DMC.CDS_PEDIDOSNOME_CLIENTE.Text)+#13+#10+
                                      'Cpf/Cnpj:'+' '+DMC.CDS_PEDIDOSCPF_CNPJ.TEXT+' - '+
                                      'Rg:'+' '+DMC.CDS_PEDIDOSRG_IE.TEXT+#13+#10+
                                      'Endereço:'+' '+DMC.CDS_PEDIDOSENDERECO.TEXT+#13+#13+ DMC.CDS_PedidosBAIRRO.TEXT+ '-' + DMC.CDS_PedidosCIDADE.TEXT+ '-'+ DMC.CDS_PedidosUF.Text+#13+#13);
                             FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                            Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                                     'Siace Sistemas'+#13)+#13+#10+'Vendedor:'+' '+formprincipal.UserLogado;
                             FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                             FormECF.ACBrECF1.FechaRelatorio;

                           end else

                           IF Edit1.Text = 'VALE' then
                           begin
                           IF troco > 0 THEN
                           BEGIN
                           if Application.MESSAGEBOX('Confirma a Emissão do Comprovante Vinculado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                           COO :=  FormECF.ACBrECF1.NumCupom ;
                           cValorPago := dm.sds_vendasVALOR_PAGO.Text;
                           CodFormaPagamento := edCod.Text ;
                           CodComprovanteNaoFiscal := DMC.CDS_PEDIDOSCODIGO.Text;
                           sValor := cValorPago;

                           sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                                        ',',DecimalSeparator,[]) ;
                           dValor := StrToFloatDef(sValor,0) ;

                           if Trim(CodComprovanteNaoFiscal) <> '' then
                            FormECF.ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                                  dValor)
                           else
                            FormECF.ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
                           Linha :=  ('Valor da Compra: '+#13+#10+ cValorPago);


                            FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                           Linha :=  ('Valor Vale:'+#13+#13+#10+ FloatToStr(troco));

                            FormECF.aCBrECF1.LinhaCupomVinculado( Linha );


                           linha:= (#13+#13'------------------------------------------'+#13+#10+
                                      'Cliente:'+' '+(dmc.CDS_PedidosCODIGO_CLIENTE.Text)+' -'+
                                      (dmc.CDS_PedidosNOME_CLIENTE.Text)+#13+#10+
                                      'Cpf/Cnpj:'+' '+dmc.CDS_PedidosCPF_CNPJ.Text+' - '+
                                      'Rg:'+' '+dmc.CDS_PedidosRG_IE.text+#13+#10+
                                      'Endereço:'+' '+dmc.CDS_PedidosENDEReCO.text +#13+#13+
                                      dmc.CDS_PedidosBAIRRO.Text +'-'+ dmc.CDS_PedidosCIDADE.Text + '-'+ dmc.CDS_PedidosUF.text+#13+#13);
                            FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                           Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                                     'Siace Sistemas'+#13)+#13+#10+'Vendedor:'+' '+dmc.cds_pedidosUSUARIO.text;
                            FormECF.ACBrECF1.LinhaCupomVinculado( Linha );

                            FormECF.ACBrECF1.FechaRelatorio;

                           end;
                           end;
                           end;
                         end;
                         end;
                  END ELSE

                  if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '3' then
                  begin
                       DMC.sds_pagto.Close;
                       DMC.SDS_Pedido_Itens.Active:= False;
                       DMC.SDS_Cliente.Active:= False;
                       DMC.SQLD_Pedidos.Active:=False;
                       DMC.CDS_Pedidos.Active:=False;
                      // DMC.SDS_PDV.Active:=False;
                      // DM.SDS_CondPagamento.Active:=False;
                       DMC.SQLD_Pedidos.Params[0].AsString:=venda;
                       DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                       DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                      // DMC.SDS_PDV.Active:=true;
                       DMC.SQLD_Pedidos.Active:=True;
                       DMC.CDS_Pedidos.Active:=True;
                       DMC.SDS_Pedido_Itens.Active:= True;
                       DMC.SDS_Cliente.Active:= True;
                       DMC.sds_pagto.Open;
                     if TotalizaFormaPagamento('A') > 0 then
                      begin
                        AVISTA := cTotalForma;
                      end;
                       if TotalizaFormaPagamento('H') > 0 then
                      begin
                       cheque := cTotalForma;
                      end;
                       if TotalizaFormaPagamento('F') > 0 then
                      begin
                        CARTAO := cTotalForma;
                      end;
                      if TotalizaFormaPagamento('C') > 0 then
                      begin
                       PRAZO := cTotalForma;
                      end;
                      if TotalizaFormaPagamento('V') > 0 then
                      begin
                       AVISTA := cTotalForma;
                      end;
                      if TotalizaFormaPagamento('B') > 0 then
                      begin
                       CHEQUE := cTotalForma;
                      end;
                     try
                      try
                        with dm.Delcupom do
                           begin
                              close;
                              sql.Clear;
                              sql.add('delete from cupom where numero =:venda');
                              Parambyname('venda').AsInteger := strtoint(venda);
                              ExecSQL;
                           end;
                        dm.IBTransaction.Commit;
                      except
                        dm.IBTransaction.Rollback;
                        showmessage('Erro ao Excluir o cupom');
                      end;
                    finally
                      dm.Delcupom.Close;
                    end;

                    try
                      try
                        with dm.Delcupom do
                           begin
                              close;
                              sql.Clear;
                              sql.add('delete from cupom_item where numero =:venda');
                              Parambyname('venda').AsInteger := strtoint(venda);
                              ExecSQL;
                           end;
                        dm.IBTransaction.Commit;
                      except
                        dm.IBTransaction.Rollback;
                        showmessage('Erro ao Excluir o cupom');
                      end;
                    finally
                      dm.Delcupom.Close;
                    end;

                   Application.ProcessMessages;

                    begin
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcupom.close;
                    qrcupom.parambyname('comando').AsString     := 'VENDA';
                    qrcupom.parambyname('NUMERO').AsString      := venda;
                    qrcupom.parambyname('DESCONTO').ASFLOAT     := DM.sds_vendasVALOR_DESCONTO.AsFloat;
                    qrcupom.parambyname('ACRESCIMO').ASFLOAT    := DM.sds_vendasVALOR_ACRESCIMOS.AsFloat;
                    qrcupom.parambyname('DINHEIRO').ASFLOAT     := AVISTA;
                    qrcupom.parambyname('CHEQUEAV').ASFLOAT     := CHEQUE;
                    qrcupom.parambyname('CHEQUEAP').ASFLOAT     := 0;
                    qrcupom.parambyname('CARTAOCRED').ASFLOAT   := CARTAO;
                    qrcupom.parambyname('CARTAODEB').ASFLOAT    := 0;
                    qrcupom.parambyname('PROMISSORIA').ASFLOAT  := PRAZO;
                    qrcupom.parambyname('CLIENTE').ASSTRING     := COPY(DM.sds_vendasCODIGO_CLIENTE.Text+ ' - ' + DM.sds_vendasNOME_CLIENTE.Text,1,50);
                    qrcupom.parambyname('ENDERECO').AsString    := COPY(DM.sds_vendasENDERECO.Text +' Nº: '+ DM.sds_vendasNUMERO.Text +' '+DM.sds_vendasBAIRRO.Text,1,50);
                    qrcupom.parambyname('CIDADE').ASSTRING      := COPY(DM.sds_vendasCIDADE.Text + '-' + DM.sds_vendasUF.Text,1,50);
                    qrcupom.parambyname('CPF').AsString         := COPY(DM.sds_vendasCPF_CNPJ.Text,1,50);
                    qrcupom.parambyname('CONVENIO').AsString    := '-';
                    qrcupom.parambyname('VENDEDOR').ASSTRING    := COPY(DM.sds_vendasCOD_VENDEDOR.Text + ' - '+ DM.sds_vendasUSUARIO.Text,1,50);
                    qrcupom.parambyname('sequencia').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcupom.parambyname('RG_IE').AsString          := COPY(DM.sds_vendasRG_IE.Text,1,50);
                    qrcupom.parambyname('PRODUTOR_RURAL').AsString := COPY('IE PROD.: '+DM.sds_vendasIE_PRODUTOR.Text +' Vda: '+venda,1,50);
                    qrcupom.ExecSQL;
                    dm.IBTransaction.CommitRetaining;



                    DM.sds_vendas_itens.First;
                    Contador:=DM.sds_vendas_itens.RecordCount;
                    For I:=1 to Contador do
                    begin
                    if dm.IBTransaction.Active then
                      dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    with qrCupom_item do
                      begin
                         close;
                         qrCupom_item.parambyname('NUMERO').AsString       := venda;
                         qrCupom_item.parambyname('CODPRODUTO').AsString   := DM.sds_vendas_itensCODIGO_PRODUTO.text;
                         qrCupom_item.parambyname('PRODUTO').AsString      := COPY(DM.sds_vendas_itensDESCRICAO_PRODUTO.text,1,30);
                         qrCupom_item.parambyname('UNIDADE').AsString      := DM.sds_vendas_itensUNIDADE.text;
                         qrCupom_item.parambyname('QTDE').AsFloat         :=  DM.sds_vendas_itensQUANTIDADE.AsFloat;
                         qrCupom_item.parambyname('VALOR').ASFLOAT         := DM.sds_vendas_itensPRECO_UNITARIO.AsFloat;
                         qrCupom_item.parambyname('TOTAL').ASFLOAT         := DM.sds_vendas_itenspreco_total.AsFloat;
                         qrCupom_item.parambyname('DESCONTO').ASFLOAT      := DM.sds_vendas_itensDESCONTO.AsFloat;
                         qrCupom_item.parambyname('ACRESCIMO').ASFLOAT     := DM.sds_vendas_itensENC_FINANCEIRO.AsFloat;
                         qrCupom_item.parambyname('ALIQUOTA').AsString     := DM.sds_vendas_itensSIT_TRIBUTARIA.text;
                         qrcupom_item.ExecSQL;
                      end;
                      DM.sds_vendas_itens.Next;
                      dm.IBTransaction.CommitRetaining;
                      END;
                    end;
                    
                     // --------------------- EMISSAO DO COMPROVANTE NAO FISCAL VINCULADO COMO NOTA DE A PRAZO--------------------------\\


                      if DM.SDS_CONFIGURACOESCUPON_VINCULADO.Text ='S' then
                      begin
                      IF prazo > 0  then
                      BEGIN
                           qrecf_comando.Active := false;
                           qrecf_comando.Active := true;
                            DMC.SDS_CHEQUES.Active := false;
                            DMC.sds_mov_Caixa.Active := False;
                            DMC.SDS_Crediario_Contrato.Active :=False;
                            DMC.SDS_Pedido_Itens.Active:= False;
                            DMC.SDS_Cliente.Active:= False;
                            DMC.SQLD_Pedidos.Active:=False;
                            DMC.CDS_Pedidos.Active:=False;
                            DM.SDS_Empresa.active := false;
                            DMC.SQLD_Pedidos.Params[0].AsString:=venda;
                            DMC.SDS_Pedido_Itens.Params[0].AsString:=venda;
                            DMC.SDS_Cliente.Params[0].AsInteger:=cod_Cli;
                            DMC.SQLD_Pedidos.Active:=True;
                            DMC.CDS_Pedidos.Active:=True;
                            DMC.SDS_Pedido_Itens.Active:= True;
                            DMC.SDS_Cliente.Active:= True;
                            DM.SDS_Empresa.active := true;
                            DMC.SDS_Crediario_Contrato.Active :=true;
                            DMC.sds_mov_Caixa.Active := True;
                            DMC.SDS_CHEQUES.Active := True;

                           CLI := DMC.CDS_PedidosCODIGO_CLIENTE.Text +' - ' + dmc.CDS_PedidosNOME_CLIENTE.AsString;
                           END_CLI := dmc.CDS_PedidosENDERECO.AsString;
                           Numero_CLI := dmc.CDS_PedidosNUMERO.AsString;
                           CEP_CLI := dmc.CDS_PedidosCEP.AsString;
                           CID_CLI := dmc.CDS_PedidosCIDADE.AsString;
                           ESTADO_CLI := dmc.CDS_PedidoSUF.AsString;

                            qrecf_comando.Active := false;
                           qrecf_comando.Active := true;
                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;


                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'ABRE_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('promissoria').asfloat := prazo;
                           qrecf_comando.FieldByName('cliente').asstring := 'PRAZO';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           qrecf_comando.Active := false;
                           qrecf_comando.Active := true;
                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := 'Vda Nº ' + Formvendas.N_venda.Text + ' Data: ' + datetimetostr(now);
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           qrecf_comando.Active := false;
                           qrecf_comando.Active := true;
                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := '***************  DUPLICATA  *******************';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := 'Estou Ciente que pagarei a Quantia Conforme';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);


                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := 'parcelas abaixo em seus respectivos vencimentos:';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);


                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := 'Venda:  ' + ' Parc.  ' + '  Data Vecto ' + ' Valor Parcela';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                            DMC.QRY_COND_PAGTO.close;
                            DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(VENDA);
                            DMC.QRY_COND_PAGTO.Open;


                                DMC.qry_COND_PAGTO.First;
                                while not DMC.qry_COND_PAGTO.Eof do
                                begin

                                 dm.ProxCod.Close;
                                 dm.ProxCod.SQL.Clear;
                                 dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                                 DM.ProxCod.Open;

                                 qrecf_comando.insert;
                                 qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                                 qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                                 qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                                 qrecf_comando.FieldByName('cliente').asstring := ((DMC.qry_COND_PAGTOTITULO.AsString) + '     '+ (DMC.qry_COND_PAGTOParcela.AsString) + '      ' +(DMC.qry_COND_PAGTODATA_VENCIMENTO.AsString) + '    '+FormatFloat('###,###,##0.00',DMC.qry_COND_PAGTOVALOR.AsFloat));
                                 qrecf_comando.Post;
                                 qrecf_comando.ApplyUpdates(0);

                                DMC.qry_COND_PAGTO.Next;
                               end;

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := '------------------------------------------------';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := 'Cliente: '+ CLI;
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := 'End.: '+END_CLI + ' nº: ' + NUMERO_CLI;
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := 'Cep.: ' + CEP_CLI + ' Cid.: ' +CID_CLI + ' UF: ' + ESTADO_CLI;
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;


                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      :=venda;
                           qrecf_comando.FieldByName('cliente').asstring := '------------------------------------------------';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                             dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                            dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;
                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := 'Vendedor: '+DMC.CDS_PedidosUSUARIO.Text;
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                            dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;

                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;
                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);




                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;
                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := '------------------------------------------------';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;
                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := '***************   ASSINATURA   *****************';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                            dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;
                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                            dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;
                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := '*************   SIACE SISTEMAS    **************';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                           dm.ProxCod.Close;
                           dm.ProxCod.SQL.Clear;
                           dm.ProxCod.SQL.Add('select max(sequencia) as N_CODIGO FROM cupom');
                           DM.ProxCod.Open;


                           qrecf_comando.insert;
                           qrecf_comando.FieldByName('sequencia').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                           qrecf_comando.FieldByName('comando').asstring := 'FECHA_CNFV';
                           qrecf_comando.FieldByName('NUMERO').AsString      := venda;
                           qrecf_comando.FieldByName('cliente').asstring := '';
                           qrecf_comando.Post;
                           qrecf_comando.ApplyUpdates(0);

                      end;
                      end;

                   END ELSE
                        if DMC.CDS_PedidosN_CUPOM.Text > '' then
                        begin
                          ShowMessage('CUPOM JA IMPRESSO PARA ESTA VENDA...');
                        end;

                          except
                           //MessageDlg('Nenhum ECF encontrado.',mtInformation,[mbOk],0) ;
                          ShowMessage('Erro ao Tentar emitir o cupom, Estado: '+ Estados[ formECF.ACBrECF1.Estado ] + '...');
                          end;
                          end;
                          end;



                     if DMC.CDS_PedidosTP.Text = 'C' then
                     If DM.SDS_CONFIGURACOESBOLETO.Text = 'S' then
                     begin
                   //  If boleto.ShowModal = mryes then
                    if MESSAGEBOX(Application.Handle, 'Confirma a Emissão do Boleto?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                     try
                      begin
                     { If FormBoletos=nil then
                      begin
                      FormBoletos:=TFormBoletos.Create(self);
                      FormBoletos.Tag := 1;
                      FormBoletos.EDIT2.Text := venda;
                      FormBoletos.RXLABEL6.Caption := DM.sds_vendasNOME_CLIENTE.TEXT;
                      n_nfe := dm.sds_vendasNUM_NOTA.TEXT;
                      FormBoletos.ShowModal;
                      end; }
                      If frmTitulos=nil then
                      begin
                      frmTitulos:=TfrmTitulos.Create(self);
                      frmTitulos.Tag := 1;
                      n_nfe := formvendas.Sds_pedidosNUM_NOTA.TEXT;
                      cod_venda := dm.sds_vendasCODIGO.TEXT;
                      frmTitulos.showmodal;
                      end;


                      end;
                       except
                      ShowMessage('Erro na Emissão do Boleto');
                      end;
                      end;


                {   IF DM.SDS_CONFIGURACOESIMP_NOTA.Text ='S' THEN
                    BEGIN
                   // If NOTA.ShowModal = mryes then
                    if MESSAGEBOX(Application.Handle, 'Confirma a Impressão da Nota?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                    try
                    begin
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DMC.SQLD_Pedidos.Params[0].AsString:=venda;;
                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    FormImpNotaFiscal := TFormImpNotaFiscal.Create(self);
                    FormImpNotaFiscal.RLReport1.Prepare;
                    FormImpNotaFiscal.RLReport1.PreviewModal;
                    end;
                     except
                      ShowMessage('Erro na Emissão da Nota Fiscal');
                    end;
                    end;   }

     // suiButton1.Click;

   end;

END;

procedure TFormConsultaPedidoDireto.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsultaPedidoDireto.suiDBGrid1CellClick(Column: TXColumn);
begin
// VENDA := venda;
//DM.sds_vendas.Edit;
{if DM.sds_vendasCHEK_BOX.AsString = 'T' then
begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update pedidos set pedidos.chek_box = ''F'' WHERE CODIGO =:VENDA';
            Parambyname('VENDA').AsInteger    := DM.sds_vendascodigo.AsInteger;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
//DM.sds_vendasCHEK_BOX.AsString := 'F'
end else
begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   with dm.QConsulta do
      begin
         close;
         sql.Clear;
         sql.Text:= 'update pedidos set pedidos.chek_box = ''T'' WHERE CODIGO =:VENDA';
            Parambyname('VENDA').AsInteger    := DM.sds_vendascodigo.AsInteger;
         ExecSQL;
      end;
   dm.IBTransaction.Commit;
   dm.QConsulta.Close;
 end;
    DM.Sds_vendas.refresh;
   suiDBGrid1.refresh; }
{ try
    if DM.sds_vendas.FieldByName('chek_box').asstring = 'F' then
    begin
      DM.sds_vendas.edit;
      DM.sds_vendas.FieldByName('chek_box').asstring := 'T';
      DM.sds_vendas.post;
      DM.sds_vendas.ApplyUpdates(0);
    end
    else
    begin
      DM.sds_vendas.edit;
      DM.sds_vendas.FieldByName('chek_box').asstring := 'F';
      DM.sds_vendas.post;
      DM.sds_vendas.ApplyUpdates(0);
    end;
  except
    application.messagebox
      ('Esta venda está sendo utilizada em outro terminal! Aguarde...',
      'Atenção', mb_ok + mb_iconerror);

  end; }

  suiDBGrid1.SelectedRows.CurrentRowSelected := not suiDBGrid1.SelectedRows.CurrentRowSelected;
end;

procedure TFormConsultaPedidoDireto.suiDBGrid1DblClick(Sender: TObject);
begin
    {  qr_pedidos_itens.Close;
    //qr_pedidos_itens.SQL.Clear;
    qr_pedidos_itens.Params.ParamByName('cod_ped').AsInteger := (DM.sds_vendasCODIGO.AsInteger);
    qr_pedidos_itens.Open;  }

selectnext(activecontrol,True,True);
//Close;
end;

procedure TFormConsultaPedidoDireto.suiDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn; State: TGridDrawState);
VAR
  Check: Integer;
  R: TRect;
begin
  if not odd(DM.Sds_vendas.RecNo) then
  if not (gdselected in State) then
    begin
    suiDBGrid1.Canvas.Brush.Color := clSkyBlue;
    suiDBGrid1.Canvas.FillRect(Rect);
    suiDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
    end;

  If DM.sds_vendasNUM_NOTA.AsInteger > 0 then
  SuiDbgrid1.Canvas.Font.Color:= clBlue;
  If DM.sds_vendasN_CUPOM.text > '' then
  SuiDbgrid1.Canvas.Font.Color:= clblue;
  If DM.sds_vendasSITUACAO.text = 'C' then
  SuiDbgrid1.Canvas.Font.Color:= clRed;
  suiDbgrid1.DefaultDrawDataCell(Rect, suidbgrid1.columns[datacol].field, State);

 {   if column.FieldName = 'CHEK_BOX' then
    begin
    SuiDbgrid1.Canvas.FillRect(Rect);
    Check := 0;
    if DM.sds_vendasCHEK_BOX.AsString = 'T' then
    Check := DFCS_CHECKED
    else Check := 0;
    R:=Rect;
    InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
    DrawFrameControl(SuiDbgrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
    end;  }

  if (Column.Field.FieldName = 'CHEK_BOX') and (not (gdFixed in State)) then
  begin
  // Desenha um campo em branco
  SuiDbgrid1.Canvas.FillRect(Rect);

  // Testa de a linha está selecionada ou não
  if SuiDbgrid1.SelectedRows.IndexOf(SuiDbgrid1.DataSource.DataSet.Bookmark) >= 0 then
    DrawFrameControl(SuiDbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED)
  else
    DrawFrameControl(SuiDbgrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK);
  end;
end;

procedure TFormConsultaPedidoDireto.suiDBGrid1Enter(Sender: TObject);
begin
 {  X:=0;
   DM.Sds_Pedidos.first;
   if DM.Sds_Pedidostp.AsString = 'A' then
   begin
   X:= X + DM.Sds_PedidosVALOR_TOTAL.AsFloat;
   DM.Sds_Pedidos.Next;
   CurrencyEdit5.Value := X;
   end;
   While not DM.Sds_Pedidos.Eof do
   begin
   if DM.Sds_Pedidostp.asstring = 'A' then
   begin
   X:= X + DM.Sds_PedidosVALOR_TOTAL.AsFloat;
   DM.Sds_Pedidos.Next;
   CurrencyEdit5.Value := X;
   end;
end;   }
end;

procedure TFormConsultaPedidoDireto.suiButton5Click(Sender: TObject);
begin
                      try
                       If FormLancNotasFiscais=nil then
                         begin
                          FormLancNotasFiscais:=TFormLancNotasFiscais.Create(self);
                          FormLancNotasFiscais.ShowModal;
                          end;
                          except
                            ShowMessage('Houve um erro no lançamento da nota fiscal de vacinas');
                          end;
end;

procedure TFormConsultaPedidoDireto.ClienteExit(Sender: TObject);
begin
 DM.SDS_Clientes.Filtered := False;

 if edit3.Text='LETRAS' THEN

  BEGIN
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.sql.add('select * from clientes where NOME_RS like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;

  ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);


  IF ACHOU=FALSE THEN
  begin
  ClienteButtonClick(sender);
  end;

  IF ACHOU=TRUE THEN
  begin
  edit1.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
   end;
  end else

IF EDIT3.Text='NUMEROS' THEN
BEGIN
 IF Cliente.text > '999999' then
begin
  //ShowMessage('Quantidade informada Invalida, cupom aceita  maximo 999 itens, favor corrigir...');
 Cliente.Text := '';
 Cliente.SetFocus;
end else
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

IF ACHOU=FALSE THEN
begin
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',DBComboCliente.Text,[]);
SHOWMESSAGE('Codigo do Cliente Não Localizado');
Cliente.SetFocus;
end else
 IF ACHOU=TRUE THEN
  begin
  Edit1.text:=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
   end;
end;
end;


procedure TFormConsultaPedidoDireto.ClienteChange(Sender: TObject);
begin
IF (Cliente.Text>='A') AND (Cliente.Text<='Z') THEN
EDIT3.Text:='LETRAS';

IF (Cliente.Text>='0') AND (Cliente.Text<='9') THEN
EDIT3.Text:='NUMEROS';

IF Cliente.Text='' THEN
EDIT3.Text:=''
end;

procedure TFormConsultaPedidoDireto.ClienteButtonClick(Sender: TObject);
begin
    DM.SDS_Clientes.Active:= False;
    dm.SDS_Clientes.SQL.Clear;
    DM.SDS_Clientes.SQL.Add('select * from clientes where codigo <'+'-1'+'order by NOME_RS ASC');
    DM.SDS_Clientes.Active:= True;
    
// dm.SDS_Clientes.Filtered := false;
     FormConsClientes:=TFormConsClientes.Create(self);
     FormConsClientes.Edit1.Text := Cliente.Text;
      FormConsClientes.ShowModal;
       edit1.text   :=DM.SDS_Clientes.Fieldbyname('NOME_RS').AsString;
        Cliente.Text      :=DM.SDS_Clientes.Fieldbyname('CODIGO').AsString;
end;

procedure TFormConsultaPedidoDireto.suiButton4Click(Sender: TObject);
var
contador, e : Integer;
pedido : string;
begin
if dm.SDS_UsuariosEXPORTA_VENDA.Text <> 'S'then
begin
 FormPrincipal.MsgInformacao.HTMLText.Text  := 'O usuário conectado não possui autorização para Exportar a Venda. Contate o Administrador do Sistema para obter acesso !!!';
 FormPrincipal.MsgInformacao.Execute;
End;
if dm.SDS_UsuariosEXPORTA_VENDA.Text = 'S'then
begin
if dm.sds_vendasNUM_NOTA.AsInteger > 0 then
begin
Application.MESSAGEBOX('Já emitida uma nota para esta Venda, não será possivel fazer alteração....', 'Alerta', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
Exit;
end else
if dm.sds_vendasN_CUPOM.Text > '' then
begin
Application.MESSAGEBOX('Já emitido um Cupom Fiscal para esta Venda, não será possivel fazer alteração....', 'Alerta', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
Exit;
end else
if dm.sds_vendasSITUACAO.Text = 'C' then
begin
Application.MESSAGEBOX('Venda Cancelada, não será possivel fazer alteração....', 'Alerta', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
Exit;
end else

 if DM.IBTransaction.Active then
      DM.IBTransaction.Commit;
   DM.IBTransaction.StartTransaction;
   with q_Cred_Rec do
      begin
         close;
         Parambyname('compra').AsInteger:= strtoint(venda);
         open;
         FetchAll;
      end;
   DM.IBTransaction.CommitRetaining;

   if q_Cred_Rec.RecordCount > 0 then
   begin
    Application.MESSAGEBOX('Já existem baixas no crediario, não será possivel fazer alteração....', 'Alerta', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
    Exit;
   end;

if Application.MESSAGEBOX('Confirma a exportação da Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
begin

   { while not formvendas.Sds_pedidos_itens.EOF do
    begin
     formvendas.Sds_pedidos_itens.Delete;
      formvendas.Sds_pedidos_itens.ClearFields;
    end;

    while not formvendas.Sds_pedidos.EOF do
    begin
      formvendas.Sds_pedidos.Delete;
      formvendas.Sds_pedidos.ClearFields;
      end;    }

formvendas.Sds_pedidos.Active := FALSE;
formvendas.Sds_pedidos.Active := True;

formvendas.SDS_pedidos_itens.Active := False;
Formvendas.SDS_pedidos_itens.Active := True;

formVendas.Sds_pedidos.Insert;
formVendas.Sds_pedidos.EDIT;
//SPC_Codigo.ExecProc;
//N:= (formVendas.SPC_Codigo.ParamByName('ATUAL').AsInteger);
formVendas.Sds_pedidosCODIGO.Text := venda;//IntTostr(N);
//N_venda.Text          := IntToStr(N);
formvendas.Sds_pedidosDATA_PEDIDO.AsDateTime  := dm.sds_vendasDATA_PEDIDO.AsDateTime;
formvendas.Sds_pedidosDATA_ENTREGA.AsDateTime := dm.sds_vendasDATA_ENTREGA.AsDateTime;
formvendas.Sds_pedidosVALOR_ITENS.Text       := Dm.Sds_vendasVALOR_ITENS.Text;
formvendas.Sds_pedidosVALOR_DESCONTO.Text    := Dm.Sds_vendasVALOR_DESCONTO.Text;
formvendas.Sds_pedidosVALOR_TOTAL.Text       := Dm.Sds_vendasVALOR_TOTAL.Text;
formvendas.Sds_pedidosCODIGO_CLIENTE.Text    := Dm.Sds_vendasCODIGO_CLIENTE.Text;
formvendas.DBComboCliente.Text               := Dm.Sds_vendasCODIGO_CLIENTE.Text;
formvendas.Sds_pedidosNOME_CLIENTE.Text      := Dm.Sds_vendasNOME_CLIENTE.Text;
formvendas.Sds_pedidosENC_FINANCEIRO.Text    := Dm.Sds_vendasENC_FINANCEIRO.Text;
formvendas.Sds_pedidosCOD_PAGTO.Text         := Dm.Sds_vendasCOD_PAGTO.Text;
formvendas.Sds_pedidosPAGAMENTO.Text         := Dm.Sds_vendasPAGAMENTO.Text;
formvendas.Sds_pedidosOBSERVACOES.text       := Dm.Sds_vendasOBSERVACOES.text;
formvendas.Sds_pedidosCOD_VENDEDOR.text      := Dm.Sds_vendasCOD_VENDEDOR.text;
formvendas.Sds_pedidosUSUARIO.Text           := Dm.Sds_vendasUSUARIO.Text;
formvendas.Sds_pedidosCOD_EMPRESA.Text       := Dm.Sds_vendasCOD_EMPRESA.Text;
formvendas.Sds_pedidosENDERECO.Text           := dm.sds_vendasENDERECO.Text;
formvendas.sds_pedidosCIDADE.text             := dm.sds_vendasCIDADE.Text;
formvendas.Sds_pedidosBAIRRO.Text             := DM.sds_vendasBAIRRO.Text;
formVendas.Sds_pedidosNUMERO.Text             := DM.sds_vendasNUMERO.Text;
formvendas.Sds_pedidosFONE.Text               := DM.sds_vendasFONE.Text;
formvendas.Sds_pedidosSTATUS.Text             := DM.sds_vendasSTATUS.Text;
formvendas.Sds_pedidosTP.text                 := DM.sds_vendasTP.Text;
formVendas.Sds_pedidosN_CUPOM.Text            := DM.sds_vendasN_CUPOM.Text;
formvendas.Sds_pedidosN_ECF.text              := DM.sds_vendasN_ECF.Text;
formvendas.Sds_pedidosCOD_ORCAMENTO.text      := DM.sds_vendasCOD_ORCAMENTO.Text;
formvendas.Sds_pedidosCOD_OS.Text             := DM.sds_vendasCOD_OS.Text;
formvendas.Sds_pedidosNUM_NOTA.text           := dm.sds_vendasNUM_NOTA.Text;
formvendas.Sds_pedidosSERIE_NOTA.Text         := dm.sds_vendasSERIE_NOTA.Text;
formvendas.Sds_pedidosCPF_CNPJ.Text           := dm.sds_vendasCPF_CNPJ.text;
formvendas.Sds_pedidosRG_IE.text              := dm.sds_vendasRG_IE.Text;
formvendas.Sds_pedidosN_PARTIDA.Text          := dm.sds_vendasN_PARTIDA.Text;
formvendas.Sds_pedidosPROPRIEDADE.Text        := dm.sds_vendasPROPRIEDADE.Text;
formvendas.Sds_pedidosQUANT_VENDIDA.Text      := dm.sds_vendasQUANT_VENDIDA.Text;
formvendas.Sds_pedidosSALDO_VENDIDO.Text      := dm.sds_vendasSALDO_VENDIDO.Text;
formvendas.Sds_pedidosMED_VETERINARIO.Text    := dm.sds_vendasMED_VETERINARIO.Text;
formvendas.Sds_pedidosDATA_VACINA.Text        := dm.sds_vendasDATA_VACINA.Text;
formvendas.Sds_pedidosVALOR_AVISTA.Text       := dm.sds_vendasVALOR_AVISTA.Text;
formVendas.Sds_pedidosVALOR_PRAZO.Text        := dm.sds_vendasVALOR_PRAZO.Text;
formVendas.Sds_pedidosUF.Text                 := DM.sds_vendasUF.Text;
formVendas.Sds_pedidosCEP.Text                := dm.sds_vendasCEP.Text;
formVendas.Sds_pedidosCOD_IBGE.Text           := dm.sds_vendasCOD_IBGE.Text;
formVendas.Sds_pedidosVALOR_PAGO.Text         := dm.sds_vendasVALOR_PAGO.Text;
formVendas.Sds_pedidosVALOR_TROCO.Text        := dm.sds_vendasVALOR_TROCO.Text;
formVendas.Sds_pedidosTIPO.Text               := dm.sds_vendasTIPO.Text;
formVendas.Sds_pedidosREFERENCIA.Text         := dm.sds_vendasREFERENCIA.Text;
formVendas.sds_pedidoscelular.text            := dm.sds_vendasCELULAR.Text;
formVendas.Sds_pedidosprod_rural.text         := dm.sds_vendasPROD_RURAL.Text;
formVendas.Sds_pedidosie_produtor.text        := dm.sds_vendasIE_PRODUTOR.Text;
formVendas.Sds_pedidoskm.text                 := DM.sds_vendasKM.Text;
formvendas.Sds_pedidos.Post;

Dm.Sds_vendas_itens.Last;
formvendas.NItem  :=Dm.Sds_vendas_itensiten.value;

Dm.Sds_vendas_itens.First;
Contador := Dm.Sds_vendas_itens.RecordCount;
For E:=1 to Contador do
 begin
formvendas.Sds_pedidos_itens.Insert;
formvendas.Sds_pedidos_itens.Edit;
//SPC_COD_ITENS.ExecProc;
//N:= (SPC_COD_ITENS.ParamByName('ATUAL').AsInteger);
formvendas.Sds_pedidos_itensCODIGO.AsString           := '1'; //IntTostr(N);
formvendas.Sds_pedidos_itensCODIGO_ID.Text            := venda;
formvendas.sds_pedidos_itensITEN.Text                 := Dm.Sds_vendas_itensiten.Text;
formvendas.Sds_pedidos_itensCODIGO_PROD.Text          := Dm.Sds_vendas_itensCODIGO_PROD.Text;
formvendas.Sds_pedidos_itensCODIGO_PRODUTO.Text       := Dm.Sds_vendas_itensCODIGO_PRODUTO.Text;
formvendas.Sds_pedidos_itensDESCRICAO_PRODUTO.Text    := Dm.Sds_vendas_itensDESCRICAO_PRODUTO.Text;
formvendas.Sds_pedidos_itensDESCONTO.TEXT             := Dm.Sds_vendas_itensDESCONTO.Text;
formvendas.Sds_pedidos_itensQUANTIDADE.AsFloat           := Dm.Sds_vendas_itensQUANTIDADE.AsFloat;
formvendas.Sds_pedidos_itensPRECO_UNITARIO.AsFloat    := Dm.Sds_vendas_itensPRECO_UNITARIO.AsFloat;
formvendas.Sds_pedidos_itensPRECO_TOTAL.AsFloat          := Dm.Sds_vendas_itensPRECO_TOTAL.AsFloat;
formvendas.Sds_pedidos_itensVENDEDOR.Text             := Dm.Sds_vendas_itensVENDEDOR.Text;
formvendas.Sds_pedidos_itensUNIDADE.Text              := Dm.Sds_vendas_itensUNIDADE.Text;
formvendas.Sds_pedidos_itensSIT_TRIBUTARIA.Text       := Dm.Sds_vendas_itensSIT_TRIBUTARIA.Text;
formvendas.Sds_pedidos_itensENC_FINANCEIRO.TEXT       := Dm.Sds_vendas_itensENC_FINANCEIRO.Text;
formvendas.Sds_pedidos_itensFRACAO.text               := Dm.Sds_vendas_itensFRACAO.Text;
formvendas.Sds_pedidos_itensCOD_NCM.Text              := Dm.Sds_vendas_itensCOD_NCM.Text;
formvendas.Sds_pedidos_itensPROD_SERV.Text            := Dm.Sds_vendas_itensPROD_SERV.TEXT;
formvendas.sds_pedidos_itensCODIGO_BICO.Text          := DM.Sds_Vendas_itensID_BICO.TEXT;
formvendas.sds_pedidos_itensPROD_SERV.Text            := DM.Sds_Vendas_itensPROD_SERV.TEXT;
formvendas.sds_pedidos_itensPERC_ISS.Text             := DM.Sds_Vendas_itensPERC_ISS.TEXT;
formvendas.sds_pedidos_itensBASE_ISS.Text             := DM.Sds_Vendas_itensBASE_ISS.TEXT;
formvendas.sds_pedidos_itensVL_ISS.Text               := DM.Sds_Vendas_itensVL_ISS.TEXT;
formvendas.sds_pedidos_itensPERC_ICM.Text             := DM.Sds_Vendas_itensPERC_ICM.TEXT;
formvendas.sds_pedidos_itensBASE_ICMS.Text            := DM.Sds_Vendas_itensBASE_ICMS.TEXT;
formvendas.sds_pedidos_itensVL_ICM.Text               := DM.Sds_Vendas_itensVL_ICM.TEXT;
formvendas.sds_pedidos_itensPERC_IPI.Text             := DM.Sds_Vendas_itensPERC_IPI.TEXT;
formvendas.sds_pedidos_itensBASE_IPI.Text             := DM.Sds_Vendas_itensBASE_IPI.TEXT;
formvendas.sds_pedidos_itensVL_IPI.Text               := DM.Sds_Vendas_itensVL_IPI.TEXT;
formvendas.sds_pedidos_itensPERC_COFINS.Text          := DM.Sds_Vendas_itensPERC_COFINS.TEXT;
formvendas.sds_pedidos_itensVL_COFINS.Text            := DM.Sds_Vendas_itensVL_COFINS.TEXT;
formvendas.sds_pedidos_itensPERC_ICMS_SUBST.Text      := DM.Sds_Vendas_itensPERC_ICMS_SUBST.TEXT;
formvendas.sds_pedidos_itensBASE_ICMS_SUBST.Text      := DM.Sds_Vendas_itensBASE_ICMS_SUBST.TEXT;
formvendas.sds_pedidos_itensVL_ICMS_SUBST.Text        := DM.Sds_Vendas_itensVL_ICMS_SUBST.TEXT;
formvendas.sds_pedidos_itensPERC_PIS.Text             := DM.Sds_Vendas_itensPERC_PIS.TEXT;
formvendas.sds_pedidos_itensBASE_PIS.Text             := DM.Sds_Vendas_itensBASE_PIS.TEXT;
formvendas.sds_pedidos_itensVL_PIS.Text               := DM.Sds_Vendas_itensVL_PIS.TEXT;
//formvendas.sds_pedidos_itensCOD_EMPRESA.Text          := DM.Sds_Vendas_itensCOD_EMPRESA.TEXT;
//formvendas.sds_pedidos_itensimprime.Text          := DM.Sds_Vendas_itensIMPRIME.TEXT;
formvendas.sds_pedidos_itensBOMBA.Text              := DM.Sds_Vendas_itensID_BOMBA.Text;
Formvendas.sds_pedidos_itensTANQUE.Text             := DM.Sds_Vendas_itensID_TANQUE.Text;
Dm.Sds_vendas_itens.Next;
end;
formvendas.Sds_pedidos_itens.Post;

//formvendas.Tvendas.Visible := True;
formvendas.Tvendas.PageIndex := 1;
formvendas.Inserir.Enabled:= False;
formvendas.pesquisar.Enabled := False;
//formvendas.reimprimir.Enabled := False;
formvendas.confirmar.Enabled := True;
//Navegador.Enabled := False;
formvendas.GroupBox1.Enabled := True;
formvendas.GroupBox2.Enabled := True;
formvendas.groupbox3.Enabled := True;
//formvendas.Alterar.Enabled:=false;
formvendas.cancelar.Enabled:=False;

formvendas.Edit60.Visible := true;
formvendas.E_desconto.Visible := true;
formvendas.Edit62.Visible := true;

 IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='1' then
  begin
  formvendas.RbPreco1.Checked := True;
  end else
  IF DM.SDS_CONFIGURACOESPRECO_PADRAO.Text ='2' then
  begin
  formvendas.RbPreco2.Checked := True;
  end;

  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='S' then
  begin
  formvendas.DBGRID.Columns.Items[3].ReadOnly := False;
  end else
  IF DM.SDS_CONFIGURACOESLIB_PRECO_VENDA.Text ='N' then
  begin
  formvendas.DBGRID.Columns.Items[3].ReadOnly := True;
  end;

 if formvendas.Tag = 0 then
begin
if DM.SDS_CONFIGURACOESREGISTRADORA.Text = 'S' then
begin
formvendas.N_venda.Text :='0';
formvendas.CheckBox5.Checked := True;
end else
begin
formvendas.CheckBox4.Checked := True;
end;
end;

   pedido := venda;

            {  IF DM.SDS_CONFIGURACOESUSA_FRACAO.AsString = 'N' then
              BEGIN
              DM.Sds_Vendas_itens.First;
              Contador:=DM.Sds_Vendas_itens.RecordCount;
              For E:=1 to Contador do
              begin
              formVendas.SPC_Excluir_pedido.ParamByname('CODIGO').AsInteger := DM.Sds_vendas_itens.FieldByname('CODIGO_PROD').AsInteger;
              formVendas.SPC_Excluir_pedido.ParamByname('Quant').Value :=  DM.Sds_vendas_itens.FieldByname('QUANTIDADE').Value;
              formVendas.SPC_Excluir_pedido.ExecProc;
              formVendas.Sds_pedidos_itens.Next;
              end;
              end ELSE
              IF DM.SDS_CONFIGURACOESUSA_FRACAO.AsString = 'S' then
              begin
              DM.Sds_Vendas_itens.First;
              Contador:=DM.Sds_Vendas_itens.RecordCount;
              For E:=1 to Contador do
              begin
              formVendas.SPC_EXCLUIR_EST_FRACAO.ParamByname('CODIGO').AsInteger := DM.Sds_vendas_itens.FieldByname('CODIGO_PROD').AsInteger;
              formVendas.SPC_EXCLUIR_EST_FRACAO.ParamByname('Quant').Value :=  DM.Sds_vendas_itens.FieldByname('QUANTIDADE').Value;
              formVendas.SPC_EXCLUIR_EST_FRACAO.ParamByname('FRACAO').Value :=  DM.Sds_vendas_itens.FieldByname('FRACAO').Value;
              formVendas.SPC_EXCLUIR_EST_FRACAO.ExecProc;
              DM.Sds_vendas_itens.Next;
              end;
              end;  }


             { if Sds_pedidos_itens.RecordCount = 0 then
              begin
              Sds_pedidos_itens.Cancel;
              end else
              begin
              with Sds_pedidos_itens do
              while Sds_pedidos_itens.RecordCount > 0 do
              Sds_pedidos_itens.Delete;
              Sds_pedidos_itens.ApplyUpdates(0);
              end;  }

     exportada := True;

    //  formvendas.Sds_pedidos_itens.Insert;
     dm.SDS_Clientes.Active := false;
     dm.SDS_Clientes.SQL.Clear;
     dm.SDS_Clientes.sql.add('select * from clientes where CODIGO =' + Dm.Sds_vendasCODIGO_CLIENTE.Text +' order by NOME_RS ASC');
     dm.SDS_Clientes.Active := True;
     //  DM.SDS_Clientes.locate('CODIGO', RemoveChar(Dm.Sds_vendasCODIGO_CLIENTE.Text),[]);


     //        DM.sds_vendas.Delete;
           //  dm.sds_vendas.Post;
           //  DM.Sds_vendas.ApplyUpdates(0);
          //   DM.Conexao.Commit;
            { if Sds_pedidos.RecordCount = 0 then
             begin
             Sds_pedidos.CancelRange;
             end; }

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
                      BEGIN
                      formVendas.Sds_pedidos_itens.First;
                      formVendas.A:= 0;
                      formVendas.Desc := 0;
                      formVendas.A:= formVendas.A + formVendas.Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      formVendas.Desc:= formVendas.Desc  + formVendas.sds_pedidos_itensDESCONTO.AsFloat;
                      formVendas.Sds_pedidos_itens.Next;
                      formVendas.Edit60.Text:= FloatToStr(formVendas.A);
                      formVendas.Edit62.Text:= FloatToStr(formVendas.A - formVendas.DESC );
                      formVendas.E_desconto.Text := FloatToStr(formVendas.desc);
                      While not formVendas.Sds_pedidos_itens.Eof do
                      begin
                      formVendas.A:= formVendas.A + formVendas.Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      formVendas.Desc:= formVendas.Desc  + formVendas.sds_pedidos_itensDESCONTO.AsFloat;
                      formVendas.Sds_pedidos_itens.Next;
                      formVendas.Edit60.Text:= FloatToStr(formVendas.A);
                      formVendas.Edit62.Text:= FloatToStr(formVendas.A - formVendas.Desc);
                      formVendas.E_desconto.Text := FloatToStr(formVendas.desc);
                      end;
                      formVendas.Sds_pedidos_itens.last;
                      end;

                      IF DM.SDS_CONFIGURACOESTP_DESC.Text ='U' then
                      BEGIN
                      formVendas.Sds_pedidos_itens.First;
                      formVendas.A:= 0;
                      formVendas.Desc := 0;
                      formVendas.A:= formVendas.A + formVendas.Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      formVendas.Desc:= formVendas.Desc  + formVendas.sds_pedidos_itensDESCONTO.AsFloat;
                      formVendas.Sds_pedidos_itens.Next;
                      formVendas.Edit60.Text:= FloatToStr(formVendas.A + formVendas.desc);
                      formVendas.Edit62.Text:= FloatToStr(formVendas.A );
                      formVendas.E_desconto.Text := FloatToStr(formVendas.desc);
                      While not formVendas.Sds_pedidos_itens.Eof do
                      begin
                      formVendas.A:= formVendas.A + formVendas.Sds_pedidos_itensPRECO_TOTAL.AsFloat;
                      formVendas.Desc:= formVendas.Desc  + formVendas.sds_pedidos_itensDESCONTO.AsFloat;
                      formVendas.Sds_pedidos_itens.Next;
                      formVendas.Edit60.Text:= FloatToStr(formVendas.A + formVendas.desc);
                      formVendas.Edit62.Text:= FloatToStr(formVendas.A );
                      formVendas.E_desconto.Text := FloatToStr(formVendas.desc);
                      end;
                      formVendas.Sds_pedidos_itens.last;
                      end;             


      formVendas.Sds_pedidos_itens.last;
      IF formVendas.sds_pedidos_itens.RecordCount > 0 then
      begin
    //  formvendas.NValor:= formvendas.sds_pedidos_itensITEN.Value;
   //   formvendas.NItem:=formvendas.NItem+formvendas.NValor;
      formvendas.Sds_pedidos_itens.Insert;
   //   formvendas.Sds_pedidos_itensCODIGO.AsInteger:=(formvendas.NItem);
    //  formvendas.Sds_pedidos_itensITEN.AsInteger :=(formvendas.NItem);
      formvendas.Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
      formvendas.Sds_pedidos_itensCODIGO_ID.Text := formvendas.N_venda.Text;
      formvendas.Sds_pedidos_itensQUANTIDADE.Text := '0,00';
      formvendas.Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
      formvendas.Sds_pedidos_itensDESCONTO.Text := '0,00';
      formvendas.Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
      formvendas.Sds_pedidos_itensFRACAO.Text := '1';
      end;


      formVendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;

      formVendas.Sds_pedidos_itens.last;
      formVendas.Sds_pedidos_itens.Edit;
      formVendas.ComboEdit1.Visible := True;
      formVendas.ComboEdit1.SetFocus;
Close;
end;
end;
end;


procedure TFormConsultaPedidoDireto.suiButton3Click(Sender: TObject);
begin
close;
end;

procedure TFormConsultaPedidoDireto.suiButton7Click(Sender: TObject);
begin
Cliente.Clear;
DateEdit1.Clear;
DateEdit2.Clear;
Edit1.Clear;
Edit4.Clear;
end;

procedure TFormConsultaPedidoDireto.excluirClick(Sender: TObject);
var
  pedido :string;
  E:Integer;
begin
  if dm.sds_vendasNUM_NOTA.AsInteger > 0 then
  begin
    Application.MESSAGEBOX('Já emitida uma nota para esta Venda, não será possivel fazer alteração....',
    'Alerta', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
    Exit;
  end;
  if dm.sds_vendasN_CUPOM.Text > '' then
  begin
    Application.MESSAGEBOX('Já emitido um Cupom Fiscal para esta Venda, não será possivel fazer alteração....',
    'Alerta', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
    Exit;
  end;
  if FormPrincipal.Label1.Caption ='N'then
  begin
    ShowMessage('O usuário conectado não possui autorização para Excluir o Registro. '+
    'Contate o Administrador do Sistema para obter acesso!!! !!!');
    Exit;
  End;

  if FormPrincipal.Label1.Caption ='S'then
  begin
    if Application.MESSAGEBOX('Confirma a Exclusão da Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) <> ID_YES then
    Exit;
    Begin

      pedido := venda;

   { //LOG ESTOQUE
    if DM.IBTransaction.Active then
    DM.IBTransaction.Commit;
    DM.IBTransaction.StartTransaction; }
    try
    try
    DM.Sds_vendas_itens.First;
    Contador:= DM.Sds_vendas_itens.RecordCount;
    For E:=1 to Contador do
    begin
      dm.ProxCod.Close;
      dm.ProxCod.SQL.Clear;
      dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
      DM.ProxCod.Open;


          // BUSCA ESTOQUE
        {  if dm.IBTransaction.Active then
          dm.IBTransaction.Commit;
          dm.IBTransaction.StartTransaction;  }

          try
          with dm.Consulta do
          begin
          close;
          sql.Clear;
          sql.add('SELECT ESTOQUE FROM PRODUTOS WHERE CODIGO = :CODPRO');
          Parambyname('CODPRO').AsInteger:= DM.Sds_vendas_itensCodigo_prod.AsInteger;
          open;
          estoque:= fieldbyname('ESTOQUE').AsCurrency;
          end;
      //    dm.IBTransaction.Commit;
          except
       //   dm.IBTransaction.StartTransaction;
          showmessage('Erro ao buscar o custo do produto');
          end;

    with DM.logEst do
    begin
    close;
    parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
    parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
    parambyname('ID_AJUSTE').AsInteger      := DM.ProxCodN_CODIGO.ASINTEGER + 1;;
    Parambyname('ID_PRODUTO').AsInteger     := dm.Sds_Vendas_itensCODIGO_PROD.AsInteger;
    Parambyname('ID_LOTE').Value              := null;
    Parambyname('ID_PRODUTO_SERIE').Value     := null;
    Parambyname('DATA').AsDateTime            := date;
    Parambyname('ID_USUARIO').Asinteger       := dm.sds_usuariosCodigo.AsInteger;
    parambyname('ID_MOVIMENTO').AsInteger     :=  dm.sds_vendasCODIGO.asinteger;
    Parambyname('FRACAO').Asfloat             := dm.Sds_Vendas_itensFRACAO.AsINTEGER;
    Parambyname('ESTOQUE_ANTERIOR').Asfloat   := estoque;
    Parambyname('QUANTIDADE').Asfloat         :=  dm.Sds_Vendas_itensQUANTIDADE.AsFloat;
    Parambyname('ESTOQUE_POSTERIOR').Asfloat  := ESTOQUE + dm.Sds_Vendas_itensQUANTIDADE.AsFloat;
    Parambyname('SITUACAO_ESTOQUE').ASINTEGER := 6; // EXCLUSÃO DE VENDA
    Parambyname('OPERACAO').TEXT              := '+';
    Parambyname('ACAO_BD').TEXT               := 'E';
    Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
    parambyname('COD_VENDA').AsInteger      :=  dm.sds_vendasCODIGO.asinteger;
    parambyname('COD_COMPRA').VALUE         :=  null;
    Parambyname('HISTORICO').TEXT           := copy('Exclusão da Venda No. '+venda+' - '+dm.sds_vendasNOME_CLIENTE.Text,1,60);
    Parambyname('HORA').AsString           := TimeToStr(Time);
    ExecSQL;
    end;
  //  DM.IBTransaction.Commit;

    formVendas.Sds_Pedidos_itens.next;
    end;
    except
  //  DM.IBTransaction.Rollback;
    showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
    'Verifique que já foi lançado');
    end;
    finally
    dm.logEst.Close;
    end;





    formprincipal.log(codigo_usuario,'VENDA',venda,'EXCLUIU','EXCLUSÃO DA VENDA Nº '+venda+'Cliente: '+ DM.sds_vendasCODIGO_CLIENTE.Text+' - '+DM.sds_vendasNOME_CLIENTE.text);

    IF DM.sds_vendasCOD_OS.AsString <> '' THEN
    BEGIN
    DMOS.SDS_OS.open;
    if dmos.sds_os.locate('ID_OS_ORDEMSERVICO',DM.sds_vendasCOD_OS.AsString,[]) then
    BEGIN;
    DMOS.SDS_OS.Edit;
    DMOS.SDS_OSSITUACAO.TEXT := 'ABERTA';
    DMOS.SDS_OSID_VENDA.IsNull;
    DMOS.SDS_OS.Post;
    DMOS.SDS_OS.ApplyUpdates(0);
    END;

    {
    if DM.IBTransaction.Active then
    DM.IBTransaction.Commit;
    DM.IBTransaction.StartTransaction;
    with dm.IBSQL do
    begin
    close;
    sql.Clear;
    SQL.Add('UPDATE os_ordemservico set id_venda =:venda, situacao = ''ABERTA'' WHERE id_os_ordemservico =:OS');
    Parambyname('VENDA').AsInteger:= -1;
    Parambyname('OS').AsInteger:= DM.sds_vendasCOD_OS.AsInteger;
    ExecQuery;
    DM.IBTransaction.CommitRetaining;
    END; }

    end;

    { if DM.Sds_Vendas_itens.RecordCount = 0 then
    begin
    DM.Sds_Vendas_itens.Cancel;
    end else
    begin
    with DM.Sds_Vendas_itens do
    while DM.Sds_Vendas_itens.RecordCount > 0 do
    DM.Sds_Vendas_itens.Delete;
    DM.Sds_Vendas_itens.ApplyUpdates(0);
    end;}

    { DM.sds_vendas.Delete;
    DM.sds_vendas.Post;
    DM.sds_vendas.ApplyUpdates(0);  }
    try
    with DelItem do
    begin
    close;
    Parambyname('codace').AsInteger := strtoint(venda);
    ExecSQL;
    end;
    //    IBTRAce.Commit;
    except
    //  IBTRAce.Rollback;
    showmessage('Erro ao Excluir A Venda');
    end;
    { if DM.sds_vendas.RecordCount = 0 then
    begin
    DM.sds_vendas.CancelRange;
    end;  }
    suiButton1.Click;
    end;

    //  Sds_pedidos.Active := false;
    //  Sds_pedidos.Active := true;
    dm.Sds_vendas.First;


  end;
end;


procedure TFormConsultaPedidoDireto.ClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
IF Key =#13 then
BEGIN
 if edit3.Text='LETRAS' THEN
BEGIN
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.sql.add('select * from clientes where NOME_RS like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;

  ACHOU := DM.SDS_Clientes.locate('nome_rs',Cliente.Text,[loCaseInsensitive]);

IF ACHOU=FALSE THEN
begin
ClienteButtonClick(sender);
end ELSE

IF ACHOU=TRUE THEN
BEGIN
Cliente.Text := DM.SDS_ClientesCODIGO.Text;
EDIT1.Text:= DM.SDS_ClientesNOME_RS.Text;
end;
end else

IF EDIT3.Text='NUMEROS' THEN
BEGIN
  dm.SDS_Clientes.Active := false;
  dm.SDS_Clientes.SQL.Clear;
  dm.SDS_Clientes.sql.add('select * from clientes where CODIGO like ' + #39 + '%' + Cliente.Text + '%' + #39+'order by NOME_RS ASC');
  dm.SDS_Clientes.Active := True;
  //ACHOU:= DM.SDS_Clientes.locate('CODIGO', RemoveChar(DBComboCliente.Text),[]);

//DBComboCliente.Text := FormatFloat('0000',StrToFloat(DBComboCliente.Text));
  ACHOU:= DM.SDS_Clientes.locate('CODIGO', Cliente.Text,[]);

IF ACHOU=FALSE THEN
SHOWMESSAGE('Codigo do Cliente Não Localizado');

IF ACHOU=TRUE THEN
Cliente.Text:= DM.SDS_ClientesCODIGO.Text;
EDIT1.Text:= DM.SDS_ClientesNOME_RS.Text;
end;
end;
end;

procedure TFormConsultaPedidoDireto.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;

procedure TFormConsultaPedidoDireto.Edit4KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['A'..'Z','a'..'z', #8, #32]) then
          key := #0;
end;

procedure TFormConsultaPedidoDireto.suiButton6Click(Sender: TObject);
var
  CHEK : string;
  e: Integer;

   ctOTAL : currency;
    iQuant : integer;
begin
DM.sds_vendas.DisableControls;

CHEK := 'T';

   DM.sds_vendas.First;
   while not DM.sds_vendas.Eof  do
      begin
         if suiDBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
              DM.sds_vendas.edit;
              DM.sds_vendas.FieldByName('chek_box').asstring := 'T';
              DM.sds_vendas.post;
             // DM.sds_vendas.ApplyUpdates(0);
           //   dm.Conexao.Commit;
              ctOTAL := ctOTAL + DM.sds_vendasVALOR_ITENS.AsCurrency;
             inc(iQuant);
            end else
            begin
              DM.sds_vendas.edit;
              DM.sds_vendas.FieldByName('chek_box').asstring := 'F';
              DM.sds_vendas.post;
            //  DM.sds_vendas.ApplyUpdates(0);
        //     dm.Conexao.Commit;
            end;
        DM.sds_vendas.Next;
      end;
         if iQuant = 0 then
      begin
         showmessage('Nenhuma venda selecionada');
      end
    else
      begin
                 DM.sds_vendas.EnableControls;

                 dm.sds_vendas.Filtered := False;
                 DM.sds_vendas.Filter := 'CHEK_BOX ='+QuotedStr(CHEK);
                 dm.sds_vendas.Filtered := True;
                 if dm.sds_vendas.RecordCount > 1  then
                 begin
                   agrupado := true;
                 end;
                  iCodigoCli := dm.sds_vendasCODIGO_CLIENTE.asinteger;

                // if NOT DM.sds_vendas.Eof then
               // BEGIN
                If DM.SDS_UsuariosUTILIZA_NFE.Text = 'S' then
                 if Application.MESSAGEBOX('Confirma Geração e Emissão da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                 begin
                       try
                        If FormGefaNFe=nil then
                         begin
                          FormGefaNFe:=TFormGefaNFe.Create(self);
                          FormGefaNFe.combobox2.itemIndex := 2;
                          FormGefaNFe.combobox2.Enabled := False;
                          DM.qrcfop.Active := False;
                          DM.qrcfop.sql.Clear;
                          DM.qrcfop.sql.add('select * from TABELA_CFOP where cfop >=4000');
                          DM.qrcfop.Active := true;
                          FormGefaNFe.ShowModal;

                          DM.sds_vendas.First;
                          IF valida_nfe = True then
                          BEGIN
                          with DM.sds_vendas do
                            begin
                               first;
                               while not eof do
                               begin
                                 if DM.sds_vendasCHEK_BOX.Text = 'T' THEN
                                 BEGIN
                                   SPC_N_NFE.Params[0].AsInteger :=  StrToInt(venda);
                                   SPC_N_NFE.Params[1].AsInteger  := StrToInt(DM.SDS_NFENR_NOTA.text);
                                   SPC_N_NFE.Params[2].AsString  :=  DM.SDS_NFESERIE_NF.text;
                                   SPC_N_NFE.Params[3].AsInteger  := IEMP;
                                   N_nfe :=  DM.SDS_NFENR_NOTA.text;
                                   SPC_N_NFE.ExecProc;
                                   end;
                               Next;
                               end;
                           end;
                            dm.sds_vendas.Filtered := False;
                            suiButton1.Click;
                          {  if dm.IBTransaction.Active then
                                dm.IBTransaction.Commit;
                             dm.IBTransaction.StartTransaction;
                             with QConsulta do
                                begin
                                   close;
                                   sql.Clear;
                                   sql.Text:= 'update pedidos set pedidos.NUM_NOTA = :NOTA, pedidos.SERIE_NOTA =:SERIE  WHERE pedidos.chek_box = ''T'' AND DATA_PEDIDO between  :datai and :dataf';
                                      Parambyname('NOTA').AsInteger  := StrToInt(DM.SDS_NFENR_NOTA.text);
                                      Parambyname('SERIE').AsString  := DM.SDS_NFESERIE_NF.text;
                                      Parambyname('datai').AsDate    := DateEdit1.date;
                                      Parambyname('dataf').AsDate    := DateEdit2.date;
                                   ExecSQL;
                                end;
                             dm.IBTransaction.Commit;
                             QConsulta.Close;
                             END ;  }
                           end;



                          Application.ProcessMessages;
                          end;
                          except
                            ShowMessage('Houve um erro na emissão da NF-e');
                          end;
                       end;
                   {    end else
                       ShowMessage('SELECIONE UMA VENDA PRA GERAR O NFE....'); }
                       dm.sds_vendas.Filtered := False;
                       suiButton1.Click;
end;
end;

procedure TFormConsultaPedidoDireto.Edit5Change(Sender: TObject);
begin
IF (Edit5.Text>='A') AND (Edit5.Text<='Z') THEN
EDIT6.Text:='LETRAS';

IF (EDIT5.Text>='0') AND (Edit5.Text<='9') THEN
EDIT6.Text:='NUMEROS';

IF EDIT5.Text='' THEN
EDIT6.Text:=''
end;

procedure TFormConsultaPedidoDireto.suiButton8Click(Sender: TObject);
begin
                   if DM.SDS_CONFIGURACOESUSA_FP.Text = 'S' then
                   BEGIN

                       if DM.sds_vendasCHAVE_FP_CANCEL.Text > '' then
                       begin
                         ShowMessage('Venda Já cancelada no Farmacia Popular');
                       end else
                       if dm.sds_vendasCHAVE_FP.Text > '' then
                        try
                       // If frmFarmaciaPopular=nil then
                         begin
                          frmFarmaciaPopular:=TfrmFarmaciaPopular.Create(self);
                       //   frmFarmaciaPopular.EDTCHAVE.TEXT := DM.sds_vendasCHAVE_FP.Text;
                          frmFarmaciaPopular.Tag := 1;
                          frmFarmaciaPopular.ShowModal;
                          suiButton1.Click;
                          end;
                          except
                            ShowMessage('Houve um erro ao Criar o Formulario de Cancelamento da Farmácia Popular');
                          end;
                    end;
end;

procedure TFormConsultaPedidoDireto.AlteradadosdoCliente1Click(
  Sender: TObject);
begin
     if DM.sds_vendasNUM_NOTA.Text > '' then
     begin
       ShowMessage('Nota fiscal ja emitida... Cliente não pode ser alterado.');
     end else
     DM.SDS_Clientes.Active:= False;
   // DM.SDS_Clientes.DataSet.CommandText:='select * from clientes where codigo <'+'1'+'order by NOME_RS ASC';
     DM.SDS_Clientes.Active:= True;
     FormAddClientesPedido:=TFormAddClientesPedido.Create(self);
     FormAddClientesPedido.ShowModal;
end;

procedure TFormConsultaPedidoDireto.suiDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = vk_space then
begin
{DM.sds_vendas.Edit;
if DM.sds_vendasCHEK_BOX.AsString = 'T' then
DM.sds_vendasCHEK_BOX.AsString := 'F'
else DM.sds_vendasCHEK_BOX.AsString := 'T';
DM.sds_vendas.Post;
DM.sds_vendas.ApplyUpdates(0);}
suiDBGrid1.SelectedRows.CurrentRowSelected := not suiDBGrid1.SelectedRows.CurrentRowSelected;
end;
end;

procedure TFormConsultaPedidoDireto.suiButton9Click(Sender: TObject);
var
   CHEK:string;
   e, tam:Integer;
   ctOTAL : currency;
   iQuant, D : integer;
   y,xa, za, bx,By,bz,b_pis, pis, b_cofins, cofins, icm, ipi, iss, b_icm,b_ipi,b_iss :Double;
   Xt, PercentualDesconto, TOTAL1, TOTAL_VENDA,total_g,total_t: real;
begin
   DM.sds_vendas.DisableControls;

 {  DM.sds_vendas.First;
   while not DM.sds_vendas.Eof  do
      begin
         if suiDBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
              DM.sds_vendas.edit;
              DM.sds_vendas.FieldByName('chek_box').asstring := 'T';
              DM.sds_vendas.post;
            //  dm.Conexao.Commit;
              //DM.sds_vendas.ApplyUpdates(0);
              ctOTAL := ctOTAL + DM.sds_vendasVALOR_ITENS.AsCurrency;
             inc(iQuant);
            end else
            begin
              DM.sds_vendas.edit;
              DM.sds_vendas.FieldByName('chek_box').asstring := 'F';
              DM.sds_vendas.post;
          //    dm.Conexao.Commit;
              //DM.sds_vendas.ApplyUpdates(0);
            end;
        DM.sds_vendas.Next;
      end;
         if iQuant = 0 then
      begin
         showmessage('Nenhuma parcela selecionada');
      end
    else
      begin

           CHEK := 'T';
           DM.sds_vendas.EnableControls;
           
           dm.sds_vendas.Filtered := False;
           DM.sds_vendas.Filter := 'CHEK_BOX ='+QuotedStr(CHEK);
           dm.sds_vendas.Filtered := True;  }

          DM.sds_vendas.EnableControls;
        
          { if NOT DM.sds_vendas.Eof then
           BEGIN }
               // If DM.SDS_CONFIGURACOESUTILIZA_NFE.Text = 'S' then
                If formprincipal.NFCE = 'S' then
                 if Application.MESSAGEBOX('Confirma Geração e Emissão da NFC-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                 begin

                        dm.SDS_NFCE.Close;
                        dm.SDS_NFCE.SQL.Clear;
                        dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_PEDIDO = :NR_PEDIDO and cd_empresa =:cod_emp');
                        dm.SDS_NFCE.Params.ParamByName('NR_PEDIDO').AsInteger := strtoint(VENDA);
                        dm.SDS_NFCE.Params.ParamByName('COD_EMP').AsInteger := Iemp;
                        dm.SDS_NFCE.open;
                        dm.sds_nfce_itens.Active:=false;
                        dm.sds_nfce_itens.Active:=true;

                         if dm.SDS_NFCE.Locate('NR_PEDIDO',venda, [loCaseInsensitive]) = True then
                         BEGIN
                           SPC_N_NFE.Params[0].AsInteger :=  StrToInt(venda);
                           SPC_N_NFE.Params[1].AsInteger  := StrToInt(DM.SDS_NFCENR_NOTA.text);
                           SPC_N_NFE.Params[2].AsString  :=  DM.SDS_NFCESERIE_NF.text;
                           SPC_N_NFE.Params[3].AsInteger  := IEMP;
                           SPC_N_NFE.ExecProc;

                          // if dm.SDS_NFCENR_PROTOCOLO_NFE.Text >'' then

                           Application.MESSAGEBOX('NFC-E Já Gerada para Esta venda Não será possiver Gerar uma Nova NFC-e !', 'Atenção', MB_ICONQUESTION + MB_OK + MB_DEFBUTTON1);
                           suiButton1Click(sender);

                           Exit;
                           Abort;
                          end;

                        dm.SDS_NFCE.Close;
                        dm.SDS_NFCE.SQL.Clear;
                        dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota');
                        //dm.SDS_NFCE.Params.ParamByName('NR_NOTA').AsInteger := -1;
                       // dm.SDS_NFCE.Params.ParamByName('COD_EMP').AsInteger := Iemp;
                        dm.SDS_NFCE.open;
                        DM.sds_nfCe_itens.Active := False;
                        DM.sds_nfCe_itens.Active := True;

                      {  dm.ProxCod.Close;
                        dm.ProxCod.SQL.Clear;
                        dm.ProxCod.SQL.Add('select max(nr_nota) as n_codigo  from nfece_nota');
                        //dm.ProxCod1.Params.Items[0].AsString  := dm.SDS_EmpresaCODIGO.Text;
                        DM.ProxCod.open;
                      //  dm.ProxCod1.FetchAll;   }

                      if iemp < 1 then
                      begin
                        ShowMessage('Empresa em branco');
                        exit;
                      end;

                        dm.SDS_NFCE.Insert;
                     //   DM.SPC_NFCE.ExecProc;
                       // N:= (DM.SPC_NFCE.ParamByName('ATUAL').AsInteger);
                        n_notac.Close;
                        n_notac.ParamByName('cod_emp').AsInteger := iEmp;
                        n_notac.Open();
                        n:= n_notacN_NOTA.AsInteger + 1;


                        dm.sds_nfceNr_nota.AsInteger           :=  N ;
                        dm.SDS_NFCECD_EMPRESA.AsInteger        :=  Iemp;
                        DM.sds_nfceDt_emissao.AsDateTime       :=  dm.Sds_VendasDATA_PEDIDO.AsDateTime;
                        DM.sds_nfceDt_lancamento.AsDateTime    :=  dm.Sds_VendasDATA_PEDIDO.AsDateTime;
                        DM.sds_nfcevl_mercadorias.Text         :=  dm.Sds_VendasVALOR_ITENS.Text;
                        DM.sds_nfceVl_descontos.Text           :=  dm.Sds_VendasVALOR_DESCONTO.Text;
                        DM.sds_nfceVl_total.Text               :=  dm.Sds_VendasVALOR_TOTAL.Text;
                        dm.sds_nfcecod_cliente.Text            :=  dm.Sds_VendasCODIGO_CLIENTE.Text;
                        dm.sds_nfceVl_acrescimos.text          :=  dm.Sds_VendasENC_FINANCEIRO.Text;
                        DM.SDS_NFcECOD_PGTO.Text               :=  dm.Sds_VendasCOD_PAGTO.Text;
                        DM.SDS_NFcECD_FUNCIONARIO.Text         :=  dm.Sds_VendasCOD_VENDEDOR.text;
                        DM.SDS_NFcESERIE_NF.Text               :=  '1';
                        DM.SDS_NFcENR_PEDIDO.Text              :=  venda;
                        dm.SDS_NFcEVL_AVISTA.Text              :=  dm.Sds_VendasValor_avista.text;
                        DM.SDS_NFcEVL_PRAZO.Text               :=  dm.Sds_VendasValor_prazo.text;
                       // dm.SDS_NFcECD_EMPRESA.Text             :=  DM.SDS_EmpresaCODIGO.Text;
                        //DM.SDS_NFEN_SEQUENCIA.Text            :=  '1';
                        DM.SDS_NFcECD_CFOP.Text                :=  '5102';//RxDBComboEdit2.Text;
                        DM.SDS_NFcECFOP_DESC.Text              :=  'VENDA DE MERCADORIA FDQUIRIDA OU RECEBIDA DE TERCEIROS';//suiEdit2.Text;
                        //dM.SDS_NFEVL_BASE_ICM.TEXT            :=  formvendas.Sds_PedidosVALOR_ITENS.TEXT;
                       { dm.SDS_NFcECD_TRANSPORTADORA.Text      :=  '';//RxDBComboEdit1.Text;
                        DM.SDS_NFcEPLACA_TRANSP.Text           :=  Edit5.Text;
                        DM.SDS_NFcEQt_volumes.Text             :=  Edit3.text;
                        DM.SDS_NFcEespecie_volumes.Text        :=  Edit4.text;
                        DM.SDS_NFcEMarca_volumes.Text          := 'UN';
                        DM.SDS_NFcENr_volumes.Text             :=  Edit3.text;
                        DM.SDS_NFcEPEso_liquido.Text           :=  Edit2.text;
                        DM.SDS_NFcEPEso_liquido.Text           :=  Edit2.text; }

                        DM.SDS_NFcETP.TEXT                     :=  dm.sds_vendasTIPO.TEXT;
                        DM.SDS_NFcENOME_CLIENTE_FOR.Text       :=  dm.Sds_VendasNOME_CLIENTE.Text;
                        DM.SDS_NFcEBAIRRO_CLIENTE_FORN.Text    :=  dm.Sds_VendasBAIRRO.Text;
                        dm.SDS_NFcEEND_NUM_CLIENTE.Text        :=  dm.Sds_VendasNUMERO.Text;
                        DM.SDS_NFcECEP_CLIENTE_FORN.Text       :=  dm.Sds_VendasCEP.Text;
                        DM.SDS_NFcETELEFONE.Text               :=  dm.Sds_VendasFONE.Text;
                        dm.SDS_NFcECPF_CNPJ_CLIENTE_FORN.text  :=  dm.Sds_VendasCPF_CNPJ.Text;
                        dm.SDS_NFcETIPO_PESSOA.text            :=  dm.Sds_VendasTIPO.Text;
                        dm.SDS_NFcECOD_IBGE.Text               :=  dm.Sds_VendasCOD_IBGE.Text;
                        DM.SDS_NFcEPRODUTOR_RURAL.Text         :=  dm.Sds_VendasPROD_RURAL.Text;
                        DM.SDS_NFcEIE_CLIENTE_FORN.Text        :=  dm.Sds_VendasRG_IE.Text;
                        DM.SDS_NFcEIE_PRODUTOR.Text            :=  dm.Sds_VendasIE_PRODUTOR.Text;
                        dm.SDS_NFcECIDADE_CLIENTE_FORN.text    :=  dm.Sds_VendasCIDADE.Text;
                        DM.SDS_NFcEUF_CLIENTE_FORN.Text        :=  dm.Sds_VendasUF.Text;
                        dm.SDS_NFcEENDERECO_CLI_FORN.Text      :=  dm.Sds_VendasENDERECO.text;
                        DM.SDS_NFcEPAGAMENTO.text              :=  dm.Sds_VendasPAGAMENTO.text;
                        DM.SDS_NFCEVL_TROCO.AsCurrency          := dm.Sds_VendasVALOR_TROCO.AsCurrency;
                        DM.SDS_NFcESTATUS.Text                 :=  'N';


                        Application.ProcessMessages;
                        DM.SDS_NFcE.Post;
                        DM.SDS_NFcE.ApplyUpdates(0);
                        
                     {   IF RxDBComboEdit1.Text >'' then
                        BEGIN
                        DM.SDS_NFcECNPJ_TRANSP.Text            :=  DM.Sds_TransportadorCNPJ.Text;
                        DM.SDS_NFcEIE_TRANSP.Text              :=  DM.Sds_TransportadorINSCRICAO.Text;
                        DM.SDS_NFcENOME_TRANSP.Text            :=  DM.Sds_TransportadorNOME_TRANSP.TEXT;
                        DM.SDS_NFcEEND_TRANSPORTADOR.TEXT      :=  DM.Sds_TransportadorENDERECO.Text +' ' + DM.Sds_TransportadorBAIRRO.Text;
                        DM.SDS_NFcECIDADE_TRANSP.Text          :=  DM.Sds_TransportadorCD_CIDADE.Text;
                        DM.SDS_NFcEUF_TRANSP.Text              :=  DM.Sds_TransportadorUF.Text;
                        end; }
                        dm.SDS_NFCE.SQL.Clear;
                        dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_NOTA = :NR_NOTA and cd_empresa =:cod_emp');
                        dm.SDS_NFCE.Params.ParamByName('NR_NOTA').AsInteger := N;
                        dm.SDS_NFCE.Params.ParamByName('COD_EMP').AsInteger := IEMP;
                        dm.SDS_NFCE.open;

                      e:=0;
                      NItem :=0;
                      dm.Sds_Vendas_itens.First;
                      Contador := dm.Sds_Vendas_itens.RecordCount;
                      For E:=1 to Contador do
                      begin
                    //   TRY
                        dm.sds_nfce_itens.Insert;
                        dm.sds_nfce_itens.Edit;
                        with QBuscaItens do
                        begin
                           close;
                           Parambyname('cod_ven').AsInteger:= strtoint(venda);
                           Parambyname('codpro').AsInteger:= strtoint(dm.Sds_Vendas_itensCODIGO_PROD.Text);
                           Parambyname('ITEM').AsInteger:= strtoint(dm.Sds_Vendas_itensITEN.Text);
                           open;
                           Last;
                        end;

                        IF DM.SDS_CONFIGURACOESEXCLUI_SERV_NFE.Text = 'S' then
                         begin
                            IF QBuscaItensPROD_SERV.Text = 'P' then
                            BEGIN
                            NValor:=1;

                            tam := length(RemoveChar(dm.Sds_Vendas_itensCODIGO_PRODUTO.Text));

                            NItem:=NItem+NValor;
                            dm.sds_nfce_itensITEN.AsInteger               := NItem;
                            dm.sds_nfce_itensNR_SEQUENCIA.AsInteger       := NItem;
                            dm.sds_nfce_itensNR_NOTA.AsInteger            := N;
                            dm.sds_nfce_itensCOD_EMPRESA.AsInteger        := iemp;
                           { if tam = 13 then
                                begin
                            dm.sds_nfce_itensCOD_PRODUTO.Text             := dm.Sds_Vendas_itensCODIGO_PRODUTO.Text;
                                end else
                                begin }
                            dm.sds_nfce_itensCOD_PRODUTO.Text             := '';

                            dm.sds_nfce_itensCD_ATUALIZACAO.AsInteger     := strtoint(venda);
                            DM.sds_nfce_itensCODIGO_PROD.Text             := dm.Sds_Vendas_itensCODIGO_PROD.Text;
                            dm.sds_nfce_itensDESCRICAO_PRODUTO.Text       := dm.Sds_Vendas_itensDESCRICAO_PRODUTO.Text;
                           // if dm.SDS_CONFIGURACOESTP_DESC.Text = 'U' THEN
                           // dm.sds_nfce_itensVL_DESCONTO.Text             := '0'
                           // ELSE
                            dm.sds_nfce_itensVL_DESCONTO.Text             := dm.Sds_Vendas_itensDESCONTO.TEXT;
                            dm.sds_nfce_itensQT_PRODUTO.AsFloat           := dm.Sds_Vendas_itensQUANTIDADE.asfloat;
                            dm.sds_nfce_itensVL_UNITARIO.Asfloat          := dm.Sds_Vendas_itensPRECO_UNITARIO.AsFloat;

                            if dm.SDS_CONFIGURACOESTP_DESC.Text = 'U' THEN
                            dm.sds_nfce_itensVL_TOTAL.asfloat             := dm.Sds_Vendas_itensPRECO_UNITARIO.AsFloat * dm.Sds_Vendas_itensQUANTIDADE.asfloat
                            ELSE
                            dm.sds_nfce_itensVL_TOTAL.Text                := dm.Sds_Vendas_itensPRECO_TOTAL.text;
                            dm.sds_nfce_itensDESC_UNIDADE.Text            := dm.Sds_Vendas_itensUNIDADE.Text;
                            dm.sds_nfce_itensVL_OUTROS.Text               := dm.Sds_Vendas_itensENC_FINANCEIRO.TEXT;
                            //dm.sds_nfce_itensCD_CLIENTE.Text              := formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
                            DM.sds_nfce_itensCFOP.Text                    := QBuscaItensCFOP_EST_VENDA.Text;
                            dm.sds_nfce_itensCST.Text                     := QBuscaItensCST_VENDA.Text;
                            dm.sds_nfce_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_EST.Text;
                            dm.sds_nfce_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_EST.Text;
                            dm.sds_nfce_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
                            IF QBuscaItensNCM_SH.Text > '' THEN
                            BEGIN
                            DM.sds_nfce_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
                            end else
                            IF QBuscaItensNCM_SH1.Text > '' THEN
                            begin
                            DM.sds_nfce_itensCOD_NCM.Text                 := QBuscaItensNCM_SH1.Text;
                            end;
                            IF DM.sds_nfce_itensCOD_NCM.Text ='' THEN
                            BEGIN
                            DM.sds_nfce_itensCOD_NCM.Text                 := '99999999';
                            end;
                            IF DM.sds_nfce_itensCOD_NCM.Text ='00000000' THEN
                            BEGIN
                            DM.sds_nfce_itensCOD_NCM.Text                 := '99999999';
                            end;
                            IF Length(DM.sds_nfce_itensCOD_NCM.Text) < 8 THEN
                            BEGIN
                            DM.sds_nfce_itensCOD_NCM.Text                 := '99999999';
                            END;


                            dm.sds_nfce_itensALIQ_ICM.AsFloat               := dm.Sds_Vendas_itensPERC_ICM.AsFloat ;
                            dm.sds_nfce_itensVL_ICM.AsFloat                 := dm.Sds_Vendas_itensVL_ICM.AsFloat;
                            dm.sds_nfce_itensVL_BASE_ICM.AsFloat            := dm.Sds_Vendas_itensBASE_ICMS.AsFloat;


                            dm.sds_nfce_itensALIQ_IPI.AsFloat               := dm.Sds_Vendas_itensPERC_IPI.AsFloat ;
                            dm.sds_nfce_itensVL_IPI.AsFloat                 := dm.Sds_Vendas_itensVL_IPI.AsFloat;
                            dm.sds_nfce_itensVL_BASE_IPI.AsFloat            := dm.Sds_Vendas_itensBASE_IPI.AsFloat;



                            dm.sds_nfce_itensALIQ_ISS.AsFloat               := dm.Sds_Vendas_itensPERC_ISS.AsFloat ;
                            dm.sds_nfce_itensVL_ISS.AsFloat                 := dm.Sds_Vendas_itensVL_ISS.AsFloat;
                            dm.sds_nfce_itensVL_BASE_ISS.AsFloat            := dm.Sds_Vendas_itensBASE_ISS.AsFloat ;

                            with formvendas.QBuscaItens do
                            begin
                               close;
                               Parambyname('codpro').AsInteger:= strtoint(dm.Sds_Vendas_itensCODIGO_PROD.Text);
                               open;
                               Last;
                            end;

                            {CALCULO DO PIS E COFINS}
                           // sds_pedidos_itens.Edit;
                            IF DM.SDS_EmpresaREGIME.Text = 'R' then
                            BEGIN
                            if QBuscaItensFLAG_PIS_COFINS.Text = 'T' then
                            begin
                            dm.sds_nfce_itensVL_BASE_PIS.AsFloat            := dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat;
                            dm.sds_nfce_itensVL_BASE_COFINS.AsFloat         := dm.Sds_Vendas_itensPRECO_TOTAL.asfloat;
                            DM.sds_nfce_itensALIQ_PIS.AsFloat               := QBuscaItensPERC_ALIQUOTA_PIS.AsFloat;
                            DM.sds_nfce_itensALIQ_COFINS.AsFloat             := QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat;
                            dm.sds_nfce_itensVL_PIS.AsFloat                 := (dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat * QBuscaItensPERC_ALIQUOTA_PIS.AsFloat)/ 100;
                            dm.sds_nfce_itensVL_COFINS.AsFloat              := (dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat * QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat)/ 100;
                                         end;
                            end else
                            IF DM.SDS_EmpresaREGIME.Text = 'P' then
                            BEGIN
                            if QBuscaItensFLAG_PIS_COFINS.Text = 'T' then
                            begin
                            dm.sds_nfce_itensVL_BASE_PIS.AsFloat            := dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat;
                            dm.sds_nfce_itensVL_BASE_COFINS.AsFloat         := dm.Sds_Vendas_itensPRECO_TOTAL.asfloat;
                            DM.sds_nfce_itensALIQ_PIS.AsFloat               := QBuscaItensPERC_ALIQUOTA_PIS.AsFloat;
                            DM.sds_nfce_itensALIQ_COFINS.AsFloat             := QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat;
                            dm.sds_nfce_itensVL_PIS.AsFloat                 := (dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat * QBuscaItensPERC_ALIQUOTA_PIS.AsFloat)/ 100;
                            dm.sds_nfce_itensVL_COFINS.AsFloat              := (dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat * QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat)/ 100;
                            end;
                            end;
                            {dm.sds_nfce_itensVL_BASE_PIS.AsFloat            := dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat;
                            dm.sds_nfce_itensVL_BASE_COFINS.AsFloat         := dm.Sds_Vendas_itensPRECO_TOTAL.asfloat;
                            DM.sds_nfce_itensALIQ_PIS.AsFloat               := dm.Sds_Vendas_itensPERC_PIS.AsFloat;
                            DM.sds_nfce_itensALIQ_COFINS.AsFloat            := dm.Sds_Vendas_itensPERC_COFINS.AsFloat;
                            dm.sds_nfce_itensVL_PIS.AsFloat                 := dm.Sds_Vendas_itensVL_PIS.AsFloat ;
                            dm.sds_nfce_itensVL_COFINS.AsFloat              := dm.Sds_Vendas_itensVL_COFINS.AsFloat ; }

                            dm.sds_nfce_itensVL_BASE_ICM_SUBST.AsFloat      := dm.Sds_Vendas_itensBASE_ICMS_SUBST.AsFloat ;
                            dm.sds_nfce_itensALIQ_ICM_SUBST.AsFloat         := dm.Sds_Vendas_itensPERC_ICMS_SUBST.AsFloat;
                            dm.sds_nfce_itensVL_ICM_SUBST.AsFloat           := dm.Sds_Vendas_itensVL_ICMS_SUBST.AsFloat  ;


                            dm.sds_nfce_itens.Post;
                            end;
                          end
                          else
                          begin
                            NValor:=1;
                            tam := length(RemoveChar(dm.Sds_Vendas_itensCODIGO_PRODUTO.Text));

                            NItem:=NItem+NValor;
                            dm.sds_nfce_itensITEN.AsInteger               := NItem;
                            dm.sds_nfce_itensNR_SEQUENCIA.AsInteger       := NItem;
                            dm.sds_nfce_itensNR_NOTA.AsInteger            := N;
                            dm.sds_nfce_itensCOD_EMPRESA.AsInteger        := iemp;
                           { if tam = 13 then
                                begin
                            dm.sds_nfce_itensCOD_PRODUTO.Text             := dm.Sds_Vendas_itensCODIGO_PRODUTO.Text;
                                end else
                                begin }
                            dm.sds_nfce_itensCOD_PRODUTO.Text             := '';


                            dm.sds_nfce_itensCD_ATUALIZACAO.AsInteger     := strtoint(venda);
                            DM.sds_nfce_itensCODIGO_PROD.Text             := dm.Sds_Vendas_itensCODIGO_PROD.Text;
                            dm.sds_nfce_itensDESCRICAO_PRODUTO.Text       := dm.Sds_Vendas_itensDESCRICAO_PRODUTO.Text;
                           // if dm.SDS_CONFIGURACOESTP_DESC.Text = 'U' THEN
                           // dm.sds_nfce_itensVL_DESCONTO.Text             := '0'
                           // ELSE
                            dm.sds_nfce_itensVL_DESCONTO.Text             := dm.Sds_Vendas_itensDESCONTO.TEXT;
                            dm.sds_nfce_itensQT_PRODUTO.AsFloat           := dm.Sds_Vendas_itensQUANTIDADE.asfloat;
                            dm.sds_nfce_itensVL_UNITARIO.Asfloat          := dm.Sds_Vendas_itensPRECO_UNITARIO.AsFloat;

                            if dm.SDS_CONFIGURACOESTP_DESC.Text = 'U' THEN
                            dm.sds_nfce_itensVL_TOTAL.asfloat             := dm.Sds_Vendas_itensPRECO_UNITARIO.AsFloat * dm.Sds_Vendas_itensQUANTIDADE.asfloat
                            ELSE
                            dm.sds_nfce_itensVL_TOTAL.Text                := dm.Sds_Vendas_itensPRECO_TOTAL.text;
                            dm.sds_nfce_itensDESC_UNIDADE.Text            := dm.Sds_Vendas_itensUNIDADE.Text;
                            dm.sds_nfce_itensVL_OUTROS.Text               := dm.Sds_Vendas_itensENC_FINANCEIRO.TEXT;
                            //dm.sds_nfce_itensCD_CLIENTE.Text              := formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
                            DM.sds_nfce_itensCFOP.Text                    := QBuscaItensCFOP_EST_VENDA.Text;
                            dm.sds_nfce_itensCST.Text                     := QBuscaItensCST_VENDA.Text;
                            dm.sds_nfce_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_EST.Text;
                            dm.sds_nfce_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_EST.Text;
                            dm.sds_nfce_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
                            IF QBuscaItensNCM_SH.Text > '' THEN
                            BEGIN
                            DM.sds_nfce_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
                            end else
                            IF QBuscaItensNCM_SH1.Text > '' THEN
                            begin
                            DM.sds_nfce_itensCOD_NCM.Text                 := QBuscaItensNCM_SH1.Text;
                            end;
                            IF DM.sds_nfce_itensCOD_NCM.Text ='' THEN
                            BEGIN
                            DM.sds_nfce_itensCOD_NCM.Text                 := '99999999';
                            end;
                            IF DM.sds_nfce_itensCOD_NCM.Text ='00000000' THEN
                            BEGIN
                            DM.sds_nfce_itensCOD_NCM.Text                 := '99999999';
                            end;
                            IF Length(DM.sds_nfce_itensCOD_NCM.Text) < 8 THEN
                            BEGIN
                            DM.sds_nfce_itensCOD_NCM.Text                 := '99999999';
                            END;


                            dm.sds_nfce_itensALIQ_ICM.AsFloat               := dm.Sds_Vendas_itensPERC_ICM.AsFloat ;
                            dm.sds_nfce_itensVL_ICM.AsFloat                 := dm.Sds_Vendas_itensVL_ICM.AsFloat;
                            dm.sds_nfce_itensVL_BASE_ICM.AsFloat            := dm.Sds_Vendas_itensBASE_ICMS.AsFloat;


                            dm.sds_nfce_itensALIQ_IPI.AsFloat               := dm.Sds_Vendas_itensPERC_IPI.AsFloat ;
                            dm.sds_nfce_itensVL_IPI.AsFloat                 := dm.Sds_Vendas_itensVL_IPI.AsFloat;
                            dm.sds_nfce_itensVL_BASE_IPI.AsFloat            := dm.Sds_Vendas_itensBASE_IPI.AsFloat;



                            dm.sds_nfce_itensALIQ_ISS.AsFloat               := dm.Sds_Vendas_itensPERC_ISS.AsFloat ;
                            dm.sds_nfce_itensVL_ISS.AsFloat                 := dm.Sds_Vendas_itensVL_ISS.AsFloat;
                            dm.sds_nfce_itensVL_BASE_ISS.AsFloat            := dm.Sds_Vendas_itensBASE_ISS.AsFloat ;

                            with formvendas.QBuscaItens do
                            begin
                               close;
                               Parambyname('codpro').AsInteger:= strtoint(dm.Sds_Vendas_itensCODIGO_PROD.Text);
                               open;
                               Last;
                            end;

                            {CALCULO DO PIS E COFINS}
                           // sds_pedidos_itens.Edit;
                            IF DM.SDS_EmpresaREGIME.Text = 'R' then
                            BEGIN
                            if QBuscaItensFLAG_PIS_COFINS.Text = 'T' then
                            begin
                            dm.sds_nfce_itensVL_BASE_PIS.AsFloat            := dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat;
                            dm.sds_nfce_itensVL_BASE_COFINS.AsFloat         := dm.Sds_Vendas_itensPRECO_TOTAL.asfloat;
                            DM.sds_nfce_itensALIQ_PIS.AsFloat               := QBuscaItensPERC_ALIQUOTA_PIS.AsFloat;
                            DM.sds_nfce_itensALIQ_COFINS.AsFloat             := QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat;
                            dm.sds_nfce_itensVL_PIS.AsFloat                 := (dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat * QBuscaItensPERC_ALIQUOTA_PIS.AsFloat)/ 100;
                            dm.sds_nfce_itensVL_COFINS.AsFloat              := (dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat * QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat)/ 100;
                                         end;
                            end else
                            IF DM.SDS_EmpresaREGIME.Text = 'P' then
                            BEGIN
                            if QBuscaItensFLAG_PIS_COFINS.Text = 'T' then
                            begin
                            dm.sds_nfce_itensVL_BASE_PIS.AsFloat            := dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat;
                            dm.sds_nfce_itensVL_BASE_COFINS.AsFloat         := dm.Sds_Vendas_itensPRECO_TOTAL.asfloat;
                            DM.sds_nfce_itensALIQ_PIS.AsFloat               := QBuscaItensPERC_ALIQUOTA_PIS.AsFloat;
                            DM.sds_nfce_itensALIQ_COFINS.AsFloat             := QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat;
                            dm.sds_nfce_itensVL_PIS.AsFloat                 := (dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat * QBuscaItensPERC_ALIQUOTA_PIS.AsFloat)/ 100;
                            dm.sds_nfce_itensVL_COFINS.AsFloat              := (dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat * QBuscaItensPERC_ALIQUOTA_COFINS.AsFloat)/ 100;
                            end;
                            end;
                            {dm.sds_nfce_itensVL_BASE_PIS.AsFloat            := dm.Sds_Vendas_itensPRECO_TOTAL.AsFloat;
                            dm.sds_nfce_itensVL_BASE_COFINS.AsFloat         := dm.Sds_Vendas_itensPRECO_TOTAL.asfloat;
                            DM.sds_nfce_itensALIQ_PIS.AsFloat               := dm.Sds_Vendas_itensPERC_PIS.AsFloat;
                            DM.sds_nfce_itensALIQ_COFINS.AsFloat            := dm.Sds_Vendas_itensPERC_COFINS.AsFloat;
                            dm.sds_nfce_itensVL_PIS.AsFloat                 := dm.Sds_Vendas_itensVL_PIS.AsFloat ;
                            dm.sds_nfce_itensVL_COFINS.AsFloat              := dm.Sds_Vendas_itensVL_COFINS.AsFloat ; }

                            dm.sds_nfce_itensVL_BASE_ICM_SUBST.AsFloat      := dm.Sds_Vendas_itensBASE_ICMS_SUBST.AsFloat ;
                            dm.sds_nfce_itensALIQ_ICM_SUBST.AsFloat         := dm.Sds_Vendas_itensPERC_ICMS_SUBST.AsFloat;
                            dm.sds_nfce_itensVL_ICM_SUBST.AsFloat           := dm.Sds_Vendas_itensVL_ICMS_SUBST.AsFloat  ;

                            dm.sds_nfce_itens.Post;
                          end;
                        dm.Sds_Vendas_itens.next;
                        Application.ProcessMessages;
                     {   EXCEPT
                          ShowMessage('Erro ao gravar os itens da nfce...');
                        end;  }
                       end;

                        NOTA := IntToStr(N);
                       { DM.SDS_NFCE.Filtered := False;
                        DM.SDS_NFCE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
                        DM.SDS_NFCE.Filtered := True;  }
                        dm.SDS_NFCE.Close;
                        dm.SDS_NFCE.SQL.Clear;
                        dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_NOTA = :NR_NOTA and cd_empresa =:cod_emp');
                        dm.SDS_NFCE.Params.ParamByName('NR_NOTA').AsInteger := N;
                        dm.SDS_NFCE.Params.ParamByName('COD_EMP').AsInteger := Iemp;
                        dm.SDS_NFCE.open;


                        dm.sds_nfce_itens.First;
                        While not dm.sds_nfce_itens.Eof do
                        begin
                          Xa:= Xa + dm.sds_nfce_itensVl_ICM.AsFloat;
                          Y:= Y + dm.sds_nfce_itensVl_IPI.AsFloat;
                          Za:= Za + dm.sds_nfce_itensVl_ISS.AsFloat;
                          BX := BX + dm.sds_nfce_itensVL_BASE_ICM.AsFloat;
                          BY := BY + dm.sds_nfce_itensVL_BASE_IPI.AsFloat;
                          BZ := BZ + dm.sds_nfce_itensVL_BASE_ISS.AsFloat;

                          B_PIS := B_PIS +  dm.sds_nfce_itensVL_BASE_PIS.AsFloat;
                          PIS   :=  PIS + dm.sds_nfce_itensVL_PIS.AsFloat;
                          B_COFINS := B_COFINS + dm.sds_nfce_itensVL_BASE_COFINS.AsFloat;
                          COFINS   := COFINS + dm.sds_nfce_itensVL_COFINS.AsFloat;

                          ICM:=Xa;
                          IPI:=Y;
                          Iss :=Za;
                          B_ICM := BX;
                          B_IPI := By;
                          B_ISS := BZ;


                          total_t := total_t +   dm.sds_nfce_itensVL_DESCONTO.AsFloat;
                          total_g := total_g + dm.sds_nfce_itensVL_TOTAL.AsFloat;
                          dm.sds_nfce_itens.next;
                        end;
                        dm.sds_nfce_itens.First;

                        DM.SDS_NFcE.Edit;
                        DM.SDS_NFcEVL_ICM.aSfloat := ICM;
                        DM.SDS_NFcEVL_IPI.aSfloat := IPI;
                        DM.SDS_NFcEVL_ISS.aSfloat := ISS;
                        DM.SDS_NFcEVL_BASE_ICM.aSfloat := B_ICM;
                        DM.SDS_NFcEVL_BASE_IPI.aSfloat := B_IPI;
                        DM.SDS_NFcEVL_BASE_ISS.aSfloat := B_ISS;

                        DM.SDS_NFcEVL_BASE_PIS.aSfloat := B_PIS;
                        DM.SDS_NFcEVL_BASE_COFINS.aSfloat := B_COFINS;
                        DM.SDS_NFcEVL_PIS.aSfloat := PIS;
                        DM.SDS_NFcEVL_COFINS.aSfloat := COFINS;

                        DM.SDS_NFCEVL_DESCONTOS.AsFloat:= total_t;
                        DM.SDS_NFCEVL_TOTAL.AsFloat:= total_G + icm + IPI;
                        DM.SDS_NFCEVL_MERCADORIAS.AsFloat:=  total_G ;

                        DM.SDS_NFcE.Post;
                        DM.SDS_NFcE.ApplyUpdates(0);


                        dm.sds_nfce_itens.edit;
                        dm.sds_nfce_itens.Post;
                        //dm.sds_nfce_itens.ApplyUpdates(0);
                        //confirmar.Enabled := True;

                        PercentualDesconto := dm.SDS_NFCEVL_ACRESCIMOS.AsFloat * 100 / dm.SDS_NFCEVL_MERCADORIAS.AsFloat;

                        dm.sds_nfce_itens.First;
                        Contador := 0;
                        Contador:=dm.sds_nfce_itens.RecordCount;
                        d:=0;
                        For d:=1 to Contador do
                        begin
                        dm.sds_nfce_itens.Edit;
                      //  TOTAL1:= (EdtValorDesconto.Value / Contador);
                        dm.sds_nfce_itensVL_OUTROS.AsFloat :=  dm.sds_nfce_itensVL_TOTAL.AsFloat * PercentualDesconto / 100;
                        dm.sds_nfce_itens.post;
                        //dm.sds_nfce_itens.ApplyUpdates(0);
                        dm.sds_nfce_itens.Next;
                        end;

                        // ACHA RESTO DA DIVISÃO
                        dm.sds_nfce_itens.First;
                        Total1 := 0;
                        Xt:= 0;
                        Xt:= Xt + StrToFloatDef(dm.sds_nfce_itensVL_OUTROS.Text,0.00);
                        dm.sds_nfce_itens.Next;
                        TOTAL1 := Xt;
                        While not dm.sds_nfce_itens.Eof do
                        begin
                        Xt:= Xt + StrToFloatDef(dm.sds_nfce_itensVL_OUTROS.Text,0.00);
                        dm.sds_nfce_itens.Next;
                        Total1:= Xt;
                        end;


                        //valor_desc := (dm.sds_nfe_itensVL_OUTROS.MaxValue);

                             //dm.sds_nfe_itens.Locate('VL_OUTROS',valor_desc,[]);

                        total_venda := (dm.SDS_NFCEVL_ACRESCIMOS.ASFLOAT - Total1);

                        //Edit13.Text := FloatToStr(total_venda ) ;
                       // CurrencyEdit9.Value := total_venda;
                      //  dm.sds_nfe_itens.Edit;

                      //   dm.sds_nfe_itens.First;
                        IF dm.SDS_NFCEVL_ACRESCIMOS.ASFLOAT > TOTAL1  then
                        begin
                         dm.sds_nfce_itens.Edit;
                         xt :=dm.sds_nfce_itensVL_OUTROS.AsFloat;
                         dm.sds_nfce_itensVL_OUTROS.AsFloat := abs(xt + total_venda);
                         dm.sds_nfce_itens.Post;
                       dm.sds_nfce_itens.ApplyUpdates(0);
                        end ELSE

                        IF dm.SDS_NFCEVL_ACRESCIMOS.ASFLOAT < TOTAL1   then
                        begin
                         dm.sds_nfce_itens.Edit;
                         xt :=dm.sds_nfce_itensVL_OUTROS.AsFloat;
                         dm.sds_nfce_itensVL_OUTROS.AsFloat := abs(xt - total_venda);
                         dm.sds_nfce_itens.Post;
                         dm.sds_nfce_itens.ApplyUpdates(0);
                        end;
                        //confirmar.Enabled := True;

                       // dm.sds_nfce_itens.Post;
                        dm.sds_nfce_itens.ApplyUpdates(0);
                        dm.Coneccao.Commit;
                        Application.ProcessMessages;


                       
                         //   NOTA := QConsNfeNR_NOTA.TEXT;

                          IMPRIME := TRUE;

                          FormGeraNFce:=TFormGeraNFce.Create(self);
                          FormGeraNFce.combobox2.itemIndex := 0;
                          FormGeraNFce.combobox2.Enabled := False;

                          DM.qrcfop.Active := False;
                          DM.qrcfop.sql.Clear;
                          DM.qrcfop.sql.add('select * from TABELA_CFOP where cfop >=4000');
                          DM.qrcfop.Active := true;

                          FormGeraNFce.RxDBComboEdit2.Text :=  QBuscaItensCFOP_EST_VENDA.Text;
                          {dm.SDS_NFCE.Active := false;
                          dm.SDS_NFCE.Active := True;
                          DM.SDS_NFCE.Filtered := False;
                          DM.SDS_NFCE.Filter:='NR_NOTA ='+QuotedStr (INTTOSTR(N));
                          DM.SDS_NFCE.Filtered := True; }
                          dm.SDS_NFCE.Close;
                          dm.SDS_NFCE.SQL.Clear;
                          dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_NOTA = :NR_NOTA and cd_empresa =:cod_emp');
                          dm.SDS_NFCE.Params.ParamByName('NR_NOTA').AsInteger := N;
                          dm.SDS_NFCE.Params.ParamByName('COD_EMP').AsInteger := Iemp;
                          dm.SDS_NFCE.open;
                          DM.sds_nfe_itens.Active := false;
                          DM.sds_nfe_itens.Active := true;
                          FormGeraNFce.Inserir.Enabled := False;
                          FormGeraNFce.confirmar.Enabled := TRUE;
                          FormGeraNFce.ShowModal;


                         { FormNFe:=TFormNFe.Create(self);
                          FormNFe.btnCriarEnviar.Enabled := false;
                          valida_nfc := false;
                          FormNFe.Tag := 2;
                          FormNFe.showmodal;   }


                          IF VALIDA_NFC = true then
                          begin
                          SPC_N_NFE.Params[0].AsInteger  :=  StrToInt(venda);
                          SPC_N_NFE.Params[1].AsInteger  := StrToInt(DM.SDS_NFCENR_NOTA.text);
                          SPC_N_NFE.Params[2].AsString   :=  DM.SDS_NFCESERIE_NF.text;
                          SPC_N_NFE.Params[3].AsInteger  := IEMP;
                          SPC_N_NFE.ExecProc;
                         // Application.ProcessMessages;
                          end;
                            dm.sds_vendas.Filtered := False;
                            suiButton1.Click;
                          end;
                    {   end else
                       begin
                       ShowMessage('SELECIONE UMA VENDA PRA GERAR O NFE....');
                       dm.sds_vendas.Filtered := False;
                       suiButton1.Click;
                       end;    }
//end;
end;

procedure TFormConsultaPedidoDireto.EvDBEditBtn1ButtonClick(
  Sender: TObject);
begin
if FormdocsFiscais=nil   then
    begin
      FormdocsFiscais:=TFormdocsFiscais.Create(self);
      FormdocsFiscais.ShowModal;
      dm.Sds_vendasMODELO_NF.Text := DMC.Sds_DocsFiscaisCODIGO.Text;
      Edit4.Text := DMC.Sds_DocsFiscaisDESCRICAO.Text;
     // suiEdit1.Text := DMC.Sds_DocsFiscaisDESCRICAO.Text;
end;
end;

procedure TFormConsultaPedidoDireto.EvDBEditBtn1Exit(Sender: TObject);
begin
    if EvDBEditBtn1.text >'' then
    begin
     if DMC.Sds_DocsFiscais.Locate('codigo',EvDBEditBtn1.Text,[lopartialkey]) = True then
     begin
      dm.sds_vendasMODELO_NF.Text := DMC.Sds_DocsFiscaisCODIGO.Text;
      sEdit2.Text := DMC.Sds_DocsFiscaisDESCRICAO.Text;

      end else
        if not DMC.Sds_DocsFiscais.Locate('codigo',EvDBEditBtn1.Text,[lopartialkey]) = True then
        begin
         Application.MESSAGEBOX('Código Fiscal não localizado Verifique!!!', 'Atenção', MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
         EvDBEditBtn1.SetFocus;
        end;
end;
end;

procedure TFormConsultaPedidoDireto.EvDBEditBtn1Enter(Sender: TObject);
begin
dm.Sds_vendas.edit;
end;

procedure TFormConsultaPedidoDireto.suiNOTAClick(Sender: TObject);
begin
dm.Sds_vendas.edit;
Panel3.Visible := True;
DBEdit2.SetFocus;
end;

procedure TFormConsultaPedidoDireto.OkClick(Sender: TObject);
begin
dm.sds_vendas.post;
//dm.Conexao.Commit;
//dm.sds_vendas.ApplyUpdates(0);
Panel3.Visible := False;
end;

procedure TFormConsultaPedidoDireto.RzDBButtonEdit1ButtonClick(
  Sender: TObject);
begin
// TRY
DM.qrcfop.Active := False;
DM.qrcfop.sql.Clear;
DM.qrcfop.sql.add('select * from TABELA_CFOP where cfop >=4000');
DM.qrcfop.Active := true;

  dm.Sds_vendas.edit;
  {
if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      Edit1.text := dm.SDS_CFOPDESCRICAO.text;
      RzDBButtonEdit1.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      RzDBButtonEdit1.SetFocus;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário de Consulta de cfop!!');
end;  }
 parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    DM.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
    Edit1.Text := DM.qrcfopNATUREZA.Text;
    RzDBButtonEdit1.Text :=  DM.qrcfopCFOP.Text;
  end;
end;

procedure TFormConsultaPedidoDireto.RzDBButtonEdit1KeyPress(
  Sender: TObject; var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;

procedure TFormConsultaPedidoDireto.RzDBButtonEdit1Exit(Sender: TObject);
begin


  DM.qrcfop.Active := False;
DM.qrcfop.sql.Clear;
DM.qrcfop.sql.add('select * from TABELA_CFOP where cfop > 4999');
DM.qrcfop.Active := true;

if RzDBButtonEdit1.Text > '' then
begin
dm.Sds_vendas.Edit;
if DM.qrCFOP.Locate('CFOP', RzDBButtonEdit1.Text,[])=True then
 begin
   sedit1.Text := DM.qrCFOPnatureza.Text;
 end else
 if not DM.qrCFOP.Locate('CFOP', RzDBButtonEdit1.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
   RzDBButtonEdit1.SetFocus;
 end;
end;
end;

procedure TFormConsultaPedidoDireto.suiDBGrid1RowSelect(Sender: TObject;
  Action: TSelectAction);
begin

       {     with Sds_pedidos_itens do
               begin
                  close;
                   Params.Parambyname('cod_ped').AsInteger := strtoint(venda);
                  open;
               end;  }
end;

procedure TFormConsultaPedidoDireto.suiDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn; State: TGridDrawState);
begin
if not odd(DM.Sds_vendas_itens.RecNo) then
  if not (gdselected in State) then
    begin
    suiDBGrid2.Canvas.Brush.Color := clSkyBlue;
    suiDBGrid2.Canvas.FillRect(Rect);
    suiDBGrid2.DefaultDrawDataCell(Rect,Column.field,state);
  end;

  If DM.Sds_Vendas_itensQNT_DEV.text > '0' then
  SuiDbgrid2.Canvas.Font.Color:= clRed;
  suiDbgrid2.DefaultDrawDataCell(Rect, suidbgrid2.columns[datacol].field, State);
end;

procedure TFormConsultaPedidoDireto.FormPaint(Sender: TObject);
begin
 Application.ProcessMessages;
// Application.ProcessMessages;

//  suiButton1Click(Sender);
end;

procedure TFormConsultaPedidoDireto.Action11Click(Sender: TObject);
begin
Selecao_Grade(1);
end;

procedure TFormConsultaPedidoDireto.D1Click(Sender: TObject);
begin
Selecao_Grade(2);
end;

procedure TFormConsultaPedidoDireto.I1Click(Sender: TObject);
begin
Selecao_Grade(3);
end;

procedure TFormConsultaPedidoDireto.FXduplicataGetValue(
  const VarName: String; var Value: Variant);
begin
if varname = 'extenso' then

value := FormatFloat('R$ #,##0.00 - ',dmc.SDS_Crediario_ContratoVALOR_COMPRA.AsFloat)+' '+extenso(dmc.SDS_Crediario_ContratoVALOR_COMPRA.asfloat);

end;


procedure TFormConsultaPedidoDireto.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked = True then
begin
   CheckBox1.Checked := False;
   CheckBox3.Checked := False;
end;
end;

procedure TFormConsultaPedidoDireto.CheckBox3Click(Sender: TObject);
begin
if CheckBox3.Checked = True then
begin
   CheckBox1.Checked := False;
   CheckBox2.Checked := False;
end;
end;

procedure TFormConsultaPedidoDireto.sBitBtn1Click(Sender: TObject);
begin
Panel3.Visible := False;
end;

end.
