{$I ACBr.inc}
unit PedidoParcela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIDBCtrls, StdCtrls, DBCtrls,
  Mask, RXCtrls, ExtCtrls,  Grids, DBGrids, SUIButton, DB, DBClient,
  SUIDlg, FMTBcd, SqlExpr, RpRenderText, RpRenderRTF,
  RpRenderHTML, RpDefine, RpRender, RpRenderPDF, RXDBCtrl,
   {$IFDEF Delphi6_UP} Types, {$ELSE} ACBrD5,{$ENDIF}
  Buttons, IBCustomDataSet, IBQuery, RDprint, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, SimpleDS, IBDatabase, Printers, sButton,
  sDBEdit, acDBGrid, sPanel, sDBNavigator, sBitBtn, sLabel ,Math, frxDesgn,
  frxClass, FireDAC.Stan.Async, FireDAC.DApt, Data.DBXFirebird, RxToolEdit,
  RxCurrEdit,ACBrECF, ACBrECFClass, ACBrUtil, AdvGlowButton;

type
  TFormPedidoParcela = class(TForm)
    pnldados: TPanel;
    RxLabel4: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel2: TRxLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    RxLabel13: TRxLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    DB_CODIGO: TsDBEdit;
    RxLabel5: TRxLabel;
    db_nome: TsDBEdit;
    suiDBNavigator1: TsDBNavigator;
    RxLabel7: TRxLabel;
    CurrencyEdit2: TCurrencyEdit;
    Panel1: TPanel;
    RxLabel9: TRxLabel;
    DBGrid1: TsDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CodigoCliente: TIntegerField;
    ClientDataSet1DataCompra: TDateField;
    ClientDataSet1DataVencimento: TDateField;
    ClientDataSet1Historico: TStringField;
    ClientDataSet1Vendedor: TStringField;
    ClientDataSet1ValorParcela: TCurrencyField;
    ClientDataSet1CodigoCompra: TIntegerField;
    ClientDataSet1Parcela: TStringField;
    SPC_CREDIARIO: TSQLStoredProc;
    CurrencyEdit3: TCurrencyEdit;
    RxLabel8: TRxLabel;
    RxLabel10: TRxLabel;
    CurrencyEdit4: TCurrencyEdit;
    SPC_MOV_DIARIO: TSQLStoredProc;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderHTML1: TRvRenderHTML;
    RvRenderRTF1: TRvRenderRTF;
    RvRenderText1: TRvRenderText;
    RxLabel1: TRxLabel;
    Desc_cond_pagto: TDBEdit;
    Edit1: TEdit;
    RxLabel12: TRxLabel;
    CurrencyEdit5: TCurrencyEdit;
    RxLabel6: TRxLabel;
    CurrencyEdit6: TCurrencyEdit;
    suiButton4: TsButton;
    DBComboPgto: TComboEdit;
    SPC_CHEQUE: TSQLStoredProc;
    Shape1: TShape;
    Edit62: TCurrencyEdit;
    RxLabel11: TRxLabel;
    RxLabel14: TRxLabel;
    Shape2: TShape;
    E_Desconto: TCurrencyEdit;
    Shape3: TShape;
    Shape4: TShape;
    RxLabel15: TRxLabel;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    SPC_N_CUPOM: TSQLStoredProc;
    edCod: TEdit;
    mFormas: TMemo;
    myLabel3d2: TsLabelFX;
    qrcaixa_mov: TFDQuery;
    memo: TMemo;
    sds_pagto: TSimpleDataSet;
    sds_pagtoCOD_VENDA: TIntegerField;
    sds_pagtoCOD_FORMA: TIntegerField;
    sds_pagtoVALOR: TFMTBCDField;
    sds_pagtoTIPO: TStringField;
    sds_pagtoDESC_FORMA: TStringField;
    IBTRAce: TFDTransaction;
    SPC_N_NFE: TSQLStoredProc;
    RDprint1: TRDprint;
    Memo1: TMemo;
    Shape8: TShape;
    EdtPercentualDesconto: TCurrencyEdit;
    RxLabel16: TRxLabel;
    suiButton3: TAdvGlowButton;
    suiButton1: TAdvGlowButton;
    suiButton2: TAdvGlowButton;
    FXduplicata: TfrxReport;
    frxDesigner1: TfrxDesigner;
    QBuscaItens: TFDQuery;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensCODIGO_ID: TIntegerField;
    QBuscaItensITEN: TIntegerField;
    QBuscaItensCODIGO_PROD: TIntegerField;
    QBuscaItensCODIGO_PRODUTO: TStringField;
    QBuscaItensDESCRICAO_PRODUTO: TStringField;
    Spc_itens: TFDStoredProc;
    logEst: TFDStoredProc;
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
    n_nota: TFDQuery;
    n_notaN_NOTA: TIntegerField;
    Button1: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
    procedure ClientDataSet1BeforeInsert(DataSet: TDataSet);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure suiButton2Click(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure suiButton2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit4Enter(Sender: TObject);
    procedure suiButton4Click(Sender: TObject);
    procedure DBComboPgtoButtonClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBComboPgtoEnter(Sender: TObject);
    procedure suiButton3Exit(Sender: TObject);
    procedure CarregaFPG;
    procedure E_DescontoKeyPress(Sender: TObject; var Key: Char);
    procedure rbPercentagemExit(Sender: TObject);
    procedure rbValorExit(Sender: TObject);
    procedure DBComboPgtoKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboPgtoExit(Sender: TObject);
    procedure E_DescontoExit(Sender: TObject);
    procedure E_DescontoChange(Sender: TObject);
    procedure CurrencyEdit4Change(Sender: TObject);
    procedure DBComboPgtoChange(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure ImprimeVenda40;
    procedure ImprimeVenda;
    procedure ImprimeDUPLICATA;
    procedure EdtPercentualDescontoExit(Sender: TObject);
    procedure FXduplicataGetValue(const VarName: String;
      var Value: Variant);
    procedure Button1Click(Sender: TObject);
  private
    Cod,Cod1,Contador:Integer;
    Tipo: String;
    Libera_Insert : Boolean;
    VP, X, A, a1: Real;
  public
    Limite, credito : Real;
    desconto : real;
    DecimalSeparator : Char;


  end;

var
  FormPedidoParcela: TFormPedidoParcela;
  TD:TTransactionDesc;
  vlrVenda : real;   
  valor_desc      : string;
  Total : real;
  entrada : Real;
  Parcela : integer;
  valor, Encargos, enc, juros, venda, total_venda, desconto, desc_m, desconto2: Real;
  NumeroCupom, NumeroCaixa: string;
  iconta : Integer;
  cDescontoVenda  : Real;
   I, C, E, F, N, NVALOR :Integer;
   Endercomp, Cli, cpfrg, pedido : String;
   dtaux : TDateTime;
   PG, PG1, CD, PAG : String;
   cFormaPgto, cFormaPgto1 : String;
   cAcresDesc      : Double;
   cAcreDesc, cTipoAcreDesc, cValorAcreDesc :string;
   cTipoAcresDesc  : string;
   cValorAcresDesc : string;
   cValorPago : String;
   cValorPago1      : String;
   cMsgPromocional : String;
   Corta : TModalResult ;
   desc : char;
   COO, CodFormaPagamento, CodComprovanteNaoFiscal, SubTotal, TRIBUTOS : String;
   sValor : String ;
   dValor, troco, TOTAL1,X, TRIBUTO : Double ;
   Linha :String;
   Descricao : String ;
   FPG : TACBrECFFormaPagamento ;  { Necessita de uses ACBrECF }
   s_cmdtx: string;
   s_bematx, NOTA: string;
   TAM, NItem: Integer;
   y,xa, za, bx,By,bz,b_pis, pis, b_cofins, cofins, icm, ipi, iss, b_icm,b_ipi,b_iss :Double;

     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

      END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf : String;
     cabecalho, pagamento,meio, itens: string;
  
implementation

uses ModulodeDados,  Principal, ModulodeDadosConsultas,
  ModulodeDadosRelatorios, ModulodeDadosConsultas5,
  printPedidos, ContratoVEnda, duplicata, Z_RotinasGerais, Z_DeclaracoesBemaFi32,
  Udmcob, RegPedido, ECFTeste1, DesbloquearCliente, ConsCondPagamento,
  lecheque_frente_cx, Ubibli1, Libera_Venda, Nfe,
  gerNFce, PEDIDO80COL, DUPLICATA80COL, libera_desconto, extenso1,
  UDadosAdm;

{$R *.dfm}

function ExatoCurrency(Value: Currency; Decimal: Integer): Currency;
const arrDecimal: array[0..3] of Integer = (1, 10, 100, 1000);
begin
   if (Abs(Decimal) > 3) then
      raise ERangeError.Create('TruncExato: O decimal deve está no intervalo de: 0..3');
   Result := Trunc(Value * arrDecimal[Decimal]) / arrDecimal[Decimal];
end;

procedure ImprimirMemoComCanvas(Memo: TMemo);
const
  cEspacoLinha = 5;
  cMargemSuperior = 50;
  cMargemEsquerda = 30;
var
  AlturaLinha, Y, I: integer;
begin

  Printer.BeginDoc;
  try
    { Usa na impressora a mesma fonte do memo }
    Printer.Canvas.Font.Assign(Memo.Font);

    AlturaLinha := Printer.Canvas.TextHeight('Tg');

    Y := cMargemSuperior;
    for I := 0 to Memo.Lines.Count -1 do begin

      if Y > Printer.PageHeight then begin
        Printer.NewPage;
        Y := cMargemSuperior;
      end;

      Printer.Canvas.TextOut(cMargemEsquerda, Y, Memo.Lines[I]);

      Y := Y + AlturaLinha + cEspacoLinha;
    end;
  finally
    Printer.EndDoc;
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

procedure TFormPedidoParcela.ImprimeVenda;
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
     Traco    := '-----------------------------------------------';
     // Parametros para o CUPOM FISCAL
    // RDprint1.Impressora := Bobina;
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
        imp (13,01,'Codigo       Descrição dos produtos');
        imp (14,01,'Qtde       UN         Unitário         Sub-Total');
        imp (15,01,traco);
        end;

       // Imprime itens do pedido...
       linha := 16;
       DMC.SDS_Pedido_Itens.First;
       while not DMC.SDS_Pedido_Itens.eof do
        begin
        with rdprint1 do
           begin
           impval(linha,01,'',DMC.SDS_Pedido_ItensCODIGO_PRODUTO.AsFloat,[]);
           impf  (linha,14,''+Copy(DMC.SDS_Pedido_ItensDESCRICAO_PRODUTO.AsString, 1, 35),[]);
           inc(linha);
           impval(linha,01,'0.000',DMC.SDS_Pedido_ItensQUANTIDADE.AsFloat,[]);
           impf  (linha,12,DMC.SDS_Pedido_ItensUNIDADE.AsString,  []);
           impval(linha,22,'#,##0.00', DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat,[]);
           impval(linha,40,'##,##0.00', DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat, []);
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
        impval(linha,35,'###,###,##0.00',DMC.CDS_PedidosVALOR_ITENS.AsFloat,[]);
        // Desconto Global
        inc (linha);
        imp (linha,01,'(-) Desconto Global');
        impval(linha,35,'-##,###,##0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat,[]);
          inc (linha);
        imp (linha,01,'Acrescimos');
        impval(linha,35,'##,###,##0.00',DMC.CDS_PedidosENC_FINANCEIRO.AsFloat,[]);
        // Total Liquido...
        inc (linha);
        imp(linha,01,'VALOR A PAGAR R$');
        impval(linha,35,'###,###,##0.00',DMC.CDS_PedidosVALOR_Total.AsFloat,[]);
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
                     impval(linha,35,'###,###,##0.00',DMC.qry_COND_PAGTOVALOR.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.qry_COND_PAGTO.Next;
            end;
         imp (linha,01, 'Troco' );
         impval(linha,35,'###,###,##0.00',DMC.CDS_PedidosVALOR_TROCO.AsFloat,[]);
         inc   (linha);
        // Final...

        imp (linha,01,traco);
        inc (linha);
        impc(linha,25,'*** Obrigado pela preferência ***',[]);
        inc (linha);
        inc (linha);
        impc(linha,25,'*** VOLTE SEMPRE ***',[]);
        inc (linha);
        inc (linha);
        impc(linha,25,'***  SEM VALOR FISCAL  ***',[]);
        inc (linha);
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

procedure TFormPedidoParcela.ImprimeDUPLICATA;
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
        while not DMC.qry_COND_PAGTO.Eof do
            begin
               if DMC.qry_COND_PAGTOVALOR.AsFloat > 0 then
                  begin
                     imp (linha,01, DMC.QRY_COND_PAGTOTIPO_PAGTO.Text );
                     imp (linha,20, DMC.QRY_COND_PAGTODATA_VENCIMENTO.Text );
                     impval(linha,35,'###,###,##0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat + DMC.CDS_PedidosVALOR_TROCO.AsFloat,[]);
                     inc   (linha);
                  end;
               DMC.QRY_COND_PAGTO.Next;
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


procedure TFormPedidoParcela.ImprimeVenda40;
var
     subtotal, total : currency;
     traco : string;
     Razao_emp, Endereco_emp, CEP_emp, CID_emp,
     ESTADO_EMP, Numero_emp, TEL_EMP: string;

     CLI, END_CLI, NUMERO_CLI, CEP_CLI, CID_CLI, ESTADO_CLI: String;
     Conf, s_cmdtx: String;

begin
     total    := 0;
     Traco    := '-------------------------------------------------------';

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
     with memo.Lines do
        begin
        Add(formprincipal.Texto_Justifica('Empresa: '+  Razao_emp,48,'','E'));
        Add('End.: '+ENDERECO_EMP+' n.º: '+ NUMERO_EMP);
        Add('Cep: '+CEP_EMP + ' Cid.: ' + CID_EMP + ' UF: ' + ESTADO_EMP);
        Add('Fone ' + tel_emp +' Op.: ' + DMC.CDS_PedidosUSUARIO.Text);
        Add('Vda Nº ' + FormCupomFiscal.Edit2.caption + ' Data: ' + datetimetostr(now));
        Add(traco);

        // Dados do Cliente...
        Add('Cliente: '+ CLI);
        Add('End.: '+END_CLI + ' nº: ' + NUMERO_CLI);
        Add('Cep.: ' + CEP_CLI + ' Cid.: ' +CID_CLI + ' UF: ' + ESTADO_CLI);

        // Titulo dos Itens...
        Add(traco);

        Add('Codigo   Descrição          Qte   UN Unitário Sub-Total');
        add(traco);
        end;

       // Imprime itens do pedido...



       DMC.SDS_Pedido_Itens.First;
       while not DMC.SDS_Pedido_Itens.eof do
        begin
        with memo.Lines do
           begin
           sCodigo := Formatar(DMC.SDS_Pedido_ItensCODIGO_PROD.Text,6,False,'0');
           Add( sCodigo + ' ' + Formatar(DMC.SDS_Pedido_ItensDESCRICAO_PRODUTO.Text,40,True,' ') +#13+#10' '+ FormatFloat('#,##0.000', dmc.SDS_Pedido_ItensQUANTIDADE.AsFloat)+'     '+
           DMC.SDS_Pedido_ItensUNIDADE.Text+'    '+ Formatar(FormatFloat('#,##0.00', DMC.SDS_Pedido_ItensPRECO_UNITARIO.AsFloat),10,false,' ')+ '      ' + Formatar(FormatFloat('##,##0.00', DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat),10,false,' '));
           end;
        DMC.SDS_Pedido_Itens.next;
        end;

     // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
     with memo.Lines do
        begin
        // Total...
        Add(traco);
        Add(Formatar('Total Geral da Venda',40, True,'.')+'R$'+ Formatar(FormatFloat('###,###,##0.00',DMC.CDS_PedidosVALOR_ITENS.AsFloat),10,false,' '));
        Add(Formatar('(-) Desconto Global ',40,True,'.')+'R$'+ Formatar(FormatFloat('-##,###,##0.00',DMC.CDS_PedidosVALOR_DESCONTO.AsFloat),10,false,' '));
        Add(Formatar('(+) Acrescimos      ',40,True,'.')+'R$'+ Formatar(FormatFloat('##,###,##0.00',DMC.CDS_PedidosVALOR_ACRESCIMOS.AsFloat),10,false,' '));
        Add(Formatar('VALOR A PAGAR       ',40,True,'.')+'R$'+ Formatar(FormatFloat('###,###,##0.00',DMC.CDS_PedidosVALOR_Total.AsFloat),10,false,' '));
        // Formas de pagamento
        Add(traco);
        Add('Formas de pagamento');
        Add(traco);

        DMC.QRY_COND_PAGTO.First;
        while not DMC.QRY_COND_PAGTO.Eof do
            begin
               if DMC.QRY_COND_PAGTOVALOR.AsFloat > 0 then
                  begin
                     Add(Formatar(DMC.QRY_COND_PAGTOTIPO_PAGTO.Text,40, True,'.')+'R$ '+Formatar(FormatFloat('###,###,##0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat),10,false,' '));
                  end;
               DMC.QRY_COND_PAGTO.Next;
            end;
          Add(Formatar('Troco            ',40, True,'.')+'R$'+FormatFloat('###,###,##0.00',DMC.CDS_PedidosVALOR_TROCO.AsFloat));
        // Final...

        Add(traco);

        Add('***************Obrigado pela preferência***************');
        Add('******************  VOLTE SEMPRE   ********************');
        Add('');
        Add('****************  SEM VALOR FISCAL  *******************');
        Add('');
        Add('');
        Add(traco);
        Add('*****************   ASSINATURA   **********************');
        Add(traco);
        Add('****************   SIACE SISTEMAS  ********************');
        Add(traco);
        end;

           s_cmdtx:=#27+#119;
           i_retorno:=ComandoTX(s_cmdtx,length (s_cmdtx));

end;

procedure TFormPedidoParcela.Button1Click(Sender: TObject);
begin

           IF (DM.SDS_CONFIGURACOESMODELO_ECF.Text = '3') or (DM.SDS_CONFIGURACOESMODELO_ECF.Text = '4') then
           begin
                 If DM.SDS_CONFIGURACOESUTILIZA_NFE.Text = 'S' then
                 If formprincipal.NFCE = 'S' then
                 if Application.MESSAGEBOX('Confirma Geração e Emissão da NFC-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                 begin
                        dm.SDS_NFCE.Close;
                        dm.SDS_NFCE.sql.clear;
                        dm.SDS_NFCE.sql.add('select * FROM  nfece_nota where NR_PEDIDO = :NR_PEDIDO AND CD_EMPRESA =:COD_EMP');
                        dm.SDS_NFCE.Params.ParamByName('NR_PEDIDO').AsInteger := strtoint(Formcupomfiscal.Edit2.caption);
                        dm.SDS_NFCE.Params.Parambyname('cod_emp').AsInteger:= iEmp;
                        dm.SDS_NFCE.open;
                        dm.sds_nfce_itens.Active:=false;
                        dm.sds_nfce_itens.Active:=true;

                         if dm.SDS_NFCE.Locate('NR_PEDIDO',Formcupomfiscal.Edit2.caption, [loCaseInsensitive]) = True then
                         BEGIN
                          if dm.SDS_NFCENR_PROTOCOLO_NFE.Text >'' then
                          begin
                           Application.MESSAGEBOX('NFC-E Já Validada  Não será possiver Gerar uma Nova NFC-e !', 'Atenção', MB_ICONQUESTION + MB_OK + MB_DEFBUTTON1);
                           Exit;
                           Abort;
                          end else
                           begin
                           if Application.MESSAGEBOX('Já existe uma NFC-E cadastrada mas não validada com esta Venda !, Deseja substitui-la?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                           begin
                            dm.sds_nfCe.delete;
                           // dm.sds_nfCe.ApplyUpdates(0);
                           // DM.Conexao.COMMIT;
                            DM.sds_nfCe_itens.Active := False;
                            DM.sds_nfCe_itens.Active := True;
                           end;
                           //ShowMessage('Já existe um NF-E cadastrada com esta Venda !!!');
                          // RxDBComboEdit2.SetFocus;
                          end;
                          end;


                      {  dm.ProxCod.Close;
                        dm.ProxCod.SQL.Clear;
                        dm.ProxCod.SQL.Add('select max(nr_nota) as n_codigo  from nfece_nota');
                        //dm.ProxCod1.Params.Items[0].AsString  := dm.SDS_EmpresaCODIGO.Text;
                        DM.ProxCod.open;  }

                        dm.SDS_NFCE.Insert;
                        dm.SDS_NFcE.EDIT;
                       // DM.SPC_NFCE.ExecProc;
                        //N:= (DM.SPC_NFCE.ParamByName('ATUAL').AsInteger);
                        n_nota.Close;
                        n_nota.ParamByName('cod_emp').AsInteger := iEmp;
                        n_nota.Open;
                        n:= n_notaN_NOTA.AsInteger + 1;

                        dm.SDS_NFCECD_EMPRESA.ASINTEGER        :=  iemp;
                        dm.sds_nfceNr_nota.AsInteger           :=  N ;
                        DM.sds_nfceDt_emissao.AsDateTime       :=  Date;
                        DM.sds_nfceDt_lancamento.AsDateTime    :=  Date;
                        DM.sds_nfcevl_mercadorias.AsCurrency   :=  Formcupomfiscal.ValCompra;
                        DM.sds_nfceVl_descontos.AsCurrency     :=  E_Desconto.Value;
                        DM.sds_nfceVl_total.AsCurrency         :=  Formcupomfiscal.ValCompra - E_Desconto.Value;  // FormCupomFiscal.Edit62.value - E_Desconto.Value;
                        dm.sds_nfcecod_cliente.Text            :=  FormCupomFiscal.EditCodigoCli.Text;
                        dm.sds_nfceVl_acrescimos.text          :=  FormCupomFiscal.ClientDataSet1EncFianceiro.Text;
                        DM.SDS_NFcECOD_PGTO.Text               :=  DBComboPgto.Text;
                        DM.SDS_NFcECD_FUNCIONARIO.Text         :=  DM.SDS_UsuariosCODIGO.text;
                        DM.SDS_NFcESERIE_NF.Text               :=  '1';
                        DM.SDS_NFcENR_PEDIDO.Text              :=  Formcupomfiscal.Edit2.caption;
                        dm.SDS_NFcEVL_AVISTA.Text              :=  CurrencyEdit4.text;
                        DM.SDS_NFcEVL_PRAZO.Text               :=  CurrencyEdit2.text;
                        //DM.SDS_NFEN_SEQUENCIA.Text            :=  '1';
                        DM.SDS_NFcECD_CFOP.Text                :=  '5102';//RxDBComboEdit2.Text;
                        DM.SDS_NFcECFOP_DESC.Text              :=  'VENDA DE MERCADORIA FDQUIRIDA OU RECEBIDA DE TERCEIROS';//suiEdit2.Text;
                        //dM.SDS_NFEVL_BASE_ICM.TEXT            :=  FormCupomFiscal.ClientDataset1VALOR_ITENS.TEXT;
                       { dm.SDS_NFcECD_TRANSPORTADORA.Text      :=  '';//RxDBComboEdit1.Text;
                        DM.SDS_NFcEPLACA_TRANSP.Text           :=  Edit5.Text;
                        DM.SDS_NFcEQt_volumes.Text             :=  Edit3.text;
                        DM.SDS_NFcEespecie_volumes.Text        :=  Edit4.text;
                        DM.SDS_NFcEMarca_volumes.Text          := 'UN';
                        DM.SDS_NFcENr_volumes.Text             :=  Edit3.text;
                        DM.SDS_NFcEPEso_liquido.Text           :=  Edit2.text;
                        DM.SDS_NFcEPEso_liquido.Text           :=  Edit2.text; }
                        DM.SDS_NFcETP.TEXT                     :=  sds_pagtoTIPO.Text;
                        DM.SDS_NFcENOME_CLIENTE_FOR.Text       :=  FormCupomFiscal.ClientDataset2NOME_CLIENTE.Text;
                        DM.SDS_NFcEBAIRRO_CLIENTE_FORN.Text    :=  FormCupomFiscal.ClientDataset2BAIRRO.Text;
                        dm.SDS_NFcEEND_NUM_CLIENTE.Text        :=  DM.SDS_ClientesNUMERO.Text;
                        DM.SDS_NFcECEP_CLIENTE_FORN.Text       :=  FormCupomFiscal.ClientDataset2CEP.Text;
                        DM.SDS_NFcETELEFONE.Text               :=  FormCupomFiscal.ClientDataset2FONE.Text;
                        dm.SDS_NFcECPF_CNPJ_CLIENTE_FORN.text  :=  FormCupomFiscal.ClientDataset2CPF_CNPJ.Text;
                        dm.SDS_NFcETIPO_PESSOA.text            :=  DM.SDS_ClientesTIPO.Text;
                        dm.SDS_NFcECOD_IBGE.Text               :=  FormCupomFiscal.ClientDataset2COD_IBGE.Text;
                        DM.SDS_NFcEPRODUTOR_RURAL.Text         :=  '';//FormCupomFiscal.ClientDataset2PROD_RURAL.Text;
                        DM.SDS_NFcEIE_CLIENTE_FORN.Text        :=  FormCupomFiscal.ClientDataset2RG_IE.Text;
                        DM.SDS_NFcEIE_PRODUTOR.Text            :=  ''; //FormCupomFiscal.ClientDataset2IE_PRODUTOR.Text;
                        dm.SDS_NFcECIDADE_CLIENTE_FORN.text    :=  FormCupomFiscal.ClientDataset2CIDADE.Text;
                        DM.SDS_NFcEUF_CLIENTE_FORN.Text        :=  FormCupomFiscal.ClientDataset2UF.Text;
                        dm.SDS_NFcEENDERECO_CLI_FORN.Text      :=  FormCupomFiscal.ClientDataset2ENDERECO.text;
                        DM.SDS_NFcEPAGAMENTO.text              :=  Desc_cond_pagto.text;
                        DM.SDS_NFCEVL_TROCO.AsCurrency         :=  Edit62.Value;
                        DM.SDS_NFcESTATUS.Text                 :=  'N';

                        Application.ProcessMessages;

                        DM.SDS_NFcE.Post;
                        DM.SDS_NFcE.ApplyUpdates(0);

                        dm.SDS_NFCE.SQL.Clear;
                        dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_NOTA = :NR_NOTA and cd_empresa =:cod_emp');
                        dm.SDS_NFCE.Params.ParamByName('NR_NOTA').AsInteger := N;
                        dm.SDS_NFCE.Params.ParamByName('COD_EMP').AsInteger := IEMP;
                        dm.SDS_NFCE.open;

                      { DMC.SDS_Pedido_Itens.Active:= False;
                       DMC.SQLD_Pedidos.Active:=False;
                       DMC.CDS_Pedidos.Active:=False;
                      // DMC.SDS_PDV.Active:=False;
                      // DM.SDS_CondPagamento.Active:=False;
                       DMC.SQLD_Pedidos.Params[0].AsString:= formCupomfiscal.Edit2.caption;
                      // DMC.SDS_PDV.Active:=true;
                       DMC.SQLD_Pedidos.Active:=True;
                       DMC.CDS_Pedidos.Active:=True;
                       DMC.SDS_Pedido_Itens.Active:= True;


                        DMC.SDS_Pedido_Itens.First;
                      //   Contador:=DMC.SDS_Pedido_Itens.RecordCount;
                        While not DMC.SDS_Pedido_Itens.Eof do
                        begin
                            if formCupomfiscal.IBTRAce.Active then
                            formCupomfiscal.IBTRAce.Commit;
                            formCupomfiscal.IBTRAce.StartTransaction;
                            with formCupomfiscal.QBuscaItens1 do
                            begin
                             close;
                             Parambyname('cod_ven').ASInteger := strtoint(formCupomfiscal.Edit2.Caption);
                             Parambyname('codpro').AsInteger  := strtoint(DMC.SDS_Pedido_ItensCODIGO_PROD.text);
                             open;
                             Last;
                           end;
                           formCupomfiscal.IBTRAce.CommitRetaining;

                         if formCupomfiscal.QBuscaItens1alic_nac.AsFloat > 0.01 then
                         begin
                          tributo := tributo + ExatoCurrency((DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat  * formCupomfiscal.QBuscaItens1ALIC_NAC.AsFloat / 100),2);
                          end else
                         if formCupomfiscal.QBuscaItens1PERC_TRIBU.AsFloat > 0.01 then
                         begin
                           tributo := tributo + ExatoCurrency((DMC.SDS_Pedido_ItensPRECO_TOTAL.AsFloat * formCupomfiscal.QBuscaItens1PERC_TRIBU.AsFloat / 100),2);
                         end;

                        DMC.SDS_Pedido_Itens.Next;
                        end;  }

                        FormCupomFiscal.ClientDataSet1.First;
                        Contador := FormCupomFiscal.ClientDataSet1.RecordCount;
                        For E:=1 to Contador do
                        begin
                        dm.sds_nfce_itens.Insert;
                        dm.sds_nfce_itens.Edit;
                        NValor:=1;
                        tam := length(RemoveChar(FormCupomFiscal.ClientDataSet1CodBarras.Text));

                        NItem:=NItem+NValor;
                        dm.sds_nfce_itensITEN.AsInteger               := NItem;
                        dm.sds_nfce_itensNR_SEQUENCIA.ASINTEGER       := NItem;
                        dm.sds_nfce_itensNR_NOTA.AsInteger            := N;
                       { if tam = 13 then
                            begin
                        dm.sds_nfce_itensCOD_PRODUTO.Text             := FormCupomFiscal.ClientDataset1CodBarras.Text;
                            end else
                            begin }
                        dm.sds_nfce_itensCOD_PRODUTO.Text             := '';

                           with QBuscaItens do
                              begin
                                 close;
                                 Parambyname('cod_ven').AsInteger:= strtoint(Formcupomfiscal.Edit2.caption);
                                 Parambyname('codpro').AsInteger:= strtoint(FormCupomFiscal.ClientDataSet1Codigo.Text);
                                 Parambyname('ITEM').AsInteger:= strtoint(FormCupomFiscal.ClientDataSet1Item.Text);
                                 open;
                              end;

                        if QBuscaItensalic_nac.AsFloat > 0.01 then
                         begin
                          tributo := tributo + ExatoCurrency((FormCupomFiscal.ClientDataSet1Soma.AsFloat  * QBuscaItensALIC_NAC.AsFloat / 100),2);
                          end else
                         if QBuscaItensPERC_TRIBU.AsFloat > 0.01 then
                         begin
                           tributo := tributo + ExatoCurrency((FormCupomFiscal.ClientDataSet1Soma.AsFloat * QBuscaItensPERC_TRIBU.AsFloat / 100),2);
                         end;

                        dm.sds_nfce_itensCD_ATUALIZACAO.AsInteger     := strtoint(Formcupomfiscal.Edit2.caption);
                        DM.sds_nfce_itensCODIGO_PROD.Text             := FormCupomFiscal.ClientDataset1CODIGO.Text;
                        dm.sds_nfce_itensDESCRICAO_PRODUTO.Text       := FormCupomFiscal.ClientDataSet1Descricao.Text;
                        dm.sds_nfce_itensVL_DESCONTO.AsFloat          := ABS(FormCupomFiscal.ClientDataset1DESCONTO.AsFloat);
                        dm.sds_nfce_itensQT_PRODUTO.AsFloat           := FormCupomFiscal.ClientDataset1QUANTIDADE.asfloat;
                        dm.sds_nfce_itensVL_UNITARIO.Asfloat          := FormCupomFiscal.ClientDataSet1Preco.AsFloat;
                        dm.sds_nfce_itensVL_TOTAL.Text                := FormCupomFiscal.ClientDataSet1Soma.Text;
                        dm.sds_nfce_itensDESC_UNIDADE.Text            := FormCupomFiscal.ClientDataSet1Desc_unidade.Text;
                        dm.sds_nfce_itensVL_OUTROS.Text               := FormCupomFiscal.ClientDataSet1EncFianceiro.TEXT;
                        //dm.sds_nfce_itensCD_CLIENTE.Text              := FormCupomFiscal.ClientDataset1CODIGO_CLIENTE.Text;
                        DM.sds_nfce_itensCFOP.Text                    := QBuscaItensCFOP_EST_VENDA.Text;
                        dm.sds_nfce_itensCST.Text                     := QBuscaItensCST_VENDA.Text;
                        dm.sds_nfce_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_EST.Text;
                        dm.sds_nfce_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_EST.Text;
                        dm.sds_nfce_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
                        IF QBuscaItensNCM_SH1.Text > '' THEN
                        BEGIN
                        DM.sds_nfce_itensCOD_NCM.Text                 := QBuscaItensNCM_SH1.Text;
                        end else
                        IF QBuscaItensNCM_SH.Text > '' THEN
                        begin
                        DM.sds_nfce_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
                        end;
                        IF DM.sds_nfce_itensCOD_NCM.Text ='' THEN
                        BEGIN
                        DM.sds_nfce_itensCOD_NCM.Text                 := '00000000';
                        end;
                        IF DM.sds_nfce_itensCOD_NCM.Text ='99999999' THEN
                        BEGIN
                        DM.sds_nfce_itensCOD_NCM.Text                 := '00000000';
                        end;
                        IF Length(DM.sds_nfce_itensCOD_NCM.Text) < 8 THEN
                        BEGIN
                        DM.sds_nfce_itensCOD_NCM.Text                 := '00000000';
                        END;
                        DM.sds_nfce_itensCEST.Text                     := QBuscaItensCEST.Text;

                        dm.sds_nfce_itensALIQ_ICM.AsFloat               := FormCupomFiscal.ClientDataset1PERC_ICM.AsFloat ;
                        dm.sds_nfce_itensVL_ICM.AsFloat                 := FormCupomFiscal.ClientDataset1VL_ICM.AsFloat;
                        dm.sds_nfce_itensVL_BASE_ICM.AsFloat            := FormCupomFiscal.ClientDataset1BASE_ICMS.AsFloat;


                        dm.sds_nfce_itensALIQ_IPI.AsFloat               := FormCupomFiscal.ClientDataset1PERC_IPI.AsFloat ;
                        dm.sds_nfce_itensVL_IPI.AsFloat                 := FormCupomFiscal.ClientDataset1VL_IPI.AsFloat;
                        dm.sds_nfce_itensVL_BASE_IPI.AsFloat            := FormCupomFiscal.ClientDataset1BASE_IPI.AsFloat;



                        dm.sds_nfce_itensALIQ_ISS.AsFloat               := FormCupomFiscal.ClientDataset1PERC_ISS.AsFloat ;
                        dm.sds_nfce_itensVL_ISS.AsFloat                 := FormCupomFiscal.ClientDataset1VL_ISS.AsFloat;
                        dm.sds_nfce_itensVL_BASE_ISS.AsFloat            := FormCupomFiscal.ClientDataset1BASE_ISS.AsFloat ;

                        dm.sds_nfce_itensVL_BASE_PIS.AsFloat            := FormCupomFiscal.ClientDataset1soma.Value;
                        dm.sds_nfce_itensVL_BASE_COFINS.AsFloat         := FormCupomFiscal.ClientDataSet1Soma.Value;
                        DM.sds_nfce_itensALIQ_PIS.AsFloat               := FormCupomFiscal.ClientDataset1PERC_PIS.AsFloat;
                        DM.sds_nfce_itensALIQ_COFINS.AsFloat            := FormCupomFiscal.ClientDataset1PERC_COFINS.AsFloat;
                        dm.sds_nfce_itensVL_PIS.AsFloat                 := FormCupomFiscal.ClientDataset1VL_PIS.AsFloat ;
                        dm.sds_nfce_itensVL_COFINS.AsFloat              := FormCupomFiscal.ClientDataset1VL_COFINS.AsFloat ;

                        dm.sds_nfce_itensVL_BASE_ICM_SUBST.AsFloat      := FormCupomFiscal.ClientDataset1BASE_ICMS_SUBST.AsFloat ;
                        dm.sds_nfce_itensALIQ_ICM_SUBST.AsFloat         := FormCupomFiscal.ClientDataset1PERC_ICMS_SUBST.AsFloat;
                        dm.sds_nfce_itensVL_ICM_SUBST.AsFloat           := FormCupomFiscal.ClientDataset1VL_ICMS_SUBST.AsFloat  ;
                        dm.sds_nfce_itensCOD_EMPRESA.text               := dm.SDS_EmpresaCODIGO.Text;

                        dm.sds_nfce_itens.Post;
                        FormCupomFiscal.ClientDataSet1.next;
                        Application.ProcessMessages;
                        end;


                        NOTA := IntToStr(N);
                       { DM.SDS_NFCE.Filtered := False;
                        DM.SDS_NFCE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
                        DM.SDS_NFCE.Filtered := True; }
                        dm.SDS_NFCE.SQL.Clear;
                        dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_NOTA = :NR_NOTA and cd_empresa =:cod_emp');
                        dm.SDS_NFCE.Params.ParamByName('NR_NOTA').AsInteger := N;
                        dm.SDS_NFCE.Params.ParamByName('COD_EMP').AsInteger := IEMP;
                        dm.SDS_NFCE.open;

                        BEGIN
                        dm.sds_nfce_itens.First;
                        Xa:= Xa + dm.sds_nfce_itensVl_ICM.AsFloat;
                        Y:= Y + dm.sds_nfce_itensVl_IPI.AsFloat;
                        Za:= Za + dm.sds_nfce_itensVl_ISS.AsFloat;
                        BX := BX + dm.sds_nfce_itensVL_BASE_ICM.AsFloat;
                        BY := BY + dm.sds_nfce_itensVL_BASE_IPI.AsFloat;
                        BZ := BZ +  dm.sds_nfce_itensVL_BASE_ISS.AsFloat;

                        B_PIS := B_PIS +  dm.sds_nfce_itensVL_BASE_PIS.AsFloat;
                        PIS   :=  PIS + dm.sds_nfce_itensVL_PIS.AsFloat;
                        B_COFINS := B_COFINS + dm.sds_nfce_itensVL_BASE_COFINS.AsFloat;
                        COFINS   := COFINS + dm.sds_nfce_itensVL_COFINS.AsFloat;
                        dm.sds_nfce_itens.Next;
                        ICM:=Xa;
                        IPI:=Y;
                        Iss :=Za;
                        B_ICM := BX;
                        B_IPI := By;
                        B_ISS := BZ;

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
                        dm.sds_nfce_itens.Next;

                        ICM:=Xa;
                        IPI:=Y;
                        Iss :=Za;
                        B_ICM := BX;
                        B_IPI := By;
                        B_ISS := BZ;
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

                        DM.SDS_NFcE.Edit;
                        DM.SDS_NFcECD_CFOP.Text             :=   QBuscaItensCFOP_EST_VENDA.Text;
                        DM.SDS_NFcE.Post;
                      //  DM.SDS_NFcE.ApplyUpdates(0);

                        dm.sds_nfce_itens.edit;
                        dm.sds_nfce_itens.Post;
                        dm.sds_nfce_itens.ApplyUpdates(0);
                        //confirmar.Enabled := True;
                        Application.ProcessMessages;
                        end;

                        {  FormNFe:=TFormNFe.Create(self);
                          FormNFe.btnCriarEnviar.Enabled := false;
                          valida_nfc := false;
                          FormNFe.Tag := 2;
                          FormNFe.showmodal;  }

                          IMPRIME := TRUE;

                          FormGeraNFce:=TFormGeraNFce.Create(self);
                          FormGeraNFce.combobox2.itemIndex := 0;
                          FormGeraNFce.combobox2.Enabled := False;
                          DM.qrcfop.Active := False;
                          DM.qrcfop.sql.Clear;
                          DM.qrcfop.sql.add('select * from TABELA_CFOP where cfop >=4999');
                          DM.qrcfop.Active := true;
                          FormGeraNFce.RxDBComboEdit2.Text :=  QBuscaItensCFOP_EST_VENDA.Text;
                          FormGeraNFce.RxDBComboEdit2Exit(sender);
                          {dm.SDS_NFCE.Active := false;
                          dm.SDS_NFCE.Active := True;
                          DM.SDS_NFCE.Filtered := False;
                          DM.SDS_NFCE.Filter:='NR_NOTA ='+QuotedStr (INTTOSTR(N));
                          DM.SDS_NFCE.Filtered := True;}
                          dm.SDS_NFCE.close;
                          dm.SDS_NFCE.SQL.Clear;
                          dm.SDS_NFCE.SQL.add('select * FROM  nfece_nota where NR_NOTA = :NR_NOTA and cd_empresa =:cod_emp');
                          dm.SDS_NFCE.Params.ParamByName('NR_NOTA').AsInteger := N;
                          dm.SDS_NFCE.Params.ParamByName('COD_EMP').AsInteger := IEMP;
                          dm.SDS_NFCE.open;
                          DM.sds_nfe_itens.Active := false;
                          DM.sds_nfe_itens.Active := true;
                          FormGeraNFce.Inserir.Enabled := False;
                          FormGeraNFce.confirmar.Enabled := TRUE;
                          FormGeraNFce.ShowModal;

                          IF VALIDA_NFC = true then
                          begin
                          SPC_N_NFE.Params[0].AsInteger :=  StrToInt(DM.SDS_NFCENR_PEDIDO.text);
                          SPC_N_NFE.Params[1].AsInteger  := StrToInt(DM.SDS_NFCENR_NOTA.text);
                          SPC_N_NFE.Params[2].AsString  :=  DM.SDS_NFCESERIE_NF.text;
                          SPC_N_NFE.Params[3].AsInteger  := IEMP;
                          SPC_N_NFE.ExecProc;
                         // Application.ProcessMessages;
                          end;
                       end;


                   if DM.SDS_UsuariosIMP_DARUMA_NFCE.Text ='S'then
                   BEGIN
                   if dm.SDS_CONFIGURACOESIMP_VENDA.Text = 'S' then
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
                          DMC.SQLD_Pedidos.Params[0].AsString:= Formcupomfiscal.Edit2.caption;
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
                                             '<c>'+FormatFloat('##,##0.00',DMC.Sds_Pedido_itensquantidade.asfloat)+'                         '+DMC.Sds_Pedido_itensunidade.text+'    X '+FormatFloat('##,##0.00',DMC.Sds_Pedido_itenspreco_unitario.asfloat)+' '+Formatar(FormatFloat('##,##0.00',(DMC.Sds_Pedido_itenspreco_total.asfloat)),10,false,' ')+'</c><l></l>');
                       DMC.Sds_Pedido_itens.next;
                       end;

                     itens:= Memo1.Text;
                    // DM.ACBrNFe1.NotasFiscais.items[0].nfe.Det.Items[n].Prod.cProd

                    meio:=    '------------------------------------------------<l></l>'+
                              'QTD. TOTAL DE ITENS                     '+FORMPRINCIPAL.texto_justifica(IntToStr(Contador),3,' ','E')+'<l></l>'+
                              'VALOR TOTAL R$                   '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',dmc.cds_pedidosvalor_itens.asfloat),15,' ','E')+'<l></l>'+
                              'Descontos                        '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',dmc.CDS_PedidosVALOR_DESCONTO.asfloat),15,' ','E')+'<l></l>'+
                              'Troco                            '+FORMPRINCIPAL.texto_justifica(FormatFloat('##,##0.00',dmc.CDS_PedidosVALOR_TROCO.asfloat),15,' ','E')+'<l></l>'+
                              'FORMA DE PAGAMENTO                    Valor Pago<l></l>';

                          DMC.QRY_COND_PAGTO.Active := False;
                          with DMC.QRY_COND_PAGTO do
                           begin
                            close;
                            Params.Items[0].AsString  := Formcupomfiscal.Edit2.caption;
                            Open;
                          end;
                          DMC.QRY_COND_PAGTO.Active := True;


                          DMC.QRY_COND_PAGTO.First;
                          while not DMC.QRY_COND_PAGTO.Eof do
                              begin
                                 if DMC.QRY_COND_PAGTOVALOR.AsFloat > 0 then
                                    begin
                                       pag:=(Formatar(DMC.QRY_COND_PAGTOTIPO_PAGTO.Text,35, True,'.')+'R$ '+Formatar(FormatFloat('###,###,##0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat),15,false,' '));
                                    end;
                                 DMC.QRY_COND_PAGTO.Next;
                              end;


                     pagamento:=  ''+pag+'<l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  '                  ASSINATURA                    <l></l>'+
                                  '------------------------------------------------<l></l>'+
                                  '<c>                 SIACE SISTEMAS              </c><sl>4</sl><gui></gui><l></l>';


                    iRetorno:=iImprimirTexto_DUAL_DarumaFramework(cabecalho+ itens + meio + pagamento, 0);


                    END;
                   end ELSE
                   BEGIN
                        if dm.SDS_CONFIGURACOESIMP_VENDA.Text = 'S' then
                        begin
                          if Application.MESSAGEBOX('Confirma Emissão do Comprovante de Venda?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                          BEGIN
                             try
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
                                DMC.SQLD_Pedidos.Params[0].AsString:= Formcupomfiscal.Edit2.caption;

                                DMC.QRY_COND_PAGTO.Active := False;
                                with DMC.QRY_COND_PAGTO do
                                 begin
                                  close;
                                  Params.Items[0].AsString  := Formcupomfiscal.Edit2.caption;
                                  Open;
                                end;
                                DMC.QRY_COND_PAGTO.Active := True;

                                DMC.SQLD_Pedidos.Active:=True;
                                DMC.CDS_Pedidos.Active:=True;
                                DMC.SDS_Pedido_Itens.Active:= True;
                                DMC.SDS_Cliente.Active:= True;
                                DM.SDS_Empresa.active := true;
                                DMC.SDS_Crediario_Contrato.Active :=true;
                                DMC.sds_mov_Caixa.Active := True;
                                DMC.SDS_CHEQUES.Active := True;
                                if DM.SDS_CONFIGURACOESPREVIEW.text= 'N' then
                                begin
                                FormPedido40col := TFormPedido40col.Create(self);
                                FormPedido40col.RLReport1.DefaultFilter.Destroy;
                                FormPedido40col.RLReport1.Prepare;
                                FormPedido40col.RLReport1.Print;
                                end else
                                if DM.SDS_CONFIGURACOESPREVIEW.text= 'S' then
                                begin
                                FormPedido40col := TFormPedido40col.Create(self);
                                FormPedido40col.RLReport1.DefaultFilter.Destroy;
                                FormPedido40col.RLReport1.Prepare;
                                FormPedido40col.RLReport1.PreviewModal;
                                end;
                                end else
                               except
                                 showmessage('Voce cancelou a emissão');
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
                                  DMC.SQLD_Pedidos.Params[0].AsString:= Formcupomfiscal.Edit2.caption;
                                  DMC.SQLD_Pedidos.Active:=True;
                                  DMC.CDS_Pedidos.Active:=True;
                                  DMC.SDS_Pedido_Itens.Active:= True;
                                  DMC.SDS_Cliente.Active:= True;
                                  DM.SDS_Empresa.active := true;
                                  DMC.SDS_Crediario_Contrato.Active :=true;
                                  DMC.sds_mov_Caixa.Active := True;
                                  DMC.SDS_CHEQUES.Active := True;

                                  DMC.QRY_COND_PAGTO.Active := False;
                                  with DMC.QRY_COND_PAGTO do
                                   begin
                                    close;
                                    Params.Items[0].AsString  := Formcupomfiscal.Edit2.caption;
                                    Open;
                                  end;
                                  DMC.QRY_COND_PAGTO.Active := True;

                                  ImprimeVenda;
                                  end;
                                  END;
                             END;

                              DMC.QRY_COND_PAGTO.Active := False;
                          with DMC.QRY_COND_PAGTO do
                           begin
                            close;
                            Params.Items[0].AsString  := Formcupomfiscal.Edit2.caption;
                            Open;
                          end;
                          DMC.QRY_COND_PAGTO.Active := True;

                       // DMC.QRY_COND_PAGTO.Last;

                          DMC.QRY_COND_PAGTO.Active := False;
                          with DMC.QRY_COND_PAGTO do
                           begin
                            close;
                            Params.Items[0].AsString  := Formcupomfiscal.Edit2.caption;
                            Open;
                          end;
                          DMC.QRY_COND_PAGTO.Active := True;

                       // DMC.QRY_COND_PAGTO.Last;

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
                          DMC.SQLD_Pedidos.Params[0].AsString:= Formcupomfiscal.Edit2.caption;
                          DMC.SQLD_Pedidos.Active:=True;
                          DMC.CDS_Pedidos.Active:=True;
                          DMC.SDS_Pedido_Itens.Active:= True;
                          DMC.SDS_Cliente.Active:= True;
                          DM.SDS_Empresa.active := true;
                          DMC.SDS_Crediario_Contrato.Active :=true;
                          DMC.sds_mov_Caixa.Active := True;
                          DMC.SDS_CHEQUES.Active := True;

                          DMC.QRY_COND_PAGTO.Active := False;
                          with DMC.QRY_COND_PAGTO do
                           begin
                            close;
                            Params.Items[0].AsString  := Formcupomfiscal.Edit2.caption;
                            Open;
                          end;
                          DMC.QRY_COND_PAGTO.Active := True;

                          ImprimeDUPLICATA;
                          END ELSE

                               IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.Value = 'Q' THEN
                              //IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                               try
                                BEGIN
                                DMC.SDS_CHEQUES.Active := false;
                                DMC.sds_mov_Caixa.Active := False;
                                DMC.SDS_Crediario_Contrato.Active :=False;
                                DMC.SDS_Pedido_Itens.Active:= False;
                                DMC.SDS_Cliente.Active:= False;
                                DMC.SQLD_Pedidos.Active:=False;
                                DMC.CDS_Pedidos.Active:=False;
                                DM.SDS_Empresa.active := false;
                                DMC.SQLD_Pedidos.Params[0].AsString:= Formcupomfiscal.Edit2.caption;
                                DMC.QRY_COND_PAGTO.Active := True;
                                DMC.SQLD_Pedidos.Active:=True;
                                DMC.CDS_Pedidos.Active:=True;
                                DMC.SDS_Pedido_Itens.Active:= True;
                                DMC.SDS_Cliente.Active:= True;
                                DM.SDS_Empresa.active := true;
                                DMC.SDS_Crediario_Contrato.Active :=true;
                                DMC.sds_mov_Caixa.Active := True;
                                DMC.SDS_CHEQUES.Active := True;

                                DMC.QRY_COND_PAGTO.Active := False;
                                with DMC.QRY_COND_PAGTO do
                                 begin
                                  close;
                                  Params.Items[0].AsString  := Formcupomfiscal.Edit2.caption;
                                  Open;
                                end;
                                DMC.QRY_COND_PAGTO.Active := true;

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
                                except
                                 showmessage('Voce cancelou a emissão');
                               end;
                          end;
                          END;
                          END;
                        END;


                      {    DMC.QRY_COND_PAGTO.Active := False;
                          with DMC.QRY_COND_PAGTO do
                           begin
                            close;
                            Params.Items[0].AsString  := Formcupomfiscal.Edit2.caption;
                            Open;
                          end;
                          DMC.QRY_COND_PAGTO.Active := True;

                        DMC.QRY_COND_PAGTO.Last;
                        if DMC.QRY_COND_PAGTOTIPO_PAGTO.Text = 'A PRAZO' then
                        begin
                         if dm.SDS_CONFIGURACOESCUPON_VINCULADO.Text = 'S' then
                          if Application.MESSAGEBOX('Confirma Emissão do Cupom de Vinculado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                          BEGIN
                          DMC.SDS_CHEQUES.Active := false;
                          DMC.sds_mov_Caixa.Active := False;
                          DMC.SDS_Crediario_Contrato.Active :=False;
                          DMC.SDS_Pedido_Itens.Active:= False;
                          DMC.SDS_Cliente.Active:= False;
                          DMC.SQLD_Pedidos.Active:=False;
                          DMC.CDS_Pedidos.Active:=False;
                          DM.SDS_Empresa.active := false;
                          DMC.SQLD_Pedidos.Params[0].AsString:= Formcupomfiscal.Edit2.caption;
                          DMC.SQLD_Pedidos.Active:=True;
                          DMC.CDS_Pedidos.Active:=True;
                          DMC.SDS_Pedido_Itens.Active:= True;
                          DMC.SDS_Cliente.Active:= True;
                          DM.SDS_Empresa.active := true;
                          DMC.SDS_Crediario_Contrato.Active :=true;
                          DMC.sds_mov_Caixa.Active := True;
                          DMC.SDS_CHEQUES.Active := True;

                          total    := 0;
                         Traco:= '-------------------------------------------------------';

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

                          memo.Clear;
                        with memo.Lines do
                        begin
                        Add('Empresa: '+  Razao_emp+'  ');
                        Add('End.: '+ENDERECO_EMP+' n.º: '+ NUMERO_EMP);
                        Add('Cep: '+CEP_EMP + ' Cid.: ' + CID_EMP + ' UF: ' + ESTADO_EMP);
                        Add('Fone ' + tel_emp +' Op.: ' + DMC.CDS_PedidosUSUARIO.Text);
                        Add('Vda Nº ' + Formcupomfiscal.Edit2.caption + ' Data: ' + datetimetostr(now));
                        Add(traco);
                        Add('');
                        Add('*******************  DUPLICATA  **********************');
                        Add('');
                        Add('Estou Ciente que pagarei a Quantia Conforme'+#13+#10+
                            'parcelas abaixo em seus respectivos vencimentos:');
                        Add('');
                        Add('Parcelamento:');
                        Add('');
                        Add('Venda:  ' + ' Parc.  ' + '  Data Vecto ' + ' Valor Parcela');
                           DMC.QRY_COND_PAGTO.First;
                           while not DMC.QRY_COND_PAGTO.Eof do
                            begin
                               if DMC.QRY_COND_PAGTOVALOR.AsFloat > 0 then
                                  begin
                                   //  Add(Formatar(DMC.QRY_COND_PAGTOTIPO_PAGTO.Text,40, True,'.')+'R$ '+FormatFloat('###,###,##0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat));
                                      Add(((DMC.QRY_COND_PAGTOTITULO.AsString) + '     '+ (DMC.QRY_COND_PAGTOParcela.AsString) + '      ' +(DMC.QRY_COND_PAGTODATA_VENCIMENTO.AsString) + '    '+FormatFloat('###,###,##0.00',DMC.QRY_COND_PAGTOVALOR.AsFloat)));
                                  end;
                           DMC.QRY_COND_PAGTO.Next;
                           end;
                        Add(traco);
                        Add('Cliente: '+ CLI);
                        Add('End.: '+END_CLI + ' nº: ' + NUMERO_CLI);
                        Add('Cep.: ' + CEP_CLI + ' Cid.: ' +CID_CLI + ' UF: ' + ESTADO_CLI);
                        Add(traco);
                        Add('***************Obrigado pela preferência**************');
                        Add('****************  VOLTE SEMPRE   *********************');
                        Add('');
                        Add('');
                        Add(traco);
                        Add('*****************   ASSINATURA   *********************');
                        Add(traco);
                        Add('****************   SIACE SISTEMAS    *****************');
                        Add(traco);
                        end;
                          //Printer.Title := 'COMPROVANTE VINCULADO(DUPLICATA)';
                          ImprimirMemoComCanvas(memo);
                        end;
                        END;  }



                         { if dm.SDS_CONFIGURACOESCUPON_VINCULADO.Text = 'S' then
                           begin
                         {    MFORMAS.Lines.Add('Fant.:'+dm.sds_empresfantasia.text +#13+#10+
                                               'End.:'+dm.sds_empresaenereco.text +#13+#10+
                                               'Cidade-UF:'+dm.sds_empresacidade.text +'-'+dm.sds_empresauf.text+#13+#10+
                                               'Cnpj:'+dm.sds_empresacnpj.text +#13+#10+#13+#10+);
                             MFORMAS.Lines.Add('-------------DUPLICATA/RECEBER-----------------'+#13+#10+#13+#10+);
                             MFORMAS.Lines.Add('Estou Ciente que pagarei a Quantia Conforme'+#13+#10+
                                               'parcelas abaixo em seus respectivos vencimentos:'+#13+#13+#10);
                             MFORMAS.Lines.Add('Parcelamento:'+#13+#13+#10);
                             MFORMAS.Lines.Add('Venda:  ' + ' Parc.  ' + '  Data Vecto ' + ' Valor Parcela'+#13+#13+#10);

                             sValor := formatFloat('0.00',ClientDataSet1ValorParcela.Value);

                             ClientDataset1.First;
                             Contador:= ClientDataset1.RecordCount;
                             For F:=1 to Contador do
                             begin
                             MFORMAS.Lines.Add((ClientDataSet1CodigoCompra.AsString) + '     '+ (ClientDataSet1Parcela.AsString) + '      ' +(ClientDataSet1DataVencimento.AsString) + '     '+(sValor))+#13+#13+#10;
                             ClientDataset1.Next;
                             END;
                              MFORMAS.Lines.Add( '.'+#13+#10+
                                      '.'+#13+#10+
                                      '.'+#13+#10+
                                      '.'+#13+#10+
                                      #13+#13'------------------------------------------'+#13+#10+
                                      'Cliente:'+' '+(FormCupomFiscal.EditCodigoCli.Text)+' -'+
                                      (Formcupomfiscal.e_nome.caption)+#13+#10+
                                      'Cpf/Cnpj:'+' '+FormCupomFiscal.CPFCNPJ+' - '+
                                      'Rg:'+' '+FormCupomFiscal.RGIE+#13+#10+
                                      'Endereço:'+' '+FormCupomFiscal.ENDERCOMP+#13+#13);

                              MFORMAS.Lines.Add('Obrigado Volte Sempre'+#13+#13 +#10+
                                     'Siace Sistemas'+#13)+#13+#10+'Vendedor:'+' '+formprincipal.UserLogado;
                            if Application.MESSAGEBOX('Confirma Emissão do Comprovante de Vinculado(Duplicata)?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                            BEGIN
                            end;
                           end;              }
                         end;

                         DMC.QRY_COND_PAGTO.Active := False;
                          with DMC.QRY_COND_PAGTO do
                           begin
                            close;
                            Params.Items[0].AsString  := Formcupomfiscal.Edit2.caption;
                            Open;
                          end;
                          DMC.QRY_COND_PAGTO.Active := True;

      if DMC.QRY_COND_PAGTO.Locate('TIPO_PAGTO','A PRAZO',[]) = true then
      IF DM.SDS_CONFIGURACOESDUPLICATA.Value = 'S' THEN
      if Application.MESSAGEBOX('Confirma Imprimir a Duplicata?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
       begin
        try
          IF (DM.SDS_CONFIGURACOESFORM_PEDIDOS.TEXT ='I') OR (DM.SDS_CONFIGURACOESFORM_PEDIDOS.TEXT ='3') THEN
          begin
          IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
          BEGIN
            DMC.SDS_Crediario_Contrato.Active :=False;
            DMC.SDS_Pedido_Itens.Active:= False;
            DMC.SDS_Cliente.Active:= False;
            DMC.SQLD_Pedidos.Active:=False;
            DMC.CDS_Pedidos.Active:=False;
            DM.SDS_Empresa.active := false;
            DMC.SQLD_Pedidos.Params[0].AsString:=Formcupomfiscal.Edit2.caption;
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

           IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
           BEGIN
            DMC.SDS_Crediario_Contrato.Active :=False;
            DMC.SDS_Pedido_Itens.Active:= False;
            DMC.SDS_Cliente.Active:= False;
            DMC.SQLD_Pedidos.Active:=False;
            DMC.CDS_Pedidos.Active:=False;
            DM.SDS_Empresa.active := false;
            DMC.SQLD_Pedidos.Params[0].AsString:=Formcupomfiscal.Edit2.caption;
            DMC.SQLD_Pedidos.Active:=True;
            DMC.CDS_Pedidos.Active:=True;
            DMC.SDS_Pedido_Itens.Active:= True;
            DMC.SDS_Cliente.Active:= True;
            DM.SDS_Empresa.active := true;
            DMC.SDS_Crediario_Contrato.Active :=true;
            formduplicatas := Tformduplicatas.Create(self);
            formduplicatas.RLReport1.Prepare;
            formduplicatas.RLReport1.Print;
            end;
            end
            else
           //   IF DM.SDS_CONFIGURACOESFORM_PEDIDOS.TEXT ='P' THEN
           begin
            DMC.SDS_Crediario_Contrato.Active :=False;
            DMC.SDS_Pedido_Itens.Active:= False;
            DMC.SDS_Cliente.Active:= False;
            DMC.SQLD_Pedidos.Active:=False;
            DMC.CDS_Pedidos.Active:=False;
            DM.SDS_Empresa.active := false;
            DMC.SQLD_Pedidos.Params[0].AsString:=Formcupomfiscal.Edit2.caption;
            DMC.SQLD_Pedidos.Active:=True;
            DMC.CDS_Pedidos.Active:=True;
            DMC.SDS_Pedido_Itens.Active:= True;
            DMC.SDS_Cliente.Active:= True;
            DM.SDS_Empresa.active := true;
            DMC.SDS_Crediario_Contrato.Active :=true;
            DM.qrrelatorio.open;

            FXduplicata.LoadFromFile(ExtractFilePath(Application.ExeName) +'\rel\f000150.fr3');
            FXduplicata.ShowReport;
          end;
             except
              ShowMessage('Não foi possivel concluir a emissão da duplicata!');
              end;
              end;


          if dm.sds_configuracoesmodelo_ecf.Text = '1' then
          begin
            tributos := 'Valor Aproximado dos Tributos : R$ '+ FloatToStr(tributo)+ ' FONTE: IBPT';
            cMsgPromocional := TRIBUTOS +#13+#10+'Cliente:'+' '+(FormCupomFiscal.EditCodigoCli.Text)+' - '+(Formcupomfiscal.e_nome.caption)+#13+#10+'Cpf/Cnpj:'+' '+FormCupomFiscal.CPFCNPJ+' - '+'Rg:'+' '+FormCupomFiscal.RGIE+#13+#10+'Endereço:'+' '+FormCupomFiscal.ENDERCOMP+#13+#10+(DM.SDS_CONFIGURACOESMSG_CUPOMFISCAL.AsString)+#13+#10+'Vendedor:'+' '+formprincipal.UserLogado;

            // INICIA FECHAMENTO COM DESCONTOS OU ACRESCIMOS
            if E_Desconto.Value >= 0 then
            BEGIN
            cAcreDesc      := 'D';
            cTipoAcreDesc  := '$';
            cValorAcreDesc := FormatFloat('0.00',E_desconto.Value);
            end else
            if CurrencyEdit5.Value >0 then
            BEGIN
            cAcreDesc      := 'A';
            cTipoAcreDesc  := '$';
            cValorAcreDesc := FormatFloat('0.00',CurrencyEdit5.Value);
            end;
            iRetorno := Bematech_FI_IniciaFechamentoCupom( pchar( cAcreDesc ), pchar( cTipoAcreDesc ), pchar( cValorAcreDesc ) );
            FormCupomFiscal.Analisa_iRetorno();
            FormCupomFiscal.Retorno_Impressora();


            // INICIA PAGAMENTO

            //cFormaPgto := PG;
            //cValorPago := '50,00';

           if CD = 'DINHEIRO' then
           begin
           cFormaPgto := PAG;
           cValorPago     := FormatFloat('0.00',CurrencyEdit4.Value);
          {  for iConta := 1 to 14 do SubTotal := SubTotal + ' ';
           iRetorno := Bematech_FI_SubTotal( SubTotal );
           troco := CurrencyEdit4.value - iRetorno;
           if troco <= 0 then
           begin
           cValorPago    := FloatToStr(iRetorno - Bematech_FI_ValorPagoUltimoCupom());}
           {if troco > 0 then
            begin
          // ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago));
           end;}
            iRetorno := Bematech_FI_EfetuaFormaPagamento( pchar( cFormaPgto ), pchar( cValorPago ) );
            FormCupomFiscal.Analisa_iRetorno();
            FormCupomFiscal.Retorno_Impressora();

            iRetorno := Bematech_FI_TerminaFechamentoCupom( pchar( cMsgPromocional ) );
            FormCupomFiscal.Analisa_iRetorno();
            FormCupomFiscal.Retorno_Impressora();

           if DM.SDS_CONFIGURACOESUSA_GAVETA.Text ='S' then
           begin
            iRetorno := Bematech_FI_AcionaGaveta();
            FormCupomFiscal.Analisa_iRetorno();
            FormCupomFiscal.Retorno_Impressora();
           end;
           end else




            if CD = 'CREDIARIO' then
            begin
            cValorPago   := '0';
            if CurrencyEdit4.TexT > '0' then
            begin
            CD := 'DINHEIRO';
            PG1 := CD;
            cFormaPgto1 := PG1;
            cValorPago1     := FormatFloat('0.00',CurrencyEdit4.Value);
            iRetorno := Bematech_FI_EfetuaFormaPagamento( pchar( cFormaPgto1 ), pchar( cValorPago1 ) );
            end;
            cFormaPgto := PAG;
            cValorPago := FormatFloat('0.00',CurrencyEdit6.Value);
            iRetorno := Bematech_FI_EfetuaFormaPagamento( pchar( cFormaPgto ), pchar( cValorPago ) );;
            iRetorno := Bematech_FI_TerminaFechamentoCupom( pchar( cMsgPromocional ) );
            end;

            if Edit1.Text = 'CHEQUE' then
            begin
               cValorPago   := '0';
            if CurrencyEdit4.TexT > '0' then
            begin
            CD := 'DINHEIRO';
            PG1 := CD;
            cFormaPgto1 := PG1;
            cValorPago1     := FormatFloat('0.00',CurrencyEdit4.Value);
            iRetorno := Bematech_FI_EfetuaFormaPagamento( pchar( cFormaPgto1 ), pchar( cValorPago1 ) );
            FormCupomFiscal.Analisa_iRetorno();
            FormCupomFiscal.Retorno_Impressora();
            end;
            cFormaPgto := PAG;
            cValorPago := FormatFloat('0.00',CurrencyEdit6.Value);
            iRetorno := Bematech_FI_EfetuaFormaPagamento( pchar( cFormaPgto ), pchar( cValorPago ) );;
            FormCupomFiscal.Analisa_iRetorno();
            FormCupomFiscal.Retorno_Impressora();
            iRetorno := Bematech_FI_TerminaFechamentoCupom( pchar( cMsgPromocional ) );
            FormCupomFiscal.Analisa_iRetorno();
            FormCupomFiscal.Retorno_Impressora();
            end;

            if Edit1.Text = 'FINANCEIRA' then
            begin
            cValorPago   := '0';
            cFormaPgto := PAG;
            cValorPago := FormatFloat('0.00',CurrencyEdit4.Value);
            iRetorno := Bematech_FI_EfetuaFormaPagamento( pchar( cFormaPgto ), pchar( cValorPago ) );
             FormCupomFiscal.Analisa_iRetorno();
            FormCupomFiscal.Retorno_Impressora();
            iRetorno := Bematech_FI_TerminaFechamentoCupom( pchar( cMsgPromocional ) );
             FormCupomFiscal.Analisa_iRetorno();
            FormCupomFiscal.Retorno_Impressora();
            end;

            if Edit1.Text = 'VALE' then
            begin
            cFormaPgto := PAG;
            cValorPago := FormatFloat('0.00',CurrencyEdit4.Value);
            iRetorno := Bematech_FI_EfetuaFormaPagamento( pchar( cFormaPgto ), pchar( cValorPago ) );
            FormCupomFiscal.Analisa_iRetorno();
            FormCupomFiscal.Retorno_Impressora();

            iRetorno := Bematech_FI_TerminaFechamentoCupom( pchar( cMsgPromocional ) );
            FormCupomFiscal.Analisa_iRetorno();
            FormCupomFiscal.Retorno_Impressora();
          end;



           if DM.SDS_CONFIGURACOESCUPON_VINCULADO.Text ='S' then
           begin
           IF Edit1.Text = 'CREDIARIO' then
           begin
         {  COO := FormCupomFiscal.ACBrECF1.NumCupom ;


           CodFormaPagamento := PAG ;
           CodComprovanteNaoFiscal := Formcupomfiscal.Edit2.caption;
           sValor := cValorPago;

           sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                        ',',DecimalSeparator,[]) ;
           dValor := StrToFloatDef(sValor,0) ;  }
           CodComprovanteNaoFiscal := Formcupomfiscal.Edit2.caption;
           for iConta := 1 to 6 do
           NumeroCupom := NumeroCupom + ' ';
           iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );

           cFormaPgto := PAG;
           cValorPago := FormatFloat('0.00',CurrencyEdit6.Value);

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

           sValor := formatFloat('0.00',ClientDataSet1ValorParcela.Value);

           ClientDataset1.First;
           Contador:= ClientDataset1.RecordCount;
           For F:=1 to Contador do
           begin
           Linha := ((ClientDataSet1CodigoCompra.AsString) + '     '+ (ClientDataSet1Parcela.AsString) + '      ' +(ClientDataSet1DataVencimento.AsString) + '     '+(sValor))+#13+#13+#10;
           ClientDataset1.Next;
           iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );
           end;

            linha:= ( '.'+#13+#10+
                      '.'+#13+#10+
                      '.'+#13+#10+
                      '.'+#13+#10+
                      #13+#13'------------------------------------------'+#13+#10+
                      'Cliente:'+' '+(FormCupomFiscal.EditCodigoCli.Text)+' -'+
                      (Formcupomfiscal.e_nome.caption)+#13+#10+
                      'Cpf/Cnpj:'+' '+FormCupomFiscal.CPFCNPJ+' - '+
                      'Rg:'+' '+FormCupomFiscal.RGIE+#13+#10+
                      'Endereço:'+' '+FormCupomFiscal.ENDERCOMP+#13+#13);
            iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

            Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                     'StartNet Sistemas'+#13)+#13+#10+'Vendedor:'+' '+formprincipal.UserLogado;
            iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Linha ) );

            iRetorno := Bematech_FI_FechaComprovanteNaoFiscalVinculado();


            end;
            end;
          end else




         // componente acbr
         if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
         begin
            if FormCupomFiscal.ACBrECF1.FormasPagamento.Count < 1 then
            BEGIN
            ShowMessage('Nenhuma Forma de Pagamento programada no ECF');
            end;

           cMsgPromocional := TRIBUTOS +#13+#10+'Cliente:'+' '+(FormCupomFiscal.EditCodigoCli.Text)+' - '+(Formcupomfiscal.e_nome.caption)+#13+#10+'Cpf/Cnpj:'+' '+FormCupomFiscal.CPFCNPJ+' - '+'Rg:'+' '+FormCupomFiscal.RGIE+#13+#10+'Endereço:'+' '+FormCupomFiscal.ENDERCOMP+#13+#10+(DM.SDS_CONFIGURACOESMSG_CUPOMFISCAL.AsString)+#13+#10+'Vendedor:'+' '+formprincipal.UserLogado;

         {  if FormCupomFiscal.ACBrECF1.AchaFPGIndice(cFormaPgto) = nil then
           begin
          // raise Exception.Create('Forma de pagamento '+cFormaPgto + '-' + CD +' não encontrada no ECF, Favor Cadastrar');
           ShowMessage ('Forma de pagamento '+cFormaPgto +'-' + Edit1.Text +' não encontrada, clique ok para cadastrar');}

          Descricao := PAG;
          begin
          FPG := FormCupomFiscal.ACBrECF1.AchaFPGDescricao((Descricao)) ;

           if FPG = nil then
           // raise Exception.Create('Forma de Pagamento: '+Descricao+' não encontrada') ;
          ShowMessage ('Forma de pagamento '+descricao +' não encontrada');

          edCod.Text := FPG.Indice ;
          cFormaPgto      := edCod.Text;
          { Bematech permite cadastrar formas de Pagamento dinamicamente }
           if (FormCupomFiscal.ACBrECF1.ModeloStr = 'Bematech') and
          (pos( FPG.Descricao, mFormas.Text ) = 0) then
          CarregaFPG;
          end ;


           FormCupomFiscal.ACBrECF1.Subtotal;
           FormCupomFiscal.ACBrECF1.SubtotalizaCupom ( StrToFloat(cValorAcresDesc));
           //FormCupomFiscal.mResp.Lines.Add( 'Subtotaliza Cupom: ' +cValorAcresDesc );


           if FormCupomFiscal.TipoCupom <> 'N' then
           begin
           if CD = 'DINHEIRO' then
           begin
           PG1 := '01';
           cFormaPgto1 := PG1;
          // cValorPago     := 0;
           cValorPago     := CurrencyEdit4.Text;
           troco := CurrencyEdit4.value - FormCupomFiscal.ACBrECF1.Subtotal;
           if troco <= 0 then
           begin
           cValorPago1    := FloatToStr(FormCupomFiscal.ACBrECF1.Subtotal - FormCupomFiscal.ACBrECF1.TotalPago);
           FormCupomFiscal.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago1 ));
           end else

           if troco > 0 then
            begin
           FormCupomFiscal.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago));
           end;

           if DM.SDS_CONFIGURACOESUSA_GAVETA.Text ='S' then
           begin
            {if (FormCupomFiscal.ACBrECF1.Modelo in [ecfNaoFiscal])then
            begin
                s_cmdtx:=#27+#118#140;
                I_retorno:=ComandoTX(s_cmdtx,length (s_cmdtx));
            end else}
            begin
               FormCupomFiscal.ACBrECF1.AbreGaveta;
            end;
           end;

           end;


            if CD = 'CREDIARIO' then
            begin
            cValorPago   := '0';
            if CurrencyEdit4.TexT > '0' then
            begin
            CD := 'DINHEIRO';
            PG1 := '01';
            cFormaPgto1 := PG1;
            cValorPago1     := FormatFloat('0.00',CurrencyEdit4.Value);
            FormCupomFiscal.ACBrECF1.EfetuaPagamento( cFormaPgto1, StrToFloat(cValorPago1));
            end;

            cValorPago := FloatToStr(FormCupomFiscal.ACBrECF1.Subtotal - FormCupomFiscal.ACBrECF1.TotalPago);
            FormCupomFiscal.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
            end;

            if Edit1.Text = 'CHEQUE' then
            begin
            cValorPago   := '0';
            if CurrencyEdit4.TexT > '0' then
            begin
            CD := 'DINHEIRO';
            PG1 := '01';
            cFormaPgto1 := PG1;
            cValorPago1     := FormatFloat('0.00',CurrencyEdit4.Value);
            FormCupomFiscal.ACBrECF1.EfetuaPagamento( cFormaPgto1, StrToFloat(cValorPago1));

            if DM.SDS_CONFIGURACOESUSA_GAVETA.Text ='S' then
            begin
            FormCupomFiscal.ACBrECF1.AbreGaveta;
            end;

            end;

            cValorPago    := FloatToStr(FormCupomFiscal.ACBrECF1.Subtotal - FormCupomFiscal.ACBrECF1.TotalPago);
            FormCupomFiscal.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));

            end;

            if Edit1.Text = 'FINANCEIRA' then
            begin
            cValorPago   := '0';
            cValorPago   := FloatToStr(FormCupomFiscal.ACBrECF1.Subtotal - FormCupomFiscal.ACBrECF1.TotalPago);
            FormCupomFiscal.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
            end;

            if Edit1.Text = 'VALE' then
            begin
            troco := CurrencyEdit4.value - FormCupomFiscal.ACBrECF1.Subtotal;
            cValorPago1 := FloatToStr(CurrencyEdit4.Value);
            cValorPago   := FloatToStr(FormCupomFiscal.ACBrECF1.Subtotal - FormCupomFiscal.ACBrECF1.TotalPago);
            FormCupomFiscal.ACBrECF1.EfetuaPagamento( cFormaPgto, StrToFloat( cValorPago ));
            end;

          {  FormCupomFiscal.ACBrECF1.EfetuaPagamento(FormCupomFiscal.ACBrECF1.FormasPagamento[0].Indice,
           (FormCupomFiscal.ACBrECF1.Subtotal - FormCupomFiscal.ACBrECF1.TotalPago), 'ZERANDO SALDO A PAGAR RESTANTE';}

           FormCupomFiscal.ACBrECF1.InfoRodapeCupom.Imposto.ValorAproximado := tributo;  // informar o valor aproximado calculado a partir dos itens
           FormCupomFiscal.ACBrECF1.InfoRodapeCupom.Imposto.Fonte           := ' IBPT'; // informar a fonte de onde veio a informação para calculo

           FormCupomFiscal.ACBrECF1.FechaCupom(cMsgPromocional);

           FormCupomFiscal.ACBrECF1.CortaPapel(True);
           end;
           // fim da emissao do cupon fiscal


          // inicio da emissao do copon vinculado
           if DM.SDS_CONFIGURACOESCUPON_VINCULADO.Text ='S' then
           begin
           IF Edit1.Text = 'CREDIARIO' then
           begin
           COO := FormCupomFiscal.ACBrECF1.NumCupom ;

           CodFormaPagamento := edCod.Text ;
           CodComprovanteNaoFiscal := Formcupomfiscal.Edit2.caption;
           sValor := CurrencyEdit4.Text;

           sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                        ',',DecimalSeparator,[]) ;
           dValor := StrToFloatDef(sValor,0) ;

           if Trim(CodComprovanteNaoFiscal) <> '' then
           FormCupomFiscal.ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                  dValor)
           else
           FormCupomFiscal.ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
           Linha :=  ('Estou Ciente que pagarei a Quantia Conforme'+#13+#10+
                      'parcelas abaixo em seus respectivos vencimentos:'+#13+#13+#10);


            FormCupomFiscal.ACBrECF1.LinhaCupomVinculado( Linha );

            Linha :=  ('Parcelamento:'+#13+#13+#10);

            FormCupomFiscal.ACBrECF1.LinhaCupomVinculado( Linha );

            linha := ('Venda:  ' + ' Parc.  ' + '  Data Vecto ' + ' Valor Parcela');
            FormCupomFiscal.ACBrECF1.LinhaCupomVinculado( Linha );

           sValor := formatFloat('0.00',ClientDataSet1ValorParcela.Value);

           ClientDataset1.First;
           Contador:= ClientDataset1.RecordCount;
           For F:=1 to Contador do
           begin
           Linha := ((ClientDataSet1CodigoCompra.AsString) + '     '+ (ClientDataSet1Parcela.AsString) + '      ' +(ClientDataSet1DataVencimento.AsString) + '    '+(sValor));
           ClientDataset1.Next;
           FormCupomFiscal.ACBrECF1.LinhaCupomVinculado( Linha );
           end;

            linha:= (#13+#13'------------------------------------------'+#13+#10+
                      'Cliente:'+' '+(FormCupomFiscal.EditCodigoCli.Text)+' -'+
                      (Formcupomfiscal.e_nome.caption)+#13+#10+
                      'Cpf/Cnpj:'+' '+FormCupomFiscal.CPFCNPJ+' - '+
                      'Rg:'+' '+FormCupomFiscal.RGIE+#13+#10+
                      'Endereço:'+' '+FormCupomFiscal.ENDERCOMP+#13+#13);
            FormCupomFiscal.ACBrECF1.LinhaCupomVinculado( Linha );

            Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                     'StartNet Sistemas'+#13)+#13+#10+'Vendedor:'+' '+formprincipal.UserLogado;
            FormCupomFiscal.ACBrECF1.LinhaCupomVinculado( Linha );

            FormCupomFiscal.ACBrECF1.FechaRelatorio;

            FormCupomFiscal.ACBrECF1.CortaPapel(True);
           end else

           IF Edit1.Text = 'VALE' then
           begin
           IF troco > 0 THEN
           BEGIN
           COO := FormCupomFiscal.ACBrECF1.NumCupom ;

           CodFormaPagamento := edCod.Text ;
           CodComprovanteNaoFiscal := Formcupomfiscal.Edit2.caption;
           sValor := cValorPago1;

           sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                                        ',',DecimalSeparator,[]) ;
           dValor := StrToFloatDef(sValor,0) ;

           if Trim(CodComprovanteNaoFiscal) <> '' then
           FormCupomFiscal.ACBrECF1.AbreCupomVinculado( COO,CodFormaPagamento,CodComprovanteNaoFiscal,
                                  dValor)
           else
           FormCupomFiscal.ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
           Linha :=  ('Valor da Compra: '+#13+#10+ cValorPago);


           FormCupomFiscal.ACBrECF1.LinhaCupomVinculado( Linha );

           Linha :=  ('Valor Vale:'+#13+#13+#10+ FloatToStr(troco));

           FormCupomFiscal.ACBrECF1.LinhaCupomVinculado( Linha );


           linha:= (#13+#13'------------------------------------------'+#13+#10+
                      'Cliente:'+' '+(FormCupomFiscal.EditCodigoCli.Text)+' -'+
                      (Formcupomfiscal.e_nome.caption)+#13+#10+
                      'Cpf/Cnpj:'+' '+FormCupomFiscal.CPFCNPJ+' - '+
                      'Rg:'+' '+FormCupomFiscal.RGIE+#13+#10+
                      'Endereço:'+' '+FormCupomFiscal.ENDERCOMP+#13+#13);
           FormCupomFiscal.ACBrECF1.LinhaCupomVinculado( Linha );

           Linha := ('Obrigado Volte Sempre'+#13+#13 +#10+
                     'StartNet Sistemas'+#13)+#13+#10+'Vendedor:'+' '+formprincipal.UserLogado;
           FormCupomFiscal.ACBrECF1.LinhaCupomVinculado( Linha );

           FormCupomFiscal.ACBrECF1.FechaRelatorio;

           FormCupomFiscal.ACBrECF1.CortaPapel(True);
           end;
           end;
           end;
          end;


            if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
            begin
            SPC_N_CUPOM.Params[0].AsInteger :=  StrToInt(Formcupomfiscal.Edit2.caption);

            for iConta := 1 to 6 do
            NumeroCupom := NumeroCupom + ' ';
            iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );
            FormCupomFiscal.Analisa_iRetorno();
           // ShowMessage( 'Número do Cupom: ' + NumeroCupom);
            FormCupomFiscal.Retorno_Impressora();
            SPC_N_CUPOM.Params[1].AsInteger  :=  StrToInt(NumeroCupom);
            for iConta := 1 to 4 do
            NumeroCaixa := NumeroCaixa + ' ';
            iRetorno := Bematech_FI_NumeroCaixa( NumeroCaixa );
            FormCupomFiscal.Analisa_iRetorno();
           // ShowMessage( 'Número do Caixa: ' + NumeroCaixa);
            FormCupomFiscal.Retorno_Impressora();
            SPC_N_CUPOM.Params[2].asstring  :=  NumeroCaixa;
            SPC_N_CUPOM.ExecProc;
            end else

            if DM.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
              if (FormCupomFiscal.ACBrECF1.Modelo in [ecfBematech, ecfSweda, ecfDaruma, ecfSchalter, ecfMecaf, ecfYanco, ecfDataRegis, ecfUrano, ecfICash,
            ecfQuattro])then
            begin
            SPC_N_CUPOM.Params[0].AsInteger :=  StrToInt(Formcupomfiscal.Edit2.caption);
            SPC_N_CUPOM.Params[1].AsInteger  := StrToInt(FormCupomFiscal.ACBrECF1.NumCupom);
            SPC_N_CUPOM.Params[2].AsString  :=  FormCupomFiscal.ACBrECF1.NumECF;
            SPC_N_CUPOM.ExecProc;
             end;



         {  FormCupomFiscal.Sds_venda.Edit;

          // FormCupomFiscal.Sds_vendaN_CUPOM.text := FormCupomFiscal.ACBrECF1.NumCupom;
          // FormCupomFiscal.Sds_vendaN_ECF.text := FormCupomFiscal.ACBrECF1.NumECF;

           Formcupomfiscal.Sds_vendaPAGAMENTO.AsString        := Desc_cond_pagto.Text;
           Formcupomfiscal.Sds_vendaENC_FINANCEIRO.AsString   := CurrencyEdit5.text;
           Formcupomfiscal.Sds_vendaTP.AsString               := DM.SDS_CondPagamentoTIPO_PAGAMENTO.Text;
           Formcupomfiscal.Sds_vendaCOD_PAGTO.AsInteger       := StrToInt(DBComboPgto.Text);
           Formcupomfiscal.Sds_vendaVALOR_DESCONTO.AsString   := E_Desconto.Text;
           Formcupomfiscal.Sds_vendaVALOR_TOTAL.AsString      := CurrencyEdit3.Text;

           FormCupomFiscal.Sds_venda.Post;
           FormCupomFiscal.Sds_venda.ApplyUpdates(0);
           FormCupomFiscal.Sds_itens.Edit;
           FormCupomFiscal.Sds_itens.Post;
           FormCupomFiscal.Sds_itens.ApplyUpdates(0); }

          // DESCONTOS
          //IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
          //BEGIN

          { Formcupomfiscal.ClientDataset1.First;
           Contador:=Formcupomfiscal.ClientDataset1.RecordCount;
           For E:=1 to Contador do
           begin
           Formcupomfiscal.SPC_BAIXA_ESTOQUE.ParamByname('Codigo').AsInteger  := Formcupomfiscal.ClientDataset1.FieldByname('Codigo').AsInteger;
           Formcupomfiscal.SPC_BAIXA_ESTOQUE.ParamByname('Quant').Value       := Formcupomfiscal.ClientDataset1.FieldByname('Quantidade').Value;
           Formcupomfiscal.SPC_BAIXA_ESTOQUE.ExecProc;
           Formcupomfiscal.ClientDataset1.Next;
           end;  }

         {  IF DM.SDS_CONFIGURACOESUSA_FRACAO.AsString ='N' then
           begin
           Formcupomfiscal.ClientDataset1.First;
           Contador:=Formcupomfiscal.ClientDataset1.RecordCount;
           For E:=1 to Contador do
           begin
           Formcupomfiscal.SPC_BAIXA_ESTOQUE.ParamByname('Codigo').AsInteger  := Formcupomfiscal.ClientDataset1.FieldByname('Codigo').AsInteger;
           Formcupomfiscal.SPC_BAIXA_ESTOQUE.ParamByname('Quant').Value       := Formcupomfiscal.ClientDataset1.FieldByname('Quantidade').Value;
           Formcupomfiscal.SPC_BAIXA_ESTOQUE.ExecProc;
           Formcupomfiscal.ClientDataset1.Next;
           end;
           end ELSE

           IF DM.SDS_CONFIGURACOESUSA_FRACAO.AsString ='S' then
           begin
           Formcupomfiscal.ClientDataset1.First;
           Contador:=Formcupomfiscal.ClientDataset1.RecordCount;
           For E:=1 to Contador do
           begin
           Formcupomfiscal.SPC_BAIXA_EST_FRACAO.ParamByname('Codigo').AsInteger := Formcupomfiscal.ClientDataset1.FieldByname('Codigo').AsInteger;
           Formcupomfiscal.SPC_BAIXA_EST_FRACAO.ParamByname('Quant').Value := Formcupomfiscal.ClientDataset1.FieldByname('Quantidade').Value;
           Formcupomfiscal.SPC_BAIXA_EST_FRACAO.ParamByname('FRACAO').AsInteger := Formcupomfiscal.ClientDataset1.FieldByname('FRACAO').ASiNTEGER;
           Formcupomfiscal.SPC_BAIXA_EST_FRACAO.ExecProc;
           Formcupomfiscal.ClientDataset1.Next;
           end;
           end; }


                    IF DM.SDS_CONFIGURACOESMODELO_ECF.Text = '4' THEN
                    BEGIN
                    DMC.SDS_CHEQUES.Active := false;
                    DMC.sds_mov_Caixa.Active := False;
                    DMC.SDS_Crediario_Contrato.Active :=False;
                    DMC.SDS_Pedido_Itens.Active:= False;
                    DMC.SDS_Cliente.Active:= False;
                    DMC.SQLD_Pedidos.Active:=False;
                    DMC.CDS_Pedidos.Active:=False;
                    DM.SDS_Empresa.active := false;
                    DMC.SQLD_Pedidos.Params[0].AsString:= Formcupomfiscal.Edit2.caption;

                    {DMC.QRY_COND_PAGTO.Active := False;
                    with DMC.QRY_COND_PAGTO do
                     begin
                      close;
                      Params.Items[0].AsString  := Formcupomfiscal.Edit2.caption;
                      Open;
                    end;
                    DMC.QRY_COND_PAGTO.Active := True;  }

                      DMC.QRY_COND_PAGTO.close;
                            DMC.QRY_COND_PAGTO.Params.ParamByName('ID_VENDA').AsInteger  := StrToInt(Formcupomfiscal.Edit2.caption);
                            DMC.QRY_COND_PAGTO.Open;

                    DMC.SQLD_Pedidos.Active:=True;
                    DMC.CDS_Pedidos.Active:=True;
                    DMC.SDS_Pedido_Itens.Active:= True;
                    DMC.SDS_Cliente.Active:= True;
                    DM.SDS_Empresa.active := true;
                    DMC.SDS_Crediario_Contrato.Active :=true;
                    DMC.sds_mov_Caixa.Active := True;
                    DMC.SDS_CHEQUES.Active := True;

                    ImprimeVenda40;

                    Application.ProcessMessages;
                    s_bematx:= memo.Text;
                    Application.ProcessMessages;


                    iRetorno := AjustaLarguraPapel(80);

                      i_retorno:=BematechTX(pchar(s_bematx+#10));
                                         Application.ProcessMessages;
                      if i_retorno <> 1 then
                          Application.MessageBox('Erro de comunicação','Erro!',0);

                    Application.ProcessMessages;

                        s_cmdtx:=#27+#119;
                        i_retorno:=ComandoTX(s_cmdtx,length (s_cmdtx));

                     Application.ProcessMessages;

                       if DM.SDS_CONFIGURACOESUSA_GAVETA.Text ='S' then
                       begin
                        s_cmdtx:=#27+#118#140;
                        I_retorno:=ComandoTX(s_cmdtx,length (s_cmdtx));
                       end;
                    end;

           Formcupomfiscal.ClientDataset1.First;
           Formcupomfiscal.Total:=0;
           Formcupomfiscal.soma:=0;
           Formcupomfiscal.Comissao:=0;
           Formcupomfiscal.EncFinanceiro:=0;
           Formcupomfiscal.ClientDataset1.First;
           Formcupomfiscal.DBGrid1.Enabled:= False;
          // Formcupomfiscal.Panel12.Enabled:= FALSE;
          // Formcupomfiscal.Panel3.Enabled:= FALSE;
           Formcupomfiscal.EditCodigoCli.color:= clWhite;
           Formcupomfiscal.CancelaVenda.Enabled:=FALSE;
           Formcupomfiscal.CancelaItem.Enabled:= False;
           Formcupomfiscal.NovoProd.Enabled:= False;
           Formcupomfiscal.ConfPedido.Enabled:= False;
           Formcupomfiscal.NovaVenda.Enabled:= TRUE;
           Formcupomfiscal.E_Nome.Caption := '';
           Formcupomfiscal.EditCodigoCli.Color:= $00E8E8E8;
           Formcupomfiscal.EditCodigoCli.Clear;
          // Formcupomfiscal.Edit60.Clear;
           Formcupomfiscal.Edit62.Clear;
          // Formcupomfiscal.E_Desconto.Clear;
          // Formcupomfiscal.E_Desconto.Color:= $00E8E8E8;
           Formcupomfiscal.Edit1.Clear;
           Formcupomfiscal.Edit1.Color:= $00E8E8E8;
           Formcupomfiscal.EditN1.Color:= $00E8E8E8;
           Formcupomfiscal.EditN1.Clear;
          // Formcupomfiscal.Edit60.Font.Color:= $00E8E8E8;
           Formcupomfiscal.Edit62.Font.Color:= clBlack;
          // Formcupomfiscal.E_Desconto.Font.Color:= $00E8E8E8;

           // DM.SQLC.Commit(TD);



                   {IF Edit1.Text = 'CREDIARIO' then
                   BEGIN
                    pedido := Formcupomfiscal.Edit2.caption;

                    DMCOB.CDS_COBRANCA1.Active := False;
                    DMCOB.qryCobranca.CLOSE;
                    DMCOB.qryCobranca.SQL.Clear;
                    DMCOB.qryCobranca.SQL.add('select * from V_CREDIARIO_BOLETOS where codigo_compra ='+(pedido));
                    DMCOB.qryCobranca.Open;
                    DMCOB.CDS_COBRANCA1.Active := true;
                    repeat
                    DMCOB.CDS_COBRANCA1.Edit;
                    DMCOB.CDS_COBRANCA1NUM_NOTA.aSiNTEGER := DMC.CDS_pEDIDOSNUM_NOTA.ASINTEGER;
                    DMCOB.CDS_COBRANCA1SERIE_NOTA.ASSTRING := DMC.CDS_PEDIDOSSERIE_NOTA.ASSTRING;
                    DMCOB.CDS_COBRANCA1.POST;
                    DMCOB.CDS_COBRANCA1.ApplyUpdates(0);
                    DMCOB.CDS_COBRANCA1.Next;
                    until DMCOB.CDS_COBRANCA1.eof;
                    DMCOB.CDS_COBRANCA1.refresh;
                    dbgrid1.refresh;
                    DMCOB.CDS_COBRANCA1.first;
                    end;}

                 //   DM.SQLC.Commit(TD);

                    Formcupomfiscal.Edit2.Caption := '';
                    Formcupomfiscal.Edtproduto.caption := 'Siace Sistemas';
                    Formcupomfiscal.edtTotal.text := '0,00';
                    Formcupomfiscal.EditUnt.text := '0,00';
                    Formcupomfiscal.Edit1.Color := clBlack;
                    Formcupomfiscal.Editn1.Color := clBlack;
                    //Formcupomfiscal.suiEdit1.Visible := TRUE;
                    //Formcupomfiscal.suiEdit1.Text := '...........CAIXA LIVRE.........';
                    Formcupomfiscal.panel5.Visible := true;
                    Formcupomfiscal.VENDA_ABERTA := FALSE;

                 {    if DM.SDS_CONFIGURACOESABRE_VENDA.Text = 'S' then
                      begin
                     // formcupomfiscal.Panel2.Enabled := True;
                      formcupomfiscal.Edit1.Clear;
                      formcupomfiscal.Edit1.SetFocus;
                      end else
                      begin
                    //  formcupomfiscal.Panel2.Enabled := False;
                      end;  }

                      Formcupomfiscal.clientDataset1.Active := FALSE;
                      Formcupomfiscal.clientDataset1.Active := TRUE;

                      Formcupomfiscal.clientDataset2.Active := FALSE;
                      Formcupomfiscal.clientDataset2.Active := TRUE;

              while not Formcupomfiscal.clientDataset1.EOF do
              begin
              Formcupomfiscal.ClientDataset1.Delete;
              end;

              Close;
end;

procedure TFormPedidoParcela.CarregaFPG;
Var A : Integer ;
begin
  mFormas.Clear ;
  with FormCupomFiscal do
  begin
  //   Bematech e NaoFiscal permitem cadastrar formas de Pagamento dinamicamente
     if (FormCupomFiscal.ACBrECF1.Modelo in [ecfBematech,ecfNaoFiscal])then
        ACBrECF1.CarregaFormasPagamento
     else
        ACBrECF1.AchaFPGIndice('') ;  // força carregar, se ainda nao o fez

{     for A1 := 0 to FormCupomFiscal.ACBrECF1.FormasPagamento.Count -1 do
     begin
        {mFormas.Lines.Add( ACBrECF1.FormasPagamento[A].Indice+' -> '+
              FormCupomFiscal.ACBrECF1.FormasPagamento[A].Descricao+' - '+IfThen(
              FormCupomFiscal.ACBrECF1.FormasPagamento[A].PermiteVinculado,'v',''));}
  //  end ;}
  end ;
  end;

procedure TFormPedidoParcela.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormPedidoParcela.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//FormCupomFiscal.Edit1.SetFocus;
 // Button1Click(Sender) ;

   Application.ProcessMessages;

   Action:=CaFree;
   FormPedidoParcela:=nil;
end;

procedure TFormPedidoParcela.FormCreate(Sender: TObject);
begin
  if FileExists('C:\SIACE\CREDIARIO.xlm') then
  begin
     DeleteFile('C:\SIACE\CREDIARIO.xlm');
  end;


  with clientDataset1 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'CREDIARIO.xlm';
  if not FileExists(filename) then
  createdataset;
  clientDataset1.IndexFieldNames:= 'DataVencimento';
  open;
  end;
end;

procedure TFormPedidoParcela.FormShow(Sender: TObject);
Var
tvenda: Real;
//Parcela:Integer;
begin
 suiButton1.Default:= False;
 suiButton2.Default:= False;
 
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);

 

CurrencyEdit1.Text:= FloatToStr(Formcupomfiscal.ValCompra);
CurrencyEdit3.Text:= FloatToStr(Formcupomfiscal.ValCompra);
Tvenda:=CurrencyEdit1.value;
//Parcela:= DM.SDS_CondPagamentoNUMERO_PAR.AsInteger;
//VP:= (Total/Parcela);
DBComboPgto.SetFocus;
//CurrencyEdit4.OnEnter;
 ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
 ClientDataset1.Delete;

// DM.SDS_Empresa.Open;
 end;

 if FormCupomFiscal.EditCodigoCli.Text = '1' then
   begin
   DBComboPgto.Text := '1';
   if DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[])= True then
    begin
     Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
    // DBComboPgtoExit(Sender);
  //  CurrencyEdit7.SetFocus;
   end;
   end;

  if FormCupomFiscal.EditCodigoCli.Text > '1' then
   begin
   DBComboPgto.Text := DM.SDS_CONFIGURACOESCOD_PAGTO_PADRAO.TEXT;
   if DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[])= True then
    begin
     Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
    // DBComboPgtoExit(Sender);
  //  CurrencyEdit7.SetFocus;
   end;
   end;
   DBComboPgto.SelectAll;
end;



procedure TFormPedidoParcela.suiButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFormPedidoParcela.suiButton3Click(Sender: TObject);
Var
DT: TDateTime;
Days: Extended;
Y: Byte;
begin

Try
DBGrid1.Enabled:= TRUE;
Days:= DM.SDS_CondPagamentoVARIACAO_DIAS.AsInteger;
DT:= (Date + DM.SDS_CondPagamentoPIMEIRA_PAR.AsInteger) - Days;
Libera_Insert := True;
DBGrid1.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines];
Y:=0;
for Y := 1 to StrToInt(DM.SDS_CondPagamentoNUMERO_PAR.Text) do
begin
if ClientDataSet1.RecordCount < Y then
ClientDataSet1.Insert
else
ClientDataSet1.Edit;
     DT:= DT +Days;
     ClientDataset1.FieldByname('CodigoCliente').AsInteger:= DM.SDS_ClientesCODIGO.AsInteger;
     ClientDataset1.FieldByname('CodigoCompra').AsInteger:= STrToInt(Formcupomfiscal.Edit2.Caption);
     ClientDataset1.FieldByname('Vendedor').AsString:=FormPrincipal.UserLogado;
     ClientDataset1.FieldByname('Historico').AsString:= 'Crediário Referente a Venda Nº '+' '+Formcupomfiscal.Edit2.caption+' - '+ Desc_cond_pagto.Text;
     ClientDataset1.FieldByname('DataCompra').AsDateTime:= Date;
     ClientDataset1.FieldByname('ValorParcela').Value:= VP;
     ClientDataset1.FieldByname('Parcela').AsString:=(IntToStr(Y)+'/'+DBEdit3.Text);
     ClientDataset1.FieldByname('DataVencimento').Value:= DT;
     ClientDataSet1.Post;
     ClientDataSet1.Next;
     ClientDataSet1.Last;
     end;
     Libera_Insert := False;
     ClientDataSet1.First;
     //suiButton3.Enabled:= False;
     suiButton2.Enabled:= True;
     suiButton2.SetFocus;

except
     FormPrincipal.MsgInformacao.HTMLText.Text := 'Erro ao Gerar as parcelas do Crediario!';
    FormPrincipal.MsgInformacao.Execute;
        Close;
end;
end;

procedure TFormPedidoParcela.ClientDataSet1BeforeInsert(DataSet: TDataSet);
begin
if Not Libera_Insert then
Abort;
end;

procedure TFormPedidoParcela.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
ClientDataSet1.First;
A:= 0;
A:= A + ClientDataSet1ValorParcela.AsFloat;
ClientDataSet1.Next;
CurrencyEdit2.Text:= FloatToStr(A);
While not ClientDataSet1.Eof do
begin
A:= A + ClientDataSet1ValorParcela.AsFloat;
ClientDataSet1.Next;
CurrencyEdit2.Text:= FloatToStr(A);
end;
ClientDataSet1.First;
end;

procedure TFormPedidoParcela.suiButton2Click(Sender: TObject);
begin
TRY
  IF DM.SDS_EmpresaCNPJ.TEXT = '08.627.602/0001-85' then
  BEGIN
  FormCupomFiscal.RbPreco1.Checked := True;
  end;

  Try
    begin
          //Desc := '%' ;
          // if rbValor.Checked then
  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
     DM.IBTransaction.StartTransaction;
     with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from crediario where crediario.codigo_compra =:venda');
         ParamByName('venda').AsString := FormCupomFiscal.Edit2.Caption;
         ExecSQL;
     end;
     DM.IBTransaction.CommitRetaining;


  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
     with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from movimento_diario where movimento_diario.codigo_venda =:venda');
         ParamByName('venda').AsString := FormCupomFiscal.Edit2.Caption;
         ExecSQL;
     end;
     DM.IBTransaction.CommitRetaining;

  if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
     with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from cheques where cheques.codigo_compra =:venda');
         ParamByName('venda').AsString :=FormCupomFiscal.Edit2.Caption;
         ExecSQL;
     end;
     DM.IBTransaction.CommitRetaining;


       if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
     with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from PEDIDOS_ITENS where codigo_ID =:venda');
         ParamByName('venda').AsString :=FormCupomFiscal.Edit2.Caption;
        ExecSQL;
     end;
     DM.IBTransaction.CommitRetaining;

   if DM.IBTransaction.Active then
     DM.IBTransaction.Commit;
    DM.IBTransaction.StartTransaction;
     with DM.IBSQL do
      begin
         Close;
         SQL.Clear;
         SQL.Add('delete from PEDIDOS where codigo =:venda');
         ParamByName('venda').AsString :=FormCupomFiscal.Edit2.Caption;
         ExecSQL;
     end;
     DM.IBTransaction.CommitRetaining;


            Desc := '$' ;

            suiButton2.Enabled := False;

            dtAux := date;
           { PG := DM.SDS_CondPagamentoPG_ECF.Text;
            IF PG = '' then
            begin
              ShowMessage('Favor Preencher o Canpo de Condições de Pagto para ECF, vá na tela de condições de pagto e altere...');
            end; }
           formCupomfiscal.ClientDataSet2.Edit;
           formCupomfiscal.ClientDataSet2VALOR_AVISTA.Text     := CurrencyEdit4.Text;
           FormCupomFiscal.ClientDataSet2VALOR_aPRAZO.Text     := CurrencyEdit2.Text;
           formCupomfiscal.ClientDataSet2.Post;

           application.ProcessMessages;


        {  FormCupomFiscal.ClientDataSet1.First;
          Contador := 0;
          Contador:=FormCupomFiscal.ClientDataSet1.RecordCount;
          i:=0;
          For I:=1 to Contador do
          begin
          FormCupomFiscal.ClientDataSet1.Edit;
          TOTAL1:= (E_Desconto.Value / Contador);
          FormCupomFiscal.ClientDataSet1DESCONTO.asfloat :=   FormCupomFiscal.ClientDataSet1Total.asfloat *  desconto / 100;
          FormCupomFiscal.ClientDataSet1.post;
          FormCupomFiscal.ClientDataSet1.Next;
          end;

          // ACHA RESTO DA DIVISÃO
          FormCupomFiscal.ClientDataSet1.First;
          Total1 := 0;
          X:= 0;
          X:= X + StrToFloatDef(FormCupomFiscal.ClientDataSet1DESCONTO.Text,0.00);
          FormCupomFiscal.ClientDataSet1.Next;
          TOTAL1 := X;
          While not FormCupomFiscal.ClientDataSet1.Eof do
          begin
          X:= X + StrToFloatDef(FormCupomFiscal.ClientDataSet1DESCONTO.Text,0.00);
          FormCupomFiscal.ClientDataSet1.Next;
          Total1:= X;
          end;
          FormCupomFiscal.ClientDataSet1.First;  }

        if E_Desconto.value > 0 then
        begin
          IF DM.SDS_CONFIGURACOESTP_DESC.Text ='T' then
          BEGIN

            Contador := 0;
            FormCupomFiscal.ClientDataSet1.First;
            Contador:=FormCupomFiscal.ClientDataSet1.RecordCount;
            For I:=1 to Contador do
            begin
            FormCupomFiscal.ClientDataSet1.Edit;
          //  TOTAL1:= (E_desconto.Value / Contador);
            desconto := FormCupomFiscal.ClientDataSet1soma.AsFloat * EdtPercentualDesconto.Value / 100;
            FormCupomFiscal.ClientDataSet1DESCONTO.AsFloat :=  ExatoCurrency(desconto,2);
            FormCupomFiscal.ClientDataSet1.post;
            FormCupomFiscal.ClientDataSet1.Next;
            end;

            // ACHA RESTO DA DIVISÃO   
            Total1 := 0;
            X:= 0;
            FormCupomFiscal.ClientDataSet1.First;
            X:= X + ExatoCurrency(FormCupomFiscal.ClientDataSet1DESCONTO.AsCurrency,2);
            FormCupomFiscal.ClientDataSet1.Next;
            TOTAL1 := ExatoCurrency(X,2);
            While not FormCupomFiscal.ClientDataSet1.Eof do
            begin
            X:= X + ExatoCurrency(FormCupomFiscal.ClientDataSet1DESCONTO.AsCurrency,2);
            FormCupomFiscal.ClientDataSet1.Next;
            Total1:= ExatoCurrency(X,2);
            end; 

          valor_desc := FloatToStr(FormCupomFiscal.ClientDataSet1DESCONTO.MaxValue);
          FormCupomFiscal.ClientDataSet1.Locate('DESCONTO',valor_desc,[loPartialKey, loCaseInsensitive]);

          total_venda := ExatoCurrency((E_desconto.Value - Total1),2);

         // ShowMessage('diferença desconto'+ FloatToStr(total_venda));

          FormCupomFiscal.ClientDataSet1.Edit;

          IF TOTAL1 > E_desconto.Value then
          begin
           FormCupomFiscal.ClientDataSet1.Edit;
           FormCupomFiscal.ClientDataSet1DESCONTO.AsCurrency := Abs(FormCupomFiscal.ClientDataSet1DESCONTO.AsCurrency - total_venda);
           FormCupomFiscal.ClientDataSet1.Post;
          end ELSE

          IF TOTAL1 < E_desconto.Value then
          begin
           FormCupomFiscal.ClientDataSet1.Edit;
           FormCupomFiscal.ClientDataSet1DESCONTO.AsCurrency := Abs(FormCupomFiscal.ClientDataSet1DESCONTO.AsCurrency + total_venda);
           FormCupomFiscal.ClientDataSet1.Post;
          end;
          end;
         end;

            CD:= Edit1.Text;
            IF CD = 'DINHEIRO' THEN BEGIN
            PG:= '01';
            PAG :='DINHEIRO';
            Tipo := 'A' ;
            end else
            IF CD = 'CREDIARIO' THEN BEGIN
            PG:= '04';
            PAG:='PRAZO';
             Tipo := 'C' ;
            end else
            IF CD = 'CHEQUE' THEN BEGIN
            PG:= '02';
            PAG:='CHEQUE';
             Tipo := 'B' ;
            end else
            IF CD = 'FINANCEIRA' THEN BEGIN
            PG:= '03';
            PAG:='CARTAO';
             Tipo := 'F' ;
            end else
            IF CD = 'VALE' THEN BEGIN
            PG:= '05';
            PAG:='VALE';
             Tipo := 'V' ;
            end;

       {    total_venda := (Total1 - E_Desconto.Value);

         // CurrencyEdit9.Value := total_venda;

          IF TOTAL1 > E_Desconto.Value then
          begin
           FormCupomFiscal.ClientDataSet1.Edit;
           FormCupomFiscal.ClientDataSet1DESCONTO.Value := FormCupomFiscal.ClientDataSet1DESCONTO.Value - total_venda;
           FormCupomFiscal.ClientDataSet1.Post;
          end ELSE

          IF TOTAL1 < E_Desconto.Value then
          begin
           FormCupomFiscal.ClientDataSet1.Edit;
           FormCupomFiscal.ClientDataSet1DESCONTO.Value := FormCupomFiscal.ClientDataSet1DESCONTO.VALUE + total_venda;
           FormCupomFiscal.ClientDataSet1.Post;
          end;    }

          {  if DM.IBTransaction.Active then
             DM.IBTransaction.Commit;
             DM.IBTransaction.StartTransaction;  }
             try
             // try
               with FormCupomFiscal.SPC_VENDA do
                begin
                 close;
                 commandtext.Clear;
                 //if bGrava then
                   //begin
                 commandtext.add('INSERT INTO PEDIDOS (CODIGO, VALOR_ITENS, ENC_FINANCEIRO, VALOR_DESCONTO, VALOR_TOTAL,'+
                               'VALOR_COMISSAO, USUARIO, DATA_PEDIDO, DATA_ENTREGA, CODIGO_CLIENTE,  NOME_CLIENTE,  PAGAMENTO,'+
                               'STATUS, SITUACAO, USUARIO_ENTREGA, TP, OBSERVACOES, COD_VENDEDOR, COD_PAGTO, N_CUPOM, N_ECF,'+
                               'COD_EMPRESA, HORA, VALOR_ACRESCIMOS, COD_ORCAMENTO, COD_PEDIDO, COD_OS, NUM_NOTA, SERIE_NOTA,'+
                               'ENDERECO, CPF_CNPJ, RG_IE, FONE, CIDADE, BAIRRO, N_PARTIDA, PROPRIEDADE, QUANT_VENDIDA, SALDO_VENDIDO,'+
                               'MED_VETERINARIO, DATA_VACINA, VALOR_AVISTA, VALOR_PRAZO, UF, COD_IBGE, CEP, NUMERO, TIPO,'+
                               'VALOR_PAGO, VALOR_TROCO, ENTREGADOR, TIPO_PEDIDO, FECHADO, MESA, REFERENCIA, CELULAR,'+
                               'PROD_RURAL, IE_PRODUTOR, VLR_PIS, VLR_COFINS, KM, CHAVE_FP, CHAVE_FP_CANCEL, CUPON_CANCELADO, CRZ)'+
                               'VALUES (:CODIGO, :VALOR_ITENS, :ENC_FINANCEIRO, :VALOR_DESCONTO, :VALOR_TOTAL, :VALOR_COMISSAO,'+
                               ':USUARIO, :DATA_PEDIDO, :DATA_ENTREGA, :CODIGO_CLIENTE, :NOME_CLIENTE, :PAGAMENTO, :STATUS, :SITUACAO,'+
                               ':USUARIO_ENTREGA, :TP, :OBSERVACOES, :COD_VENDEDOR, :COD_PAGTO, :N_CUPOM, :N_ECF, :COD_EMPRESA, :HORA,'+
                               ':VALOR_ACRESCIMOS, :COD_ORCAMENTO, :COD_PEDIDO, :COD_OS, :NUM_NOTA,:SERIE_NOTA, :ENDERECO, :CPF_CNPJ,'+
                               ':RG_IE, :FONE, :CIDADE, :BAIRRO, :N_PARTIDA, :PROPRIEDADE, :QUANT_VENDIDA, :SALDO_VENDIDO,'+
                               ':MED_VETERINARIO, :DATA_VACINA, :VALOR_AVISTA, :VALOR_PRAZO, :UF, :COD_IBGE, :CEP, :NUMERO,'+
                               ':TIPO, :VALOR_PAGO, :VALOR_TROCO, :ENTREGADOR, :TIPO_PEDIDO, :FECHADO, :MESA, :REFERENCIA, :CELULAR,'+
                               ':PROD_RURAL,  :IE_PRODUTOR, :VLR_PIS, :VLR_COFINS, :KM, :CHAVE_FP, :CHAVE_FP_CANCEL,:CUPON_CANCELADO, :CRZ)');

                 Parambyname('CODIGO').AsInteger        := strtoint(FormCupomFiscal.Edit2.Caption);
                 Parambyname('VALOR_ITENS').AsFloat     := CurrencyEdit1.value;
                 Parambyname('ENC_FINANCEIRO').AsFloat  := CurrencyEdit5.Value;
                 Parambyname('VALOR_DESCONTO').AsFloat  := E_Desconto.Value;
                 Parambyname('VALOR_TOTAL').AsFloat     := CurrencyEdit3.Value;
                 Parambyname('VALOR_COMISSAO').AsFloat  := 0;
                 Parambyname('USUARIO').Asstring        := formprincipal.UserLogado;
                 Parambyname('DATA_PEDIDO').AsDate      := Date;
                 Parambyname('DATA_ENTREGA').AsDate     := Date; //FormCupomFiscal.ClientDataset1DATA_ENTREGA.AsDateTime;
                 Parambyname('CODIGO_CLIENTE').asinteger:= StrToInt(FormCupomFiscal.EditCodigoCli.text);
                 Parambyname('NOME_CLIENTE').aSSTRING   := FormCupomFiscal.ClientDataset2NOME_CLIENTE.ASSTRING;
                 Parambyname('PAGAMENTO').AsString      := Desc_cond_pagto.Text;
                 Parambyname('STATUS').AsString         := 'A';
                 Parambyname('SITUACAO').AsString       := 'N';
                 Parambyname('USUARIO_ENTREGA').ASSTRING:= formprincipal.UserLogado;
                 Parambyname('TP').AsString             := Tipo;
                 Parambyname('OBSERVACOES').AsString    := DM.SDS_CONFIGURACOESMSG_CUPOMFISCAL.Text;
                 Parambyname('COD_VENDEDOR').AsInteger  := StrToInt(DM.SDS_UsuariosCODIGO.Text);
                 Parambyname('COD_PAGTO').AsInteger     := StrToInt(DBComboPgto.Text);
                 Parambyname('N_CUPOM').value           := null;
                 Parambyname('N_ECF').Value             := null;
                 Parambyname('COD_EMPRESA').AsInteger   := DM.SDS_EmpresaCODIGO.AsInteger;
                 Parambyname('HORA').AsString           := TimeToStr(Time);
                 Parambyname('VALOR_ACRESCIMOS').AsFloat:= CurrencyEdit5.Value;
                 Parambyname('COD_ORCAMENTO').Value     := Null;
                 Parambyname('COD_PEDIDO').Value        := Null;
                 Parambyname('COD_OS').Value            := Null;
                 Parambyname('NUM_NOTA').value          := null;
                 Parambyname('SERIE_NOTA').Value        := null;
                 Parambyname('ENDERECO').AsString       := FormCupomFiscal.ClientDataset2ENDERECO.Text;
                 Parambyname('CPF_CNPJ').AsString       := FormCupomFiscal.ClientDataset2CPF_CNPJ.Text;
                 Parambyname('RG_IE').AsString          := FormCupomFiscal.ClientDataset2RG_IE.Text;
                 Parambyname('FONE').AsString           := FormCupomFiscal.ClientDataset2FONE.Text;
                 Parambyname('CIDADE').AsString         := FormCupomFiscal.ClientDataset2CIDADE.text;
                 Parambyname('BAIRRO').AsString         := FormCupomFiscal.ClientDataset2BAIRRO.Text;
                 Parambyname('N_PARTIDA').VALUE         := null;
                 Parambyname('PROPRIEDADE').VALUE       :=  null;
                 Parambyname('QUANT_VENDIDA').VALUE     := null;
                 Parambyname('SALDO_VENDIDO').Value     := null;
                 Parambyname('MED_VETERINARIO').Value   := null;
                 Parambyname('DATA_VACINA').AsDate       := Date;
                 Parambyname('VALOR_AVISTA').AsFloat     := StrToFloatDef(FormCupomFiscal.ClientDataset2VALOR_AVISTA.text,0.00);
                 Parambyname('VALOR_PRAZO').AsFloat      := StrToFloatDef(FormCupomFiscal.ClientDataset2VALOR_APRAZO.text,0.00);
                 Parambyname('UF').AsString              := FormCupomFiscal.ClientDataset2UF.text;
                 Parambyname('COD_IBGE').AsString        := FormCupomFiscal.ClientDataset2COD_IBGE.text;
                 Parambyname('CEP').AsString             := FormCupomFiscal.ClientDataset2CEP.text;
                 Parambyname('NUMERO').AsString          := DM.SDS_ClientesNUMERO.text;
                 Parambyname('TIPO').AsString            := DM.SDS_ClientesTIPO.Text;
                 Parambyname('VALOR_PAGO').AsFloat       := CurrencyEdit4.value;
                 Parambyname('VALOR_TROCO').ASFLOAT      := StrToFloatDef(Edit62.text,0.00);
                 Parambyname('ENTREGADOR').Value         := null;
                 Parambyname('TIPO_PEDIDO').Value        := null;
                 Parambyname('FECHADO').Value            := null;
                 Parambyname('MESA').Value               := null;
                 Parambyname('REFERENCIA').Value         := null;
                 Parambyname('CELULAR').asstring         := FormCupomFiscal.ClientDataset2CELULAR.text;
                 Parambyname('PROD_RURAL').AsString      := DM.SDS_ClientesPRODUTOR_RURAL.text;
                 Parambyname('IE_PRODUTOR').AsString     := DM.SDS_ClientesINSC_PRODUTOR_RURAL.Text;
                 Parambyname('VLR_PIS').AsFloat          := 0;
                 Parambyname('VLR_COFINS').ASFLOAT       := 0;
                 Parambyname('KM').Value                 := null;
                 Parambyname('CHAVE_FP').Value           := null;
                 Parambyname('CHAVE_FP_CANCEL').Value    := null;
                 Parambyname('CUPON_CANCELADO').value    := null;
                 Parambyname('CRZ').Value                := null;

                open;
              end;
            //  DM.IBTransaction.Commit;
            { except
              DM.IBTransaction.Rollback;
              showmessage('Erro ao Gravar a Venda');
            end;   }
            finally
              FormCupomFiscal.SPC_VENDA.Close;
            end;


         FormCupomFiscal.ClientDataSet1.First;
         Contador := FormCupomFiscal.ClientDataSet1.RecordCount;
         For I:=1 to Contador do
         begin
             //LOG ESTOQUE
            { if DM.IBTransaction.Active then
               DM.IBTransaction.Commit;
            DM.IBTransaction.StartTransaction;
            try
             try
                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
                   DM.ProxCod.Open; }

                 // BUSCA ESTOQUE
               {  if dm.IBTransaction.Active then
                   dm.IBTransaction.Commit;
                dm.IBTransaction.StartTransaction; }

                {  try
                    with dm.Consulta do
                       begin
                          close;
                          sql.Clear;
                          sql.add('SELECT ESTOQUE FROM PRODUTOS WHERE CODIGO = :CODPRO');
                          Parambyname('CODPRO').AsInteger:= StrToInt(formCupomFiscal.ClientDataset1.FieldByname('Codigo').Text);
                          ExecQuery;
                          estoque:= fieldbyname('ESTOQUE').AsCurrency;
                       end;
                    dm.IBTransaction.Commit;
                  except
                    dm.IBTransaction.StartTransaction;
                    showmessage('Erro ao buscar o estoque do produto');
                  end; }

                with logEst do
                   begin
                      //close;
                      parambyname('ID_EMPRESA').AsInteger            := strtoint(dm.sds_empresacodigo.Text);
                      parambyname('ID_FILIAL').AsInteger             := strtoint(dm.sds_empresacodigo.Text);
                      parambyname('ID_AJUSTE').AsInteger             := 1;
                      Parambyname('ID_PRODUTO').AsInteger            := StrToInt(formCupomFiscal.ClientDataset1.FieldByname('Codigo').Text);
                      Parambyname('ID_LOTE').Value                   := null;
                      Parambyname('ID_PRODUTO_SERIE').Value          := null;
                      Parambyname('DATA').AsDate                     := date;
                      Parambyname('ID_USUARIO').Asinteger            := dm.sds_usuariosCodigo.AsInteger;
                      parambyname('ID_MOVIMENTO').AsInteger          :=  StrToInt(FormCupomFiscal.Edit2.Caption);
                      Parambyname('FRACAO').AsInteger                := formCupomFiscal.ClientDataset1FRACAO.AsINTEGER;
                      Parambyname('ESTOQUE_ANTERIOR').AsFMTBCD       := formCupomFiscal.ClientDataset1.FieldByname('ESTOQUE').AsBCD ;
                      Parambyname('QUANTIDADE').AsFMTBCD             := formCupomFiscal.ClientDataset1QUANTIDADE.AsBCD;
                      Parambyname('ESTOQUE_POSTERIOR').Value         :=  FormCupomFiscal.ClientDataset1.FieldByname('ESTOQUE').AsFloat - formCupomFiscal.ClientDataset1QUANTIDADE.AsFloat;
                      Parambyname('SITUACAO_ESTOQUE').ASINTEGER      := 2; //VENDA
                      Parambyname('OPERACAO').TEXT                   := '-';
                      Parambyname('ACAO_BD').TEXT                    := 'I';
                      Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
                      parambyname('COD_VENDA').AsInteger             :=  StrToInt(FormCupomFiscal.Edit2.Caption);
                      parambyname('COD_COMPRA').VALUE                :=  null;
                      Parambyname('HISTORICO').TEXT                  := 'Vda - ' + Formcupomfiscal.Edit2.Caption + '- '+ Formcupomfiscal.e_nome.caption;
                      Parambyname('HORA').AsTime                     := Time;
                      ExecProc;
                      DM.Coneccao.Commit;
                    end;

            {DM.IBTransaction.Commit;
               except
                DM.IBTransaction.Rollback;
                showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
                            'Verifique que já foi lançFDo');
              end;
            finally
             dm.logEst.Close;
             end;}

           {if DM.IBTransaction.Active then
               DM.IBTransaction.Commit;
               DM.IBTransaction.StartTransaction;
              try
               try
                with FormCupomFiscal.Spc_itensV do
                  begin
                     close;
                     sql.Clear;
                     sql.Add('INSERT INTO PEDIDOS_ITENS (CODIGO, CODIGO_ID, ITEN, CODIGO_PROD, CODIGO_PRODUTO, DESCRICAO_PRODUTO,'+
                              'PRECO_UNITARIO, DESCONTO, QUANTIDADE, PRECO_TOTAL, COMISSAO, DEV, QNT_DEV, VAL_DEV, ENC_FINANCEIRO,'+
                              'UNIDADE, SIT_TRIBUTARIA, VENDEDOR, FRACAO, COD_NCM, PROD_SERV, PERC_ISS, BASE_ISS, VL_ISS, PERC_ICM,'+
                              'BASE_ICMS, VL_ICM, PERC_IPI, BASE_IPI, VL_IPI, PERC_COFINS, BASE_COFINS, VL_COFINS, PERC_ICMS_SUBST,'+
                              'BASE_ICMS_SUBST, VL_ICMS_SUBST, PERC_PIS, BASE_PIS, VL_PIS, IMPRIME, COD_EMPRESA)'+
                              'VALUES (:CODIGO, :CODIGO_ID, :ITEN, :CODIGO_PROD, :CODIGO_PRODUTO,:DESCRICAO_PRODUTO, :PRECO_UNITARIO,'+
                              ':DESCONTO, :QUANTIDADE, :PRECO_TOTAL, :COMISSAO, :DEV, :QNT_DEV, :VAL_DEV,:ENC_FINANCEIRO, :UNIDADE,'+
                              ':SIT_TRIBUTARIA, :VENDEDOR, :FRACAO, :COD_NCM, :PROD_SERV, :PERC_ISS, :BASE_ISS, :VL_ISS, :PERC_ICM,'+
                              ':BASE_ICMS, :VL_ICM, :PERC_IPI, :BASE_IPI, :VL_IPI, :PERC_COFINS, :BASE_COFINS, :VL_COFINS, :PERC_ICMS_SUBST,'+
                              ':BASE_ICMS_SUBST, :VL_ICMS_SUBST, :PERC_PIS, :BASE_PIS, :VL_PIS, :IMPRIME, :COD_EMPRESA)');



                        parambyname('CODIGO').AsInteger             := 1; //DM.ProxCodN_CODIGO.ASINTEGER + 1;
                        Parambyname('CODIGO_ID').AsInteger          := StrToInt(FormCupomFiscal.Edit2.caption);
                        Parambyname('ITEN').AsInteger               := FormCupomFiscal.ClientDataSet1Item.AsInteger;
                        Parambyname('CODIGO_PROD').AsInteger        := StrToInt(formCupomFiscal.ClientDataset1.FieldByname('Codigo').Text);
                        Parambyname('CODIGO_PRODUTO').AsString      := FormCupomFiscal.ClientDataset1.FieldByname('CodBarras').text;
                        Parambyname('DESCRICAO_PRODUTO').AsString   := FormCupomFiscal.ClientDataset1.FieldByname('DESCRICAO').text;
                        Parambyname('PRECO_UNITARIO').AsCurrency    := formCupomFiscal.ClientDataset1.FieldByname('Preco').AsFloat;
                        Parambyname('DESCONTO').AsCurrency          := formCupomFiscal.ClientDataset1.FieldByname('Desconto').AsFloat;
                        Parambyname('QUANTIDADE').AsFloat           := FormCupomFiscal.ClientDataset1Quantidade.AsFloat;
                        Parambyname('PRECO_TOTAL').AsCurrency       := formCupomFiscal.ClientDataset1.FieldByname('SOMA').AsFloat;
                        Parambyname('COMISSAO').AsCurrency          := formCupomFiscal.ClientDataset1.FieldByname('Comissao').AsFloat;
                        Parambyname('DEV').Value                    := null;
                        Parambyname('QNT_DEV').Value                := NULL;
                        Parambyname('VAL_DEV').Value                := null;
                        Parambyname('ENC_FINANCEIRO').AsCurrency        := StrToCurrDef(FormCupomFiscal.ClientDataSet1EncFianceiro.text,0.00);
                        Parambyname('UNIDADE').AsString             := FormCupomFiscal.ClientDataSet1Desc_unidade.AsString;
                        Parambyname('SIT_TRIBUTARIA').AsString      := FormCupomFiscal.ClientDataSet1Aliquota.AsString;
                        Parambyname('VENDEDOR').AsInteger           := DM.SDS_UsuariosCODIGO.AsInteger;
                        Parambyname('FRACAO').AsInteger             := FormCupomFiscal.ClientDataset1fracao.AsInteger;
                        Parambyname('COD_NCM').AsString             := FormCupomFiscal.ClientDataset1cod_ncm.text;
                        Parambyname('PROD_SERV').AsString           := FormCupomFiscal.ClientDataset1PROD_SERV.text;
                        Parambyname('PERC_ISS').AsCurrency            := StrToCurrDef(FormCupomFiscal.ClientDataset1PERC_ISS.text,0.00);
                        Parambyname('BASE_ISS').AsCurrency              := StrToCurrDef(FormCupomFiscal.ClientDataset1BASE_ISS.text,0.00);
                        Parambyname('VL_ISS').AsCurrency                := StrToCurrDef(FormCupomFiscal.ClientDataset1VL_ISS.text,0.00);
                        Parambyname('PERC_ICM').AsCurrency            := StrToCurrDef(FormCupomFiscal.ClientDataset1PERC_ICM.text,0.00);
                        Parambyname('BASE_ICMS').AsCurrency             := StrToCurrDef(FormCupomFiscal.ClientDataset1BASE_ICMS.text,0.00);
                        Parambyname('VL_ICM').AsCurrency                := StrToCurrDef(FormCupomFiscal.ClientDataset1VL_ICM.text,0.00);
                        Parambyname('PERC_IPI').AsCurrency              := StrToCurrDef(FormCupomFiscal.ClientDataset1PERC_IPI.text,0.00);
                        Parambyname('BASE_IPI').AsCurrency             := StrToCurrDef(FormCupomFiscal.ClientDataset1BASE_IPI.text,0.00);
                        Parambyname('VL_IPI').AsCurrency                := StrToCurrDef(FormCupomFiscal.ClientDataset1VL_IPI.text,0.00);
                        Parambyname('PERC_COFINS').AsCurrency           := StrToCurrDef(FormCupomFiscal.ClientDataset1PERC_COFINS.text,0.00);
                        Parambyname('BASE_COFINS').AsCurrency           := StrToCurrDef(FormCupomFiscal.ClientDataset1BASE_COFINS.text,0.00);
                        Parambyname('VL_COFINS').AsCurrency             := StrToCurrDef(FormCupomFiscal.ClientDataset1VL_COFINS.text,0.00);
                        Parambyname('PERC_ICMS_SUBST').AsCurrency       := StrToCurrDef(FormCupomFiscal.ClientDataset1PERC_ICMS_SUBST.text,0.00);
                        Parambyname('BASE_ICMS_SUBST').AsCurrency       := StrToCurrDef(FormCupomFiscal.ClientDataset1BASE_ICMS_SUBST.text,0.00);
                        Parambyname('VL_ICMS_SUBST').AsCurrency         := StrToCurrDef(FormCupomFiscal.ClientDataset1VL_ICMS_SUBST.Text,0.00);
                        Parambyname('PERC_PIS').AsCurrency              := StrToCurrDef(FormCupomFiscal.ClientDataset1PERC_PIS.text,0.00);
                        Parambyname('BASE_PIS').AsCurrency              := StrToCurrDef(FormCupomFiscal.ClientDataset1BASE_PIS.text,0.00);
                        Parambyname('VL_PIS').AsCurrency                := StrToCurrDef(FormCupomFiscal.ClientDataset1VL_PIS.text,0.00);
                        Parambyname('IMPRIME').Value                    := null;
                        Parambyname('COD_EMPRESA').AsInteger            := DM.SDS_EmpresaCODIGO.AsInteger;

                        ExecQuery;
                   end;
                  DM.IBTransaction.Commit;
              except
                DM.IBTransaction.Rollback;
                showmessage('Erro ao Gravar os Itens da Venda');
              end;
            finally
              FormCupomFiscal.Spc_itensV.Close;
            end;}

                with Spc_itens do
                  begin
                        parambyname('CODIGO').AsInteger             := 1; //DM.ProxCodN_CODIGO.ASINTEGER + 1;
                        Parambyname('CODIGO_ID').AsInteger          := StrToInt(FormCupomFiscal.Edit2.caption);
                        Parambyname('ITEN').AsInteger               := FormCupomFiscal.ClientDataSet1Item.AsInteger;
                        Parambyname('CODIGO_PROD').AsInteger        := StrToInt(formCupomFiscal.ClientDataset1.FieldByname('Codigo').Text);
                        Parambyname('CODIGO_PRODUTO').AsString      := FormCupomFiscal.ClientDataset1.FieldByname('CodBarras').text;
                        Parambyname('DESCRICAO_PRODUTO').AsString   := FormCupomFiscal.ClientDataset1.FieldByname('DESCRICAO').text;
                        Parambyname('PRECO_UNITARIO').AsFMTBCD      := formCupomFiscal.ClientDataSet1.FieldByname('Preco').AsBCD;
                        Parambyname('DESCONTO').AsFMTBCD            := formCupomFiscal.ClientDataset1.FieldByname('Desconto').AsBCD;
                        Parambyname('QUANTIDADE').AsFMTBCD          := FormCupomFiscal.ClientDataset1.FieldByname('Quantidade').AsBCD;
                        Parambyname('PRECO_TOTAL').AsFMTBCD         := formCupomFiscal.ClientDataset1.FieldByname('SOMA').AsBCD;
                        Parambyname('COMISSAO').AsFMTBCD            := formCupomFiscal.ClientDataset1.FieldByname('Comissao').AsBCD;
                        Parambyname('DEV').Value                    := null;
                        Parambyname('QNT_DEV').Value                := NULL;
                        Parambyname('VAL_DEV').Value                := null;
                        Parambyname('ENC_FINANCEIRO').AsFMTBCD      := StrToBcd(FormCupomFiscal.ClientDataSet1EncFianceiro.text);
                        Parambyname('UNIDADE').AsString             := FormCupomFiscal.ClientDataSet1Desc_unidade.AsString;
                        Parambyname('SIT_TRIBUTARIA').AsString      := FormCupomFiscal.ClientDataSet1Aliquota.AsString;
                        Parambyname('VENDEDOR').AsInteger           := DM.SDS_UsuariosCODIGO.AsInteger;
                        Parambyname('FRACAO').AsInteger             := FormCupomFiscal.ClientDataset1fracao.AsInteger;
                        Parambyname('COD_NCM').AsString             := FormCupomFiscal.ClientDataset1cod_ncm.text;
                        Parambyname('PROD_SERV').AsString           := FormCupomFiscal.ClientDataset1PROD_SERV.text;
                        Parambyname('PERC_ISS').AsFMTBCD            := StrToBcd(FormCupomFiscal.ClientDataset1PERC_ISS.text);
                        Parambyname('BASE_ISS').AsFMTBCD              := StrToBcd(FormCupomFiscal.ClientDataset1BASE_ISS.text);
                        Parambyname('VL_ISS').AsFMTBCD                := StrToBcd(FormCupomFiscal.ClientDataset1VL_ISS.text);
                        Parambyname('PERC_ICM').AsFMTBCD              := StrToBcd(FormCupomFiscal.ClientDataset1PERC_ICM.text);
                        Parambyname('BASE_ICMS').AsFMTBCD             := StrToBcd(FormCupomFiscal.ClientDataset1BASE_ICMS.text);
                        Parambyname('VL_ICM').AsFMTBCD                := StrToBcd(FormCupomFiscal.ClientDataset1VL_ICM.text);
                        Parambyname('PERC_IPI').AsFMTBCD              := StrToBcd(FormCupomFiscal.ClientDataset1PERC_IPI.text);
                        Parambyname('BASE_IPI').AsFMTBCD              := StrToBcd(FormCupomFiscal.ClientDataset1BASE_IPI.text);
                        Parambyname('VL_IPI').AsFMTBCD                := StrToBcd(FormCupomFiscal.ClientDataset1VL_IPI.text);
                        Parambyname('PERC_COFINS').AsFMTBCD           := StrToBcd(FormCupomFiscal.ClientDataset1PERC_COFINS.text);
                        Parambyname('BASE_COFINS').AsFMTBCD           := StrToBcd(FormCupomFiscal.ClientDataset1BASE_COFINS.text);
                        Parambyname('VL_COFINS').AsFMTBCD             := StrToBcd(FormCupomFiscal.ClientDataset1VL_COFINS.text);
                        Parambyname('PERC_ICMS_SUBST').AsFMTBCD        := StrToBcd(FormCupomFiscal.ClientDataset1PERC_ICMS_SUBST.text);
                        Parambyname('BASE_ICMS_SUBST').AsFMTBCD        := StrToBcd(FormCupomFiscal.ClientDataset1BASE_ICMS_SUBST.text);
                        Parambyname('VL_ICMS_SUBST').AsFMTBCD          := StrToBcd(FormCupomFiscal.ClientDataset1VL_ICMS_SUBST.Text);
                        Parambyname('PERC_PIS').AsFMTBCD               := StrToBcd(FormCupomFiscal.ClientDataset1PERC_PIS.text);
                        Parambyname('BASE_PIS').AsFMTBCD               := StrToBcd(FormCupomFiscal.ClientDataset1BASE_PIS.text);
                        Parambyname('VL_PIS').AsFMTBCD                 := StrToBcd(FormCupomFiscal.ClientDataset1VL_PIS.text);
                        Parambyname('IMPRIME').Value                    := null;
                        Parambyname('COD_EMPRESA').AsInteger            := DM.SDS_EmpresaCODIGO.AsInteger;
                        Parambyname('ID_BICO').Value                    := null;
                        Parambyname('ID_TANQUE').Value                  := null;
                        Parambyname('ID_BOMBA').Value                   := null;
                        Parambyname('BICO').Value                       := null;
                        ExecProc;
                        DM.Coneccao.Commit;
                  end;
              FormCupomFiscal.ClientDataSet1.Next;
             end;

                   {gravar formas de pagto na tabela pedidos formas}
                   sds_pagto.Close;
                   sds_pagto.open;
                   sds_pagto.Insert;
                   sds_pagtoCOD_VENDA.AsInteger  := StrToInt(FormCupomFiscal.Edit2.Caption);
                   sds_pagtoCOD_FORMA.AsInteger  := StrToInt(PG);
                   sds_pagtoDESC_FORMA.Text      := pag;
                   IF CD = 'DINHEIRO' THEN BEGIN
                    sds_pagtoTIPO.Text            := 'A';
                    end else
                    IF CD = 'CREDIARIO' THEN BEGIN
                    sds_pagtoTIPO.Text            := 'C';
                    end else
                    IF CD = 'CHEQUE' THEN BEGIN
                    sds_pagtoTIPO.Text            := 'H';
                    end else
                    IF CD = 'FINANCEIRA' THEN BEGIN
                    sds_pagtoTIPO.Text            := 'F';
                    end else
                    IF CD = 'VALE' THEN BEGIN
                    sds_pagtoTIPO.Text            := 'V';
                    end;
                  sds_pagtoVALOR.AsFloat        := CurrencyEdit3.Value;
                  sds_pagto.Post;
                  sds_pagto.ApplyUpdates(0);


           // desc := desc * (-1); // converte para valor negativo
            if E_Desconto.Value >0 then
            BEGIN
            cAcresDesc := (E_desconto.Value *(-1));
            end else
            if CurrencyEdit5.Value >0 then
            BEGIN
            cAcresDesc := CurrencyEdit5.Value;
            end;

            //cAcresDesc      := 'D';
            cTipoAcresDesc  := desc;
            cValorAcresDesc := FormatFloat('0.00', cAcresDesc);
            cValorPago      := FormatFloat('0.00',CurrencyEdit3.Value);

            cFormaPgto1      := PG1;

            //   application.ProcessMessages;

             IF EDIT1.Text = 'DINHEIRO' then
             BEGIN
              IF CurrencyEdit4.Text > '0' then
              BEGIN
             // lancamento no caixa

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1;//DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := currencyEdit3.Value;
                    qrcaixa_mov.parambyname('valor').asfloat := currencyEdit3.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 3; // venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Ent. da Vda-CF - ' + Formcupomfiscal.Edit2.Caption + ' - em Dinh. -' + Formcupomfiscal.e_nome.caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'VEN';
                    qrcaixa_mov.parambyname('codigo_venda').AsString  := Formcupomfiscal.Edit2.caption;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

              // fim lancto no caixa
              end;
              end;

           if Edit1.Text = 'FINANCEIRA' THEN
           BEGIN
             cadastrouch := false;

             Application.CreateForm(TFrmDadosAdm, FrmDadosAdm);
             FrmDadosAdm.EdtValor.Value := CurrencyEdit4.value;
             FrmDadosAdm.EdtParcelamento.Text:= '1';
             FrmDadosAdm.Edtvalor.Value:= CurrencyEdit4.value;
             FrmDadosAdm.EdtVenda.Text := Formcupomfiscal.Edit2.caption;
             FrmDadosAdm.dt_venda.Date := Date;
             FrmDadosAdm.EdtCli.Text  := Formcupomfiscal.EditCodigoCli.Text;
             FrmDadosAdm.EdtCli1.Text := Formcupomfiscal.E_Nome.Caption ;
             FrmDadosAdm.showmodal;

             if cadastrouch = false then
             begin

             suibutton2.enabled := true;

              //LOG ESTOQUE
               if DM.IBTransaction.Active then
                 DM.IBTransaction.Commit;
              DM.IBTransaction.StartTransaction;
              try
               try
                 contador:=0;
                 e:=0;
                 Formcupomfiscal.ClientDataSet1.First;
                 Contador:=Formcupomfiscal.ClientDataSet1.RecordCount;
                 For E:=1 to Contador do
                  begin
                   {  dm.ProxCod.Close;
                     dm.ProxCod.SQL.Clear;
                     dm.ProxCod.SQL.Add('select max(ID_AJUSTE) as N_CODIGO FROM PRODUTOS_ESTOQUES_LOG');
                     DM.ProxCod.Open;  }


                   // BUSCA ESTOQUE
                  if dm.IBTransaction.Active then
                     dm.IBTransaction.Commit;
                  dm.IBTransaction.StartTransaction;

                    try
                      with dm.Consulta do
                         begin
                            close;
                            sql.Clear;
                            sql.add('SELECT ESTOQUE FROM PRODUTOS WHERE CODIGO = :CODPRO');
                            Parambyname('CODPRO').AsInteger:= Formcupomfiscal.ClientDataSet1Codigo.AsInteger;
                            ExecSQL;
                            estoque:= fieldbyname('ESTOQUE').AsCurrency;
                         end;
                      dm.IBTransaction.Commit;
                    except
                      dm.IBTransaction.StartTransaction;
                      showmessage('Erro ao buscar o custo do produto');
                    end;

                  with DM.logEst do
                     begin
                        close;
                        parambyname('ID_EMPRESA').AsInteger     := strtoint(dm.sds_empresacodigo.Text);
                        parambyname('ID_FILIAL').AsInteger      := strtoint(dm.sds_empresacodigo.Text);
                        parambyname('ID_AJUSTE').AsInteger      := 1 ;
                        Parambyname('ID_PRODUTO').AsInteger     := Formcupomfiscal.ClientDataSet1Codigo.AsInteger;
                        Parambyname('ID_LOTE').Value            := null;
                        Parambyname('ID_PRODUTO_SERIE').Value   := null;
                        Parambyname('DATA').AsDateTime          := date;
                        Parambyname('ID_USUARIO').Asinteger     := dm.sds_usuariosCodigo.AsInteger;
                        parambyname('ID_MOVIMENTO').AsInteger   :=  strtoint(Formcupomfiscal.Edit2.caption);
                        Parambyname('FRACAO').Asfloat           := Formcupomfiscal.ClientDataSet1fracao.AsINTEGER;
                        Parambyname('ESTOQUE_ANTERIOR').Asfloat := estoque;
                        Parambyname('QUANTIDADE').Asfloat       :=  Formcupomfiscal.ClientDataSet1Quantidade.AsFloat;
                        Parambyname('ESTOQUE_POSTERIOR').Asfloat := ESTOQUE + Formcupomfiscal.ClientDataSet1QUANTIDADE.AsFloat;
                        Parambyname('SITUACAO_ESTOQUE').ASINTEGER := 2; // VENDA
                        Parambyname('OPERACAO').TEXT              := '-';
                        Parambyname('ACAO_BD').TEXT               := 'E';
                        Parambyname('SITUACAO_ESTOQUE_OLD').ASINTEGER  :=  0;
                        parambyname('COD_VENDA').AsInteger      :=  strtoint(Formcupomfiscal.Edit2.caption);
                        parambyname('COD_COMPRA').VALUE         :=  null;
                        Parambyname('HISTORICO').TEXT           := copy('Exclusão da Venda No. '+Formcupomfiscal.Edit2.caption+' - '+Formcupomfiscal.E_Nome.Caption ,1,60);
                        Parambyname('HORA').AsString           := TimeToStr(Time);
                        ExecSQL;
                      end;
                      DM.IBTransaction.Commit;

                     Formcupomfiscal.ClientDataSet1.next;
                  end;
                   except
                  DM.IBTransaction.Rollback;
                  showmessage('Erro ao Gravar o log do Estoque, ' + #13 +
                              'Verifique que já foi lançFDo');
                end;
              finally
               dm.logEst.Close;
               end;

             if DM.IBTransaction.Active then
             DM.IBTransaction.Commit;
             DM.IBTransaction.StartTransaction;
             with DM.IBSQL do
              begin
                 Close;
                 SQL.Clear;
                 SQL.Add('delete from pedidos where codigo =:venda');
                 ParamByName('venda').AsInteger := strtoint(Formcupomfiscal.Edit2.caption);
                 ExecSQL;
             end;
             DM.IBTransaction.CommitRetaining;

               exit;
             end;


            { if CurrencyEdit4.Text > '0' then
              BEGIN
                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1; //DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := currencyEdit3.Value;
                    qrcaixa_mov.parambyname('valor').asfloat := currencyEdit3.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 7; // venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := 'Receb. da Vda - ' + Formcupomfiscal.EDIT2.Caption + ' - No Cartão -' + Formcupomfiscal.E_Nome.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'F';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'FIN';
                    qrcaixa_mov.parambyname('codigo_venda').AsString  := Formcupomfiscal.Edit2.Caption;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                  end;  }
            end;


          IF Edit1.Text = 'CREDIARIO' then
          begin
           if ClientDataSet1.RecordCount > 0 then
           begin
           ClientDataset1.First;
           Contador:= ClientDataset1.RecordCount;
           //For I:=1 to Contador do
           while not ClientDataSet1.Eof do
           begin
           SPC_CREDIARIO.Params[0].Value:= Formcupomfiscal.Edit2.Caption;
           SPC_CREDIARIO.Params[1].Value:=  Formcupomfiscal.EditCodigoCli.Text;
           SPC_CREDIARIO.Params[2].AsDate:= DATE;
           SPC_CREDIARIO.Params[3].AsDate:= ClientDataset1.FieldByname('DataVencimento').AsDateTime;
           SPC_CREDIARIO.Params[4].AsString:= 'Venda CF Nº'+' '+Formcupomfiscal.Edit2.Caption +' / '+ Desc_cond_pagto.Text;
           SPC_CREDIARIO.Params[5].AsString:= Formcupomfiscal.E_Usuario.Caption;
           SPC_CREDIARIO.Params[6].AsString:= 'A';
           SPC_CREDIARIO.Params[7].Value:= ClientDataset1.FieldByname('ValorParcela').Value;
           SPC_CREDIARIO.Params[8].Value:= '0';
           SPC_CREDIARIO.Params[9].Value:= '0';
           SPC_CREDIARIO.Params[10].Value:= '0';
           SPC_CREDIARIO.Params[11].Value:= '0';
           SPC_CREDIARIO.Params[12].Value:= ClientDataset1.FieldByname('Parcela').Value;
           SPC_CREDIARIO.Params[13].Value:= DM.SDS_EmpresaCODIGO.Value;
           SPC_CREDIARIO.Params[14].Value:= 'DPL';
           SPC_CREDIARIO.Params[15].Value:= Formcupomfiscal.E_Nome.caption;
           SPC_CREDIARIO.Params[16].AsString := FormatDateTime('yyyy',dtAux);
           SPC_CREDIARIO.Params[17].AsString := FormatDateTime('mm',dtAux);
           SPC_CREDIARIO.Params[18].VALUE := NULL;
           SPC_CREDIARIO.Params[19].VALUE := 0;
           SPC_CREDIARIO.Params[20].VALUE := null;
           SPC_CREDIARIO.ExecProc;
           ClientDataset1.Next;
           end;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1; // DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0;
                    qrcaixa_mov.parambyname('valor').asfloat := currencyEdit2.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AP').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 4; // venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Ent. da Vda-CF - ' + Formcupomfiscal.Edit2.Caption + ' - A PRAZO. -' + Formcupomfiscal.e_nome.caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'P';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'PRZ';
                    qrcaixa_mov.parambyname('codigo_venda').AsString  := Formcupomfiscal.Edit2.Caption;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;

              IF CurrencyEdit4.Text > '0' then
              BEGIN

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger :=1;  //DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := currencyEdit4.Value;
                    qrcaixa_mov.parambyname('valor').asfloat := currencyEdit4.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 3; // venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Ent. da Vda-CF - ' + Formcupomfiscal.Edit2.Caption + ' - em Dinh. -' + Formcupomfiscal.e_nome.caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'VEN';
                    qrcaixa_mov.parambyname('codigo_venda').AsString  := Formcupomfiscal.Edit2.Caption;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
              // fim lancto no caixa
              end;
           end;
           end;

           IF Edit1.Text = 'CHEQUE' THEN
           begin
           ClientDataset1.First;
           Contador:= ClientDataset1.RecordCount;
           For C:=1 to Contador do
           begin
          { SPC_CHEQUE.Params[0].Value:= Formcupomfiscal.Edit2.caption;
           SPC_CHEQUE.Params[1].Text:= ClientDataset1.FieldByname('Parcela').text;
           SPC_CHEQUE.Params[2].AsCurrency:= ClientDataset1.FieldByname('ValorParcela').AsCurrency;
           SPC_CHEQUE.Params[3].Text:= Formcupomfiscal.e_nome.caption;
           SPC_CHEQUE.Params[4].Text:= 'NAO';
           SPC_CHEQUE.Params[5].Text:= 'NAO';
           SPC_CHEQUE.Params[6].AsDate:= ClientDataset1.FieldByname('DataCompra').AsDateTime;
           SPC_CHEQUE.Params[7].AsDate:= ClientDataset1.FieldByname('DataVencimento').AsDateTime;
           SPC_CHEQUE.Params[8].Value:= Formcupomfiscal.E_usuario.Text;
           SPC_CHEQUE.Params[9].Text:= 'N';
           SPC_CHEQUE.Params[10].Value:= DM.SDS_EmpresaCODIGO.TEXT;
           SPC_CHEQUE.Params[11].Value:= Formcupomfiscal.EditCodigoCli.Text;
           SPC_CHEQUE.ExecProc;  }
                     if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into CHEQUES(CODIGO_COMPRA, QNT, VALOR_CHEQUE, CLIENTE, RETORNARDO, RETORNADO_PAGO,'+
                                        'DATA_CADASTRO, DATA_DEPOSITO, USUARIO_CADASTRO,  COMPENSADO, COD_EMPRESA,  COD_CLIENTE)'+
                                        'values (:CODIGO_COMPRA, :QNT, :VALOR_CHEQUE, :CLIENTE, :RETORNARDO,:RETORNADO_PAGO, :DATA_CADASTRO,'+
                                        ':DATA_DEPOSITO, :USUARIO_CADASTRO, :COMPENSADO, :COD_EMPRESA, :COD_CLIENTE)');

                     qrcaixa_mov.parambyname('CODIGO_COMPRA').AsInteger:= StrToInt(Formcupomfiscal.Edit2.Caption);
                     qrcaixa_mov.parambyname('QNT').asstring:= ClientDataset1.FieldByname('Parcela').text;
                     qrcaixa_mov.parambyname('VALOR_CHEQUE').AsCurrency:= ClientDataset1.FieldByname('ValorParcela').AsCurrency;
                     qrcaixa_mov.parambyname('CLIENTE').asstring:= FormCupomFiscal.E_NOME.Caption;
                     qrcaixa_mov.parambyname('RETORNARDO').asstring:= 'NAO';
                     qrcaixa_mov.parambyname('RETORNADO_PAGO').asstring:= 'NAO';
                     qrcaixa_mov.parambyname('DATA_CADASTRO').AsDate:= ClientDataset1.FieldByname('DataCompra').AsDateTime;
                     qrcaixa_mov.parambyname('DATA_DEPOSITO').AsDate:= ClientDataset1.FieldByname('DataVencimento').AsDateTime;
                     qrcaixa_mov.parambyname('USUARIO_CADASTRO').asstring:= Formcupomfiscal.E_usuario.Caption;
                     qrcaixa_mov.parambyname('COMPENSADO').asstring:= 'N';
                     qrcaixa_mov.parambyname('COD_EMPRESA').asstring:= DM.SDS_EmpresaCODIGO.TEXT;
                     qrcaixa_mov.parambyname('COD_CLIENTE').asstring:= Formcupomfiscal.EditCodigoCli.Text;
                     qrcaixa_mov.ExecSQL;
                     dm.IBTransaction.CommitRetaining;
           ClientDataset1.Next;
           end;
             IF CurrencyEdit4.Text > '0' then
              BEGIN

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1; //DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := currencyEdit4.Value;
                    qrcaixa_mov.parambyname('valor').asfloat := currencyEdit4.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 3; // venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Ent. da Vda-CF - ' + Formcupomfiscal.Edit2.caption + ' - em Dinh. -' + Formcupomfiscal.e_nome.caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'VEN';
                    qrcaixa_mov.parambyname('codigo_venda').AsString  := Formcupomfiscal.Edit2.caption;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
              // fim lancto no caixa
              end;


              BEGIN
             // lancamento no caixa
   
                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1; //DM.ProxCodN_CODIGO.ASINTEGER + 1;;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := currencyEdit6.Value;
                    qrcaixa_mov.parambyname('valor').asfloat := currencyEdit6.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 6; // venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto Ent. da Vda-CF - ' + Formcupomfiscal.Edit2.caption + ' - em Dinh. -' + Formcupomfiscal.e_nome.caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CHE';
                    qrcaixa_mov.parambyname('codigo_venda').AsString  := Formcupomfiscal.Edit2.caption;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
              // fim lancto no caixa
              end;

                FormCupomFiscal.Sds_cheques.Active := False;
                FormCupomFiscal.SDS_Cheques.DataSet.CommandText := 'select *  from CHEQUES where CODIGO_COMPRA >='+Formcupomfiscal.Edit2.caption+'order by CODIGO asc';
                FormCupomFiscal.Sds_Cheques.Active := true;

               If FormChequesfrente=nil then
                  begin
                  FormChequesFrente:=TFormChequesFrente.Create(self);
                  FormChequesfrente.Showmodal;
                  end;
           end;

           if Edit1.Text = 'VALE' THEN
           BEGIN
           if CurrencyEdit4.Text > '0' then
             BEGIN
          {  SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
            SPC_MOV_DIARIO.Params[2].AsString:= 'Pagto da Vda-CF  - ' + Formcupomfiscal.Edit2.caption + ' - Em Vale -' + Formcupomfiscal.e_nome.caption;
            SPC_MOV_DIARIO.Params[3].AsString:= Formcupomfiscal.E_usuario.Text;
            SPC_MOV_DIARIO.Params[4].AsString:= 'C';
            SPC_MOV_DIARIO.Params[5].Value:= currencyEdit4.Value;
            SPC_MOV_DIARIO.Params[6].Value:= 0;
            SPC_MOV_DIARIO.Params[7].Value:= null;
            SPC_MOV_DIARIO.Params[8].Value:= null;
            SPC_MOV_DIARIO.Params[9].Value:= Formcupomfiscal.Edit2.caption;
            SPC_MOV_DIARIO.Params[10].AsString:= 'VEN';
            SPC_MOV_DIARIO.ExecProc;  }

                    {dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;}

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda, cod_empresa)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda, :cod_emp)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := 1; // DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      :=  date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := currencyEdit4.Value;
                    qrcaixa_mov.parambyname('valor').asfloat := currencyEdit4.Value;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AV').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 43; // venda em dinheiro
                    qrcaixa_mov.parambyname('historico').asstring := 'Pagto da Vda-CF  - ' + Formcupomfiscal.Edit2.caption + ' - Em Vale -' + Formcupomfiscal.e_nome.caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'C';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'VEN';
                    qrcaixa_mov.parambyname('codigo_venda').AsString  := Formcupomfiscal.Edit2.caption;
                    qrcaixa_mov.parambyname('cod_emp').asINTEGER := iemp;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
              end;
            end;
           end;
           Except
            on E: EDatabaseError do
             ShowMessage(E.Message);
           end;
  Finally
    suiButton2.Enabled :=FALSE;
    Button1.Click;
  End;
end;



procedure TFormPedidoParcela.DBGrid1Exit(Sender: TObject);
begin
ClientDataSet1.First;
A:= 0;
A:= A + ClientDataSet1ValorParcela.AsFloat;
ClientDataSet1.Next;
CurrencyEdit2.Text:= FloatToStr(A);
While not ClientDataSet1.Eof do
begin
A:= A + ClientDataSet1ValorParcela.AsFloat;
ClientDataSet1.Next;
CurrencyEdit2.Text:= FloatToStr(A);
end;
ClientDataSet1.First;
end;

procedure TFormPedidoParcela.suiButton2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormPedidoParcela.CurrencyEdit4Enter(Sender: TObject);
begin
corentrada(sender);
CurrencyEdit4.SelectAll;

end;

procedure TFormPedidoParcela.suiButton4Click(Sender: TObject);
begin
if (DM.SDS_UsuariosS11.text ='N') or (DM.SDS_UsuariosS11.text ='' )then
begin
    FormPrincipal.MsgInformacao.HTMLText.Text := 'O usuário conectado não possui autorização para Alterar o Registro. Contate o Administrador do Sistema para obter acesso!!!!';
    FormPrincipal.MsgInformacao.Execute;
End;
if DM.SDS_UsuariosS11.text ='S'then
begin
Try
if FormDesbloquearCliente=nil   then
    begin
     FormDesbloquearCliente:=TFormDesbloquearCliente.Create(self);
      FormDesbloquearCliente.ComboEdit1.Text := FormCupomFiscal.EditCodigoCli.Text;
      FormDesbloquearCliente.Showmodal;
      end;
      except
       ShowMessage('Erro ao Tentar Exibir o Formulário!!');
end;
end;
end;

procedure TFormPedidoParcela.DBComboPgtoButtonClick(Sender: TObject);
var
  CD, PG : String;
begin
     CurrencyEdit1.text := FormCupomFiscal.edit62.Text;
     DBComboPgto.Clear;
     FormConsCondPagamento:=NIL;
     FormConsCondPagamento:=TFormConsCondPagamento.Create(self);
     FormConsCondPagamento.ShowModal;

     if DM.SDS_CondPagamento.RecordCount = 0 then
     begin
     FormPrincipal.MsgInformacao.HTMLText.Text := 'Não Existe Condição de Pagamento Cadastrada! Você Deve Cadastrar Uma Condição de Pagamento Para Continuar Com o Pedido';
     FormPrincipal.MsgInformacao.Execute;
     Close;
     end else

       begin

       IF DM.SDS_CondPagamentoSTATUS.Value <> 'S' THEN
        BEGIN
         FormPrincipal.MsgInformacao.HTMLText.Text := 'Condição de Pagamento Inativa no Momento! Escolha Outra Condição de Pagmaneto!';
         FormPrincipal.MsgInformacao.Execute;
        end else
        begin
        Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;
        DBComboPgto.Text:=DM.SDS_CondPagamento.Fieldbyname('CODIGO').AsString;

                       CD := DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
                       IF CD = 'A' THEN BEGIN
                       PG:= 'DINHEIRO';
                       end else
                       IF CD = 'C' THEN BEGIN
                       PG:= 'CREDIARIO';
                       end else
                       IF CD = 'H' THEN BEGIN
                       PG:= 'CHEQUE';
                       end else
                       IF CD = 'F' THEN BEGIN
                       PG:= 'FINANCEIRA';
                       end else
                       IF CD = 'V' THEN BEGIN
                       PG:= 'VALE';
                       end;

                       edit1.Text := PG;
        end;
        DBComboPgto.SetFocus;
end;

end;

procedure TFormPedidoParcela.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F2) then
      begin
      DBComboPgto.SetFocus;
      end;


if (Key=VK_F3) then
      begin
      IF  suiButton3.Enabled = TRUE THEN
      BEGIN
      suiButton3.Click;
      end;
end;

if (Key=VK_F4) then
      begin
      IF  suiButton1.Enabled = TRUE THEN
      BEGIN
      suiButton1.Click;
      end;
end;

if (Key=VK_F10) then
      begin
      IF  suiButton2.Enabled = TRUE THEN
      BEGIN
      suiButton2.Click;
      end;
end;
end;

procedure TFormPedidoParcela.DBComboPgtoEnter(Sender: TObject);
begin
 CurrencyEdit1.text := FormCupomFiscal.edit62.Text;
 suiButton2.Enabled := False;
 CurrencyEdit4.Clear;
 Edit62.Clear;
 E_Desconto.Clear;
 DBComboPgto.SelectAll;   
end;

procedure TFormPedidoParcela.suiButton3Exit(Sender: TObject);
begin
  if suiButton2.Enabled = True then
  begin
  suiButton2.SetFocus;
end;
end;

procedure TFormPedidoParcela.E_DescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
{ if Key =#13 then
 begin
 if rbValor.Checked then
  begin
  total_venda:= 0;
  total_venda := CurrencyEdit1.Value - E_Desconto.Value;
  CurrencyEdit4.Value := total_venda;
  CurrencyEdit6.Value := total_venda;


  IF Edit1.Text = 'CREDIARIO' then
  begin
  CurrencyEdit4.Value := 0;
  end ELSE
  IF Edit1.Text = 'CHEQUE' then
  begin
  CurrencyEdit4.Value := 0;
  end;
    CurrencyEdit4.SetFocus;
  end else

  if rbPercentagem.Checked then
  begin
  VENDA:=0;
  total_venda:=0;
  venda := CurrencyEdit1.Value * E_Desconto.Value /100;
  E_Desconto.value := venda;
  total_venda := CurrencyEdit1.Value - venda;
  CurrencyEdit4.Value := total_venda;
  CurrencyEdit6.Value := total_venda;

  IF Edit1.Text = 'CREDIARIO' then
  begin
  CurrencyEdit4.Value := 0;
  end ELSE
  IF Edit1.Text = 'CHEQUE' then
  begin
  CurrencyEdit4.Value := 0;
  end;
  CurrencyEdit4.SetFocus;
end;
end; }
end;

procedure TFormPedidoParcela.rbPercentagemExit(Sender: TObject);
begin
E_desconto.setfocus;
end;

procedure TFormPedidoParcela.rbValorExit(Sender: TObject);
begin
E_desconto.setfocus;
end;

procedure TFormPedidoParcela.DBComboPgtoKeyPress(Sender: TObject;
  var Key: Char);
VAR
CD, PG : String;
total_venda: Real;
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;


{ if Key=#13 then
 begin
total_venda:=0;

IF DBComboPgto.Text = '' then
  begin
    ShowMessage('Condição de pagamento nao pode estar zerada favor preencher');
    DBComboPgto.SetFocus;
  end ELSE

IF DBComboPgto.Text > '' then
  begin
  CurrencyEdit1.text := FormCupomFiscal.edit62.Text;
  E_Desconto.Value := 0;

  ClientDataset1.First;
  while not clientDataset1.EOF do
  begin
  ClientDataset1.Delete;
  end;

  if DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[]) = True then
  BEGIN
  Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;

                       CD := DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
                       IF CD = 'A' THEN BEGIN
                       PG:= 'DINHEIRO';
                       end else
                       IF CD = 'C' THEN BEGIN
                       PG:= 'CREDIARIO';
                       end else
                       IF CD = 'H' THEN BEGIN
                       PG:= 'CHEQUE';
                       end else
                       IF CD = 'F' THEN BEGIN
                       PG:= 'FINANCEIRA';
                       end else
                       IF CD = 'V' THEN BEGIN
                       PG:= 'VALE';
                       end;

                       edit1.Text := PG;

DBEdit3.Text := DM.SDS_CondPagamentoNUMERO_PAR.Text;
DBEdit4.Text := DM.SDS_CondPagamentoVARIACAO_DIAS.Text;

total_venda := CurrencyEdit1.Value;

if Edit1.Text = 'DINHEIRO' then
begin
E_Desconto.Enabled := true;
CurrencyEdit4.Value := total_venda;
// CurrencyEdit3.Value := 0;
suiButton3.Enabled := False;
E_Desconto.SetFocus;
end else

if Edit1.Text = 'FINANCEIRA' then
begin
E_Desconto.Enabled := true;
CurrencyEdit4.Value := total_venda;
// CurrencyEdit3.Value := 0;
suiButton3.Enabled := False;
E_Desconto.SetFocus;
end;
if Edit1.Text = 'CREDIARIO' then
begin
  if DM.SDS_CondPagamentoJUROS_BASE.Text = '0' then
  begin
 suiButton3.Enabled :=True;
E_desconto.Enabled := true;
 CurrencyEdit4.Value := 0;
E_desconto.SetFocus;
 end else
   if DM.SDS_CondPagamentoJUROS_BASE.Text > '0' then
   BEGIN
   E_desconto.Clear;
   E_desconto.Enabled := False;
   CurrencyEdit4.Value := 0;
   CurrencyEdit4.SetFocus;
   end;
 end else

if Edit1.Text = 'CHEQUE' then
begin
 suiButton3.Enabled :=True;
 E_desconto.Enabled := true;
 CurrencyEdit4.Value := 0;
 E_desconto.SetFocus;
       if DM.SDS_CondPagamentoJUROS_BASE.Text > '0' then
       BEGIN
       E_desconto.Clear;
       E_desconto.Enabled := False;
       CurrencyEdit4.SetFocus;
       end;
end else

       CD:= DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
       IF CD = 'C' THEN BEGIN
      { IF DM.SDS_CLIENTESPG_CREDIARIO.Value = 'N' THEN
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Próprio!';
       MSGI.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       DBComboPgto.SETFOCUS;
       end;  }

       {If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := DB_CODIGO.Text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
       Limite := (CurrencyEdit1.Value - DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat);
       Credito := (CurrencyEdit1.Value - DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);
       IF Limite > 0 THEN
       begin
       formliberaVenda :=nil;
       FormLiberaVenda:=TFormLiberaVenda.Create(self);
       FormLiberaVenda.ShowModal;
       end else
       IF Credito < 0 THEN
       begin
       formliberaVenda :=nil;
       FormLiberaVenda:=TFormLiberaVenda.Create(self);
       FormLiberaVenda.ShowModal;
       //DBComboPgto.SetFocus;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       end;
       end;
       end else

       IF CD = 'H' THEN BEGIN
      { IF DM.SDS_CLIENTESPG_CHEQUE.Value = 'N' THEN
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Cheque!';
       MSGI.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       DBComboPgto.SETFOCUS;
       if DM.SDS_CondPagamentoJUROS_BASE.Text >'0' then
       E_Desconto.Enabled := False;
       end; }

     {  If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := DB_CODIGO.Text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
       Limite := (CurrencyEdit1.Value - DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat);
       credito:=0;
       Credito := (CurrencyEdit1.Value - DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat);
       IF Limite > 0 THEN
       begin
       formliberaVenda :=nil;
       FormLiberaVenda:=TFormLiberaVenda.Create(self);
       FormLiberaVenda.ShowModal;
       end else
       IF Credito < 0 THEN
       begin
       formliberaVenda :=nil;
       FormLiberaVenda:=TFormLiberaVenda.Create(self);
       FormLiberaVenda.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       end;
       end;
       end ELSE

     {  IF CD = 'F' THEN BEGIN
       IF DM.SDS_ClientesPG_FINANCEIRA.Value = 'N' THEN
       BEGIN
       MSGI.Text:= 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
       MSGI.ShowModal;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       DBComboPgto.SETFOCUS;
       end;
       end;  }

   {  end ELSE

 if not DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[loCaseinSensitive]) then
 begin
   MessageDlg('Condição de Pagamento não Cadastrada', mtError, [mbAbort],0);
   DBComboPgto.SetFocus;
 end;
 end;
end;}
end;

procedure TFormPedidoParcela.DBComboPgtoExit(Sender: TObject);
var
CD, PG : String;
total_venda: Real;
  begin
  if DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[]) = True then
  BEGIN
  Desc_cond_pagto.Text:=DM.SDS_CondPagamento.Fieldbyname('DESCRICAO').AsString;

                       CD := DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
                       IF CD = 'A' THEN BEGIN
                       PG:= 'DINHEIRO';
                       end else
                       IF CD = 'C' THEN BEGIN
                       PG:= 'CREDIARIO';
                       end else
                       IF CD = 'H' THEN BEGIN
                       PG:= 'CHEQUE';
                       end else
                       IF CD = 'F' THEN BEGIN
                       PG:= 'FINANCEIRA';
                       end else
                       IF CD = 'V' THEN BEGIN
                       PG:= 'VALE';
                       end;

                       total_venda:=0;

IF DBComboPgto.Text = '' then
  begin
    ShowMessage('Condição de pagamento nao pode estar zerada favor preencher');
    DBComboPgto.SetFocus;
  end ELSE

IF DBComboPgto.Text > '' then
  begin
  CurrencyEdit1.text := FormCupomFiscal.edit62.Text;
  E_Desconto.Value := 0;
  EdtPercentualDesconto.Value :=0;
  ClientDataset1.First;
  while not clientDataset1.EOF do
  begin
  ClientDataset1.Delete;
  end;



 edit1.Text := PG;

DBEdit3.Text := DM.SDS_CondPagamentoNUMERO_PAR.Text;
DBEdit4.Text := DM.SDS_CondPagamentoVARIACAO_DIAS.Text;

total_venda := CurrencyEdit1.Value;



        if Edit1.Text = 'DINHEIRO' then
        begin
        E_Desconto.Enabled := true;
        CurrencyEdit4.Value := total_venda;
        // CurrencyEdit3.Value := 0;
        suiButton3.Enabled := False;
        EdtPercentualDesconto.SetFocus;
        end;

        IF PG = 'CHEQUE' THEN
        BEGIN
         IF DM.SDS_ClientesPG_CHEQUE.Value = 'N' THEN
         BEGIN
         FormPrincipal.MsgInformacao.HTMLText.Text := 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
         FormPrincipal.MsgInformacao.Execute;
         suiButton1.Enabled:= True;
         suiButton3.Enabled:= FALSE;
         DBComboPgto.SETFOCUS;
         end;

          begin
           suiButton3.Enabled :=True;
           E_desconto.Enabled := true;
           EdtPercentualDesconto.Enabled := true;
           CurrencyEdit4.Value := 0;
           E_desconto.SetFocus;
                 if DM.SDS_CondPagamentoJUROS_BASE.Text > '0' then
                 BEGIN
                 E_desconto.Clear;
                 E_desconto.Enabled := False;
                 CurrencyEdit4.SetFocus;
                 end;
          end;
         end;

      if PG = 'FINANCEIRA' THEN
        BEGIN
        IF DM.SDS_ClientesPG_FINANCEIRA.Value = 'N' THEN
        BEGIN
        FormPrincipal.MsgInformacao.HTMLText.Text := 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
         FormPrincipal.MsgInformacao.Execute;
        suiButton1.Enabled:= True;
        suiButton3.Enabled:= FALSE;
        DBComboPgto.SETFOCUS;
        end;
        IF CD = 'H' THEN BEGIN
       If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
       BEGIN
       DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := DB_CODIGO.Text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;
       Limite := (CurrencyEdit1.Value - DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat);
       credito:=0;
       Credito := (CurrencyEdit1.Value - DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat);
       IF Limite > 0 THEN
       begin
       formliberaVenda :=nil;
       FormLiberaVenda:=TFormLiberaVenda.Create(self);
       FormLiberaVenda.tag := 1;
       FormLiberaVenda.ShowModal;
                if DMC.sds_liberaAUTO_LIBERA.Text = 'N' then
                begin
                exit;
                Abort;
                 DBComboPgto.SetFocus;
                DBComboPgto.Text:='1';
                end;
       end else
       IF Credito < 0 THEN
       begin
       formliberaVenda :=nil;
       FormLiberaVenda:=TFormLiberaVenda.Create(self);
       FormLiberaVenda.tag := 1;
       FormLiberaVenda.ShowModal;
               if DMC.sds_liberaAUTO_LIBERA.Text = 'N' then
                begin
                exit;
                Abort;
                DBComboPgto.SetFocus;
                DBComboPgto.Text:='1';
                end;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       end;
       end;
       end else
        if Edit1.Text = 'FINANCEIRA' then
        begin
        E_Desconto.Enabled := true;
        CurrencyEdit4.Value := total_venda;
        // CurrencyEdit3.Value := 0;
        suiButton3.Enabled := False;
        EdtPercentualDesconto.SetFocus;
        end;
       end;

       IF PG = 'CREDIARIO' then
       BEGIN
         IF DM.SDS_ClientesPG_CREDIARIO.Value = 'N' THEN
         BEGIN
         FormPrincipal.MsgInformacao.HTMLText.Text := 'Este Cliente Está Bloqueado Para Compras no Crediário Financiado!';
         FormPrincipal.MsgInformacao.Execute;
         suiButton1.Enabled:= True;
         suiButton3.Enabled:= FALSE;
         DBComboPgto.SETFOCUS;
         end;

          CD:= DM.SDS_CondPagamentoTIPO_PAGAMENTO.AsString;
           IF CD = 'C' THEN BEGIN
           If DM.SDS_CONFIGURACOESLimite_credito.text = 'S' then
           BEGIN
           DMC.SQLD_LIMITE.Active := False;
           DMC.CDS_LIMITE.Active := False;
           DMC.SQLD_LIMITE.Params[0].AsString := DB_CODIGO.Text;
           DMC.SQLD_LIMITE.Active := True;
           DMC.CDS_LIMITE.Active := True;
           Limite := (CurrencyEdit1.Value - DMC.CDS_LIMITELIMITE_DIPONIVEL.AsFloat);
           Credito := (CurrencyEdit1.Value - DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat);
           IF Limite > 0 THEN
           begin
           formliberaVenda :=nil;
           FormLiberaVenda:=TFormLiberaVenda.Create(self);
           FormLiberaVenda.tag := 1;
           FormLiberaVenda.ShowModal;
                if DMC.sds_liberaAUTO_LIBERA.Text = 'N' then
                begin
                exit;
                Abort;
                DBComboPgto.SetFocus;
                DBComboPgto.Text:='1';
                end;
       end else
       IF Credito < 0 THEN
       begin
       formliberaVenda :=nil;
       FormLiberaVenda:=TFormLiberaVenda.Create(self);
       FormLiberaVenda.tag := 1;
       FormLiberaVenda.ShowModal;
       //DBComboPgto.SetFocus;
                if DMC.sds_liberaAUTO_LIBERA.Text = 'N' then
                begin
                exit;
                Abort;
                DBComboPgto.SetFocus;
                DBComboPgto.Text:='1';
                end;
       suiButton1.Enabled:= True;
       suiButton3.Enabled:= FALSE;
       end;
       end;
       end else
        begin
          if DM.SDS_CondPagamentoJUROS_BASE.Text = '0' then
          begin
         suiButton3.Enabled :=True;
        E_desconto.Enabled := true;
          EdtPercentualDesconto.Enabled := true;
         CurrencyEdit4.Value := 0;
          EdtPercentualDesconto.SetFocus;
         end else
           if DM.SDS_CondPagamentoJUROS_BASE.Text > '0' then
           BEGIN
           E_desconto.Clear;
           E_desconto.Enabled := False;
           EdtPercentualDesconto.Enabled := False;
           CurrencyEdit4.Value := 0;
           CurrencyEdit4.SetFocus;
           end;
         end;
       end;

   end ELSE

 if not DM.SDS_CondPagamento.Locate('CODIGO', DBComboPGTO.Text,[loCaseinSensitive]) then
 begin
   MessageDlg('Condição de Pagamento não Cadastrada', mtError, [mbAbort],0);
   DBComboPgto.SetFocus;
 end;
 end;
end;


procedure TFormPedidoParcela.E_DescontoExit(Sender: TObject);
var desc, desconto2 :Real;
  desc_M : real;
begin
{  valor := 0;
  venda := 0;
  troco := 0;
  juros := 0;
  ENC   := 0;
  Encargos :=0;

  if E_Desconto.text >'' then
  begin

 if rbValor.Checked then
 begin
  desconto  := (E_Desconto.Value * 100 / CurrencyEdit1.VALUE);
  //desc := FormatFloat('##,##0.00',desconto);
  desconto2 := DM.SDS_CONFIGURACOESDESCONTO_MAXIMO_FV.AsFloat;
  IF desconto > desconto2 then
  begin
  Application.MESSAGEBOX('Valor do Desconto Excedeu o Desconto máximo permitido,contate o administrador do sistema...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
  E_Desconto.SetFocus;
  end else

  begin
  total_venda:= 0;
  total_venda := CurrencyEdit1.Value - E_Desconto.Value;
  CurrencyEdit4.Value := total_venda;
  CurrencyEdit6.Value := total_venda;
  CurrencyEdit3.Value := total_venda;
  CurrencyEdit4.SetFocus;
  CurrencyEdit4.SelectAll;
  end;

  IF Edit1.Text = 'CREDIARIO' then
  begin
  CurrencyEdit4.Value := 0;
  CurrencyEdit4.SetFocus;
  end ELSE

  IF Edit1.Text = 'CHEQUE' then
  begin
  CurrencyEdit4.Value := 0;
  end;

  //CurrencyEdit4.SetFocus;
 end else

  if RbPercentagem.Checked then
  begin
  desc := E_Desconto.value;//StrToInt(E_Desconto.Text);
  desc_m := DM.SDS_CONFIGURACOESDESC_MAXIMO_PERC.AsCurrency;
  IF desc > desc_m then
  begin
  Application.MESSAGEBOX('Valor do Desconto Excedeu o Desconto máximo permitido,contate o administrador do sistema...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
  E_Desconto.SetFocus;
  end else  }
     if E_Desconto.Value < 0 then
      begin
         showmessage('Valor do Desconto não pode ser negativo');
         E_desconto.SetFocus;
         exit;
         abort;
      end;

   cDescontoVenda:= E_desconto.Value;
   if cDescontoVenda >= 0 then
      begin
        currencyedit3.Text:= currtostr(strtocurr(currencyedit1.Text) - cDescontoVenda);
      //  FormasComDesconto;
        total_venda:= currencyedit3.Value;
        currencyedit3.Value := total_venda;
        currencyedit6.Value := currencyedit3.Value;
        EdtPercentualDesconto.Value := E_desconto.Value * 100 / currencyedit1.Value;
      end
   else
      begin
         EdtPercentualDesconto.Clear;
        // FormasPagamento;
       CurrencyEdit4.Value:= CurrencyEdit1.Value;
      end;

   Edit62.Text:= '0';
   CurrencyEdit6.Value := CurrencyEdit1.Value;
  // DBGrid1.SetFocus;

  desconto  := (cDescontoVenda * 100 / CurrencyEdit1.Value);
  //desc := FormatFloat('##,##0.00',desconto);
  desconto2 := DM.SDS_CONFIGURACOESDESCONTO_MAXIMO_FV.AsFloat;

  IF desconto > desconto2 then
  begin
    if Application.MESSAGEBOX('Valor do Desconto máximo Excedeu, deseja libera um valor maior?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
    begin
      try
        FormLiberaDesconto:= TFormLiberaDesconto.create(nil);
        FormLiberaDesconto.showmodal;
        if FormLiberaDesconto.Tag = 0 then
        begin
          EdtPercentualDesconto.Clear;
          EdtPercentualDesconto.SetFocus;
        end;
      finally
        FreeAndNil(FormLiberaDesconto);
      end;
    end
    else
    begin
      EdtPercentualDesconto.Clear;
      EdtPercentualDesconto.SetFocus;
    end;
  end;


{  begin
  VENDA:=0;
  total_venda:=0;
  venda := CurrencyEdit1.Value * E_Desconto.Value /100;
  E_Desconto.value := venda;
  total_venda := CurrencyEdit1.Value - venda;
  CurrencyEdit4.Value := total_venda;
  CurrencyEdit6.Value := total_venda;
  CurrencyEdit3.Value := total_venda;
  CurrencyEdit4.SetFocus;
  CurrencyEdit4.SelectAll;  }
  IF Edit1.Text = 'DINHEIRO' then
  begin
   CurrencyEdit4.SetFocus;
  CurrencyEdit4.SelectAll;
  CurrencyEdit4.ValuE := CurrencyEdit3.Value;
   CurrencyEdit4.SetFocus;
  end ELSE
  IF Edit1.Text = 'CREDIARIO' then
  begin
  CurrencyEdit4.Value := 0;
   CurrencyEdit4.SetFocus;
  end ELSE

  IF Edit1.Text = 'CHEQUE' then
  begin
  CurrencyEdit4.Value := 0;
  CurrencyEdit4.SetFocus;
  end;

end;

procedure TFormPedidoParcela.E_DescontoChange(Sender: TObject);
begin
if E_Desconto.Value > 78900000 then
begin
  E_Desconto.value := 0;
end;
end;

procedure TFormPedidoParcela.CurrencyEdit4Change(Sender: TObject);
begin
if CurrencyEdit4.value > 78900000 then
begin
  CurrencyEdit4.value := CurrencyEdit1.value;
end;
end;

procedure TFormPedidoParcela.DBComboPgtoChange(Sender: TObject);
begin
 if DBComboPgto.Text > '78900000' then
begin
    DBComboPgto.text := dm.SDS_CondPagamentoCODIGO.text;
end;
end;

procedure TFormPedidoParcela.CurrencyEdit4Exit(Sender: TObject);
begin
valor := 0;
venda := 0;
troco := 0;
juros := 0;
ENC   := 0;
Encargos :=0;

// calculo de juros

valor := (currencyEdit1.Value - E_Desconto.Value);
venda :=  Valor;

juros := DM.SDS_CondPagamentoJUROS_BASE.AsCurrency;

if CurrencyEdit4.Value >= CurrencyEdit1.Value then
begin
Enc :=  (juros * venda);
Encargos := (Enc /100) - venda;
CurrencyEdit5.Value := Encargos + venda;
total_venda := (venda + Encargos);
CurrencyEdit6.Value := (total_venda);
troco := (CurrencyEdit4.Value - valor);
CurrencyEdit3.Value := (valor);
 end else

if CurrencyEdit4.Value < CurrencyEdit1.Value then
begin
troco:= 0;
Enc :=  (juros * venda);
Encargos := (Enc /100) - venda ;
CurrencyEdit5.Value := Encargos + venda ;
total_venda := (venda + Encargos + venda);

CurrencyEdit6.Value := (total_venda - CurrencyEdit4.value);

CurrencyEdit3.Value := (total_venda);
end;

Edit62.Value := troco;

entrada  := currencyEdit4.Value;
vlrvenda :=currencyEdit6.Value;
//currencyedit3.Value := (VlrVenda-entrada);
total := currencyedit6.Value;
Parcela := DM.SDS_CondPagamentoNUMERO_PAR.AsInteger;
VP:= (Total/Parcela);

 ClientDataset1.First;
 while not clientDataset1.EOF do
 begin
 ClientDataset1.Delete;
end;
 // suiButton3.SetFocus;

if Edit1.Text = 'DINHEIRO' then
begin
  suiButton3.Enabled := False;
  suiButton2.Enabled := True;
  suiButton2.SetFocus;
  end else

 if Edit1.Text = 'CREDIARIO' then
begin
  suiButton3.Enabled := True;
  suiButton2.Enabled := False;
  suiButton3.SetFocus;
  end else

  if Edit1.Text = 'CHEQUE' then
begin
  suiButton3.Enabled := True;
  suiButton2.Enabled := False;
  suiButton3.SetFocus;
  end else

  if Edit1.Text = 'FINANCEIRA' then
begin
 { suiButton3.Enabled := True;
  suiButton2.Enabled := False;
  suiButton3.SetFocus; }
  suiButton3.Enabled := False;
  suiButton2.Enabled := True;
  suiButton2.SetFocus;
end;

if edit1.Text = 'DINHEIRO' then
begin
{if CurrencyEdit4.Value < CurrencyEdit3.value  then
begin
  ShowMessage('Valor da Venda avista nao pode Ser menor que o total da venda - descontos');
  CurrencyEdit4.SetFocus;  }
   if CurrencyEdit4.Text = '' then
    begin
    Application.MESSAGEBOX('Valor da Venda avista deve ser informado...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
    CurrencyEdit4.Value := (CurrencyEdit1.Value - E_Desconto.Value);
    CurrencyEdit6.Value :=0;
    CurrencyEdit4.SetFocus;
    end else

   if CurrencyEdit4.Value < CurrencyEdit1.Value then
   begin
    E_Desconto.Value := (CurrencyEdit1.Value - CurrencyEdit4.value);

    desconto  := (E_Desconto.Value * 100 / CurrencyEdit1.VALUE);

    EdtPercentualDesconto.Value := desconto ;
  // if rbValor.Checked then
   begin

   //desc := FormatFloat('##,##0.00',desconto);
    desconto2 := DM.SDS_CONFIGURACOESDESCONTO_MAXIMO_FV.AsFloat;
    IF desconto > desconto2 then
    begin
    Application.MESSAGEBOX('Valor do Desconto Excedeu o Desconto máximo permitido,contate o administrador do sistema...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
    CurrencyEdit4.SetFocus;
    end ELSE

    CurrencyEdit5.Value := 0;

    CurrencyEdit6.Value := 0;

    CurrencyEdit3.Value := (CurrencyEdit1.Value - E_Desconto.value);


    suiButton3.Enabled := False;
    suiButton2.Enabled := True;
    suiButton2.SetFocus;


  {  if rbPercentagem.Checked then
    begin
    desc := e_DESCONTO.VALUE; //StrToInt(CurrencyEdit7.Text);
    desc_m := DM.SDS_CONFIGURACOESDESC_MAXIMO_PERC.AsCurrency;
    IF desc > desc_m then
     begin
     Application.MESSAGEBOX('Valor do Desconto Excedeu o Desconto máximo permitido,contate o administrador do sistema...', 'Aviso...', MB_ICONEXCLAMATION + MB_OK + MB_DEFBUTTON1);
      CurrencyEdit4.SetFocus;
    end else }

    CurrencyEdit5.Value := 0;

    CurrencyEdit6.Value := 0;

    CurrencyEdit3.Value := (CurrencyEdit1.Value - E_Desconto.value);


    suiButton3.Enabled := False;
    suiButton2.Enabled := True;
    suiButton2.SetFocus;

    end;
     end else
     if CurrencyEdit4.Value >= CurrencyEdit1.Value then
     begin
    suiButton3.Enabled := False;
    suiButton2.Enabled := True;
    suiButton2.SetFocus;
    end;
end;
 // suiButton3.Default := True;
end;


procedure TFormPedidoParcela.EdtPercentualDescontoExit(Sender: TObject);
begin
 if EdtPercentualDesconto.Value < 0 then
      begin
         showmessage('Valor do Desconto não pode ser negativo');
         EdtPercentualDesconto.SetFocus;
         exit;
         abort;
      end;
     // venda:=0;
   if EdtPercentualDesconto.Value > 0 then
      begin
         cDescontoVenda := 0;
         cDescontoVenda        := strtocurr(currtostrf((strtocurr(CurrencyEdit1.Text) * strtocurr(EdtPercentualDesconto.text)) / 100, ffFixed, 2));
         E_Desconto.Text := currtostr(cDescontoVenda);
         if cDescontoVenda > 0 then
            begin
              CurrencyEdit3.VALUE:= (CurrencyEdit3.Value - cDescontoVenda);
              // FormasComDesconto;
              venda:= CurrencyEdit3.Value;
              CurrencyEdit4.Value := CurrencyEdit3.Value;
            end;
         Edit62.Text := '0';
         CurrencyEdit6.Value := venda;
         CurrencyEdit3.Value :=  CurrencyEdit6.Value;
         CurrencyEdit4.Value := venda;
         E_Desconto.SetFocus;
      end
   else
      begin
         E_Desconto.Clear;
         cDescontoVenda:= 0;
         //FormasPagamento;

        // CurrencyEdit4.Value := CurrencyEdit1.Value;
          E_Desconto.SetFocus;


  IF Edit1.Text = 'DINHEIRO' then
  begin
   CurrencyEdit4.SetFocus;
  CurrencyEdit4.SelectAll;
  CurrencyEdit4.ValuE := CurrencyEdit3.Value;
  CurrencyEdit3.Value := CurrencyEdit1.Value;
  CurrencyEdit6.Value := CurrencyEdit3.Value;
   CurrencyEdit4.SetFocus;
  end ELSE
  IF Edit1.Text = 'CREDIARIO' then
  begin
  CurrencyEdit4.Value := 0;
    CurrencyEdit3.Value := CurrencyEdit1.Value;
  CurrencyEdit6.Value := CurrencyEdit3.Value;
   CurrencyEdit4.SetFocus;
  end ELSE

  IF Edit1.Text = 'CHEQUE' then
  begin
  CurrencyEdit4.Value := 0;
    CurrencyEdit3.Value := CurrencyEdit1.Value;
  CurrencyEdit6.Value := CurrencyEdit3.Value;
  CurrencyEdit4.SetFocus;
  end;
      end;
end;

procedure TFormPedidoParcela.FXduplicataGetValue(const VarName: String;
  var Value: Variant);
begin
if varname = 'extenso' then
value := FormatFloat('R$ #,##0.00 - ',dmc.SDS_Crediario_ContratoVALOR_COMPRA.AsFloat)+' '+extenso(dmc.SDS_Crediario_ContratoVALOR_COMPRA.asfloat);
end;

end.
