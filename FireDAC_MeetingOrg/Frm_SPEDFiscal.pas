unit Frm_SPEDFiscal;

{$IFDEF FPC}
  {$mode objfpc}{$H+}
{$ENDIF}

interface

uses
{$IFNDEF FPC}
  Windows, Messages,
{$ENDIF}
  SysUtils, Variants, Classes, Graphics, Controls, Forms, ACBrEFDBlocos,
  Dialogs, StdCtrls, ACBrSpedFiscal, ExtCtrls, ComCtrls, ACBrUtil, ACBrTXTClass,
  Mask, FMTBcd, DB, DBClient, SimpleDS, SqlExpr, Grids, XDBGrids,
  RzButton, SUIButton, Provider, DBGrids, Math,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ACBrBase, RxCurrEdit, RxToolEdit;

type
  
  { TFrmSPEDFiscal }

  TFormSPEDFiscal = class(TForm)
    cbConcomitante: TCheckBox;
    edBufNotas: TEdit;
    edNotas: TEdit;
    edBufLinhas: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    memoError: TMemo;
    edtFile: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    memoTXT: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    ProgressBar1: TProgressBar;
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    ComboBox1: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    ComboBox2: TComboBox;
    Label11: TLabel;
    SP_CLIENTES1: TSQLStoredProc;
    SP_FORNECEDORES: TSQLStoredProc;
    SDS_PARTICIPANTES: TSimpleDataSet;
    SDS_PARTICIPANTESCOD_SPED: TIntegerField;
    SDS_PARTICIPANTESNOME: TStringField;
    SDS_PARTICIPANTESIE: TStringField;
    SDS_PARTICIPANTESCNPJ_CPF: TStringField;
    SDS_PARTICIPANTESCOD_MUNICIPIO: TStringField;
    SDS_PARTICIPANTESLOGRADOURO: TStringField;
    SDS_PARTICIPANTESNUMERO: TIntegerField;
    SDS_PARTICIPANTESCOMPLEMENTO: TStringField;
    SDS_PARTICIPANTESBAIRRO: TStringField;
    SDS_PARTICIPANTESSUFRAMA: TStringField;
    SDS_PARTICIPANTESPAIS: TStringField;
    SDS_PARTICIPANTESCOD_CLIENTE: TIntegerField;
    SDS_PARTICIPANTESCOD_FORNECEDOR: TIntegerField;
    SDS_PARTICIPANTESCOD_EMPRESA: TIntegerField;
    SDS_PARTICIPANTESTIPO: TStringField;
    Label12: TLabel;
    ComboBox3: TComboBox;
    Panel3: TPanel;
    EvDateEdit1: TDateEdit;
    EvDateEdit2: TDateEdit;
    CheckBox1: TCheckBox;
    SP_GERA_PRODUTOS_NFE: TSQLStoredProc;
    SP_GERA_PRODUTOS_NOTA: TSQLStoredProc;
    SP_GERA_PRODUTOS_INV: TSQLStoredProc;
    SP_GERA_PRODUTOS_CUPOM: TSQLStoredProc;
    Label13: TLabel;
    btnTXT: TRzBitBtn;
    btnError: TRzBitBtn;
    btnB_0: TRzBitBtn;
    btnB_C: TRzBitBtn;
    btnB_D: TRzBitBtn;
    btnB_E: TRzBitBtn;
    btnB_H: TRzBitBtn;
    btnB_1: TRzBitBtn;
    btnB_G: TRzBitBtn;
    btnB_9: TRzBitBtn;
    SPC_DEL_PRODUTOS: TSQLStoredProc;
    RzBitBtn1: TRzBitBtn;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label14: TLabel;
    Label15: TLabel;
    GroupBox1: TGroupBox;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    suiButton2: TsuiButton;
    OpenDialog1: TOpenDialog;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    suiButton1: TsuiButton;
    OpenDialog2: TOpenDialog;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    SP_GERA_UNIDADES: TSQLStoredProc;
    RzBitBtn2: TRzBitBtn;
    DTS_PEDIDOS: TDataSource;
    dsdts_pedidos_itens: TDataSource;
    SDS_PEDIDOS_ITENS: TSimpleDataSet;
    CheckBox9: TCheckBox;
    SDS_PEDIDOS_ITENSCODIGO: TIntegerField;
    SDS_PEDIDOS_ITENSCODIGO_ID: TIntegerField;
    SDS_PEDIDOS_ITENSITEN: TIntegerField;
    SDS_PEDIDOS_ITENSCODIGO_PROD: TIntegerField;
    SDS_PEDIDOS_ITENSCODIGO_PRODUTO: TStringField;
    SDS_PEDIDOS_ITENSDESCRICAO_PRODUTO: TStringField;
    SDS_PEDIDOS_ITENSPRECO_UNITARIO: TFMTBCDField;
    SDS_PEDIDOS_ITENSDESCONTO: TFMTBCDField;
    SDS_PEDIDOS_ITENSQUANTIDADE: TFMTBCDField;
    SDS_PEDIDOS_ITENSPRECO_TOTAL: TFMTBCDField;
    SDS_PEDIDOS_ITENSCOMISSAO: TFMTBCDField;
    SDS_PEDIDOS_ITENSDEV: TStringField;
    SDS_PEDIDOS_ITENSQNT_DEV: TFMTBCDField;
    SDS_PEDIDOS_ITENSVAL_DEV: TFMTBCDField;
    SDS_PEDIDOS_ITENSENC_FINANCEIRO: TFMTBCDField;
    SDS_PEDIDOS_ITENSUNIDADE: TStringField;
    SDS_PEDIDOS_ITENSSIT_TRIBUTARIA: TStringField;
    SDS_PEDIDOS_ITENSVENDEDOR: TIntegerField;
    SDS_PEDIDOS_ITENSFRACAO: TIntegerField;
    SDS_PEDIDOS_ITENSCOD_NCM: TStringField;
    SDS_PEDIDOS_ITENSPROD_SERV: TStringField;
    SDS_PEDIDOS_ITENSPERC_ISS: TFMTBCDField;
    SDS_PEDIDOS_ITENSBASE_ISS: TFMTBCDField;
    SDS_PEDIDOS_ITENSVL_ISS: TFMTBCDField;
    SDS_PEDIDOS_ITENSPERC_ICM: TFMTBCDField;
    SDS_PEDIDOS_ITENSBASE_ICMS: TFMTBCDField;
    SDS_PEDIDOS_ITENSVL_ICM: TFMTBCDField;
    SDS_PEDIDOS_ITENSPERC_IPI: TFMTBCDField;
    SDS_PEDIDOS_ITENSBASE_IPI: TFMTBCDField;
    SDS_PEDIDOS_ITENSVL_IPI: TFMTBCDField;
    SDS_PEDIDOS_ITENSPERC_COFINS: TFMTBCDField;
    SDS_PEDIDOS_ITENSBASE_COFINS: TFMTBCDField;
    SDS_PEDIDOS_ITENSVL_COFINS: TFMTBCDField;
    SDS_PEDIDOS_ITENSPERC_ICMS_SUBST: TFMTBCDField;
    SDS_PEDIDOS_ITENSBASE_ICMS_SUBST: TFMTBCDField;
    SDS_PEDIDOS_ITENSVL_ICMS_SUBST: TFMTBCDField;
    SDS_PEDIDOS_ITENSPERC_PIS: TFMTBCDField;
    SDS_PEDIDOS_ITENSBASE_PIS: TFMTBCDField;
    SDS_PEDIDOS_ITENSVL_PIS: TFMTBCDField;
    SDS_PEDIDOS_ITENSIMPRIME: TStringField;
    SDS_PEDIDOS_ITENSCOD_EMPRESA: TIntegerField;
    SDS_PEDIDOS: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    QRY_PEDIDOS: TSQLQuery;
    QRY_PEDIDOSVALOR_DESCONTO: TFMTBCDField;
    QRY_PEDIDOSCODIGO: TIntegerField;
    QRY_PEDIDOSVALOR_ITENS: TFMTBCDField;
    QRY_PEDIDOSENC_FINANCEIRO: TFMTBCDField;
    QRY_PEDIDOSVALOR_TOTAL: TFMTBCDField;
    QRY_PEDIDOSVALOR_COMISSAO: TFMTBCDField;
    QRY_PEDIDOSUSUARIO: TStringField;
    QRY_PEDIDOSDATA_PEDIDO: TDateField;
    QRY_PEDIDOSDATA_ENTREGA: TDateField;
    QRY_PEDIDOSCODIGO_CLIENTE: TIntegerField;
    QRY_PEDIDOSNOME_CLIENTE: TStringField;
    QRY_PEDIDOSPAGAMENTO: TStringField;
    QRY_PEDIDOSSTATUS: TStringField;
    QRY_PEDIDOSSITUACAO: TStringField;
    QRY_PEDIDOSUSUARIO_ENTREGA: TStringField;
    QRY_PEDIDOSTP: TStringField;
    QRY_PEDIDOSOBSERVACOES: TStringField;
    QRY_PEDIDOSCOD_VENDEDOR: TIntegerField;
    QRY_PEDIDOSCOD_PAGTO: TIntegerField;
    QRY_PEDIDOSN_CUPOM: TStringField;
    QRY_PEDIDOSN_ECF: TStringField;
    QRY_PEDIDOSCOD_EMPRESA: TIntegerField;
    QRY_PEDIDOSHORA: TTimeField;
    QRY_PEDIDOSVALOR_ACRESCIMOS: TFMTBCDField;
    QRY_PEDIDOSCOD_ORCAMENTO: TIntegerField;
    QRY_PEDIDOSCOD_PEDIDO: TIntegerField;
    QRY_PEDIDOSCOD_OS: TSmallintField;
    QRY_PEDIDOSNUM_NOTA: TIntegerField;
    QRY_PEDIDOSSERIE_NOTA: TStringField;
    QRY_PEDIDOSENDERECO: TStringField;
    QRY_PEDIDOSCPF_CNPJ: TStringField;
    QRY_PEDIDOSRG_IE: TStringField;
    QRY_PEDIDOSFONE: TStringField;
    QRY_PEDIDOSCIDADE: TStringField;
    QRY_PEDIDOSBAIRRO: TStringField;
    QRY_PEDIDOSN_PARTIDA: TStringField;
    QRY_PEDIDOSPROPRIEDADE: TStringField;
    QRY_PEDIDOSQUANT_VENDIDA: TFMTBCDField;
    QRY_PEDIDOSSALDO_VENDIDO: TFMTBCDField;
    QRY_PEDIDOSMED_VETERINARIO: TStringField;
    QRY_PEDIDOSDATA_VACINA: TDateField;
    QRY_PEDIDOSVALOR_AVISTA: TFMTBCDField;
    QRY_PEDIDOSVALOR_PRAZO: TFMTBCDField;
    QRY_PEDIDOSUF: TStringField;
    QRY_PEDIDOSCOD_IBGE: TStringField;
    QRY_PEDIDOSCEP: TStringField;
    QRY_PEDIDOSNUMERO: TStringField;
    QRY_PEDIDOSTIPO: TStringField;
    QRY_PEDIDOSVALOR_PAGO: TFMTBCDField;
    QRY_PEDIDOSVALOR_TROCO: TFMTBCDField;
    QRY_PEDIDOSENTREGADOR: TStringField;
    QRY_PEDIDOSTIPO_PEDIDO: TStringField;
    QRY_PEDIDOSFECHADO: TStringField;
    QRY_PEDIDOSMESA: TStringField;
    QRY_PEDIDOSREFERENCIA: TStringField;
    QRY_PEDIDOSCELULAR: TStringField;
    QRY_PEDIDOSPROD_RURAL: TStringField;
    QRY_PEDIDOSIE_PRODUTOR: TStringField;
    QRY_PEDIDOSVLR_PIS: TFMTBCDField;
    QRY_PEDIDOSVLR_COFINS: TFMTBCDField;
    QRY_PEDIDOSKM: TIntegerField;
    QRY_PEDIDOSCHAVE_FP: TStringField;
    QRY_PEDIDOSCHAVE_FP_CANCEL: TStringField;
    SDS_PEDIDOSVALOR_DESCONTO: TFMTBCDField;
    SDS_PEDIDOSCODIGO: TIntegerField;
    SDS_PEDIDOSVALOR_ITENS: TFMTBCDField;
    SDS_PEDIDOSENC_FINANCEIRO: TFMTBCDField;
    SDS_PEDIDOSVALOR_TOTAL: TFMTBCDField;
    SDS_PEDIDOSVALOR_COMISSAO: TFMTBCDField;
    SDS_PEDIDOSUSUARIO: TStringField;
    SDS_PEDIDOSDATA_PEDIDO: TDateField;
    SDS_PEDIDOSDATA_ENTREGA: TDateField;
    SDS_PEDIDOSCODIGO_CLIENTE: TIntegerField;
    SDS_PEDIDOSNOME_CLIENTE: TStringField;
    SDS_PEDIDOSPAGAMENTO: TStringField;
    SDS_PEDIDOSSTATUS: TStringField;
    SDS_PEDIDOSSITUACAO: TStringField;
    SDS_PEDIDOSUSUARIO_ENTREGA: TStringField;
    SDS_PEDIDOSTP: TStringField;
    SDS_PEDIDOSOBSERVACOES: TStringField;
    SDS_PEDIDOSCOD_VENDEDOR: TIntegerField;
    SDS_PEDIDOSCOD_PAGTO: TIntegerField;
    SDS_PEDIDOSN_CUPOM: TStringField;
    SDS_PEDIDOSN_ECF: TStringField;
    SDS_PEDIDOSCOD_EMPRESA: TIntegerField;
    SDS_PEDIDOSHORA: TTimeField;
    SDS_PEDIDOSVALOR_ACRESCIMOS: TFMTBCDField;
    SDS_PEDIDOSCOD_ORCAMENTO: TIntegerField;
    SDS_PEDIDOSCOD_PEDIDO: TIntegerField;
    SDS_PEDIDOSCOD_OS: TSmallintField;
    SDS_PEDIDOSNUM_NOTA: TIntegerField;
    SDS_PEDIDOSSERIE_NOTA: TStringField;
    SDS_PEDIDOSENDERECO: TStringField;
    SDS_PEDIDOSCPF_CNPJ: TStringField;
    SDS_PEDIDOSRG_IE: TStringField;
    SDS_PEDIDOSFONE: TStringField;
    SDS_PEDIDOSCIDADE: TStringField;
    SDS_PEDIDOSBAIRRO: TStringField;
    SDS_PEDIDOSN_PARTIDA: TStringField;
    SDS_PEDIDOSPROPRIEDADE: TStringField;
    SDS_PEDIDOSQUANT_VENDIDA: TFMTBCDField;
    SDS_PEDIDOSSALDO_VENDIDO: TFMTBCDField;
    SDS_PEDIDOSMED_VETERINARIO: TStringField;
    SDS_PEDIDOSDATA_VACINA: TDateField;
    SDS_PEDIDOSVALOR_AVISTA: TFMTBCDField;
    SDS_PEDIDOSVALOR_PRAZO: TFMTBCDField;
    SDS_PEDIDOSUF: TStringField;
    SDS_PEDIDOSCOD_IBGE: TStringField;
    SDS_PEDIDOSCEP: TStringField;
    SDS_PEDIDOSNUMERO: TStringField;
    SDS_PEDIDOSTIPO: TStringField;
    SDS_PEDIDOSVALOR_PAGO: TFMTBCDField;
    SDS_PEDIDOSVALOR_TROCO: TFMTBCDField;
    SDS_PEDIDOSENTREGADOR: TStringField;
    SDS_PEDIDOSTIPO_PEDIDO: TStringField;
    SDS_PEDIDOSFECHADO: TStringField;
    SDS_PEDIDOSMESA: TStringField;
    SDS_PEDIDOSREFERENCIA: TStringField;
    SDS_PEDIDOSCELULAR: TStringField;
    SDS_PEDIDOSPROD_RURAL: TStringField;
    SDS_PEDIDOSIE_PRODUTOR: TStringField;
    SDS_PEDIDOSVLR_PIS: TFMTBCDField;
    SDS_PEDIDOSVLR_COFINS: TFMTBCDField;
    SDS_PEDIDOSKM: TIntegerField;
    SDS_PEDIDOSCHAVE_FP: TStringField;
    SDS_PEDIDOSCHAVE_FP_CANCEL: TStringField;
    SP_GERA_ITENS_NFC: TSQLStoredProc;
    SP_CLIENTES_NFE: TSQLStoredProc;
    SDS_PEDIDOS_ITENSID_BICO: TIntegerField;
    SDS_PEDIDOS_ITENSID_TANQUE: TStringField;
    SDS_PEDIDOS_ITENSID_BOMBA: TStringField;
    SDS_PEDIDOS_ITENSBICO: TStringField;
    RzBitBtn3: TRzBitBtn;
    Totais: TFDQuery;
    SP_CLIENTES: TFDStoredProc;
    procedure btnB_0Click(Sender: TObject);
    procedure btnB_9Click(Sender: TObject);
    procedure btnTXTClick(Sender: TObject);
    procedure btnB_1Click(Sender: TObject);
    procedure btnB_CClick(Sender: TObject);
    procedure btnB_DClick(Sender: TObject);
    procedure btnB_EClick(Sender: TObject);
    procedure btnB_HClick(Sender: TObject);
    procedure btnErrorClick(Sender: TObject);
    procedure edtFileChange(Sender: TObject);
    procedure cbConcomitanteClick(Sender: TObject);
    procedure ACBrSPEDFiscal1Error(const MsnError: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnB_GClick(Sender: TObject);
    procedure MostraErros(Sender: Tobject;  E: Exception);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    
  private
     procedure LoadToMemo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSPEDFiscal: TFormSPEDFiscal;
  inicio, final :string;
  cArquivoMFD, cArquivoTXT, cDataInicial, cDataFinal, cPerfil,
  cCFOP, cCODOBSFiscal, cAliqPIS, cAliqCOFINS, cEmpresa, cCodMunicipio : STRING;
  ValorC190,ValorC500: Currency;



implementation

uses ModulodeDados, ModuleDados1, Z_DeclaracoesBemaFi32, Principal,
  ACBrEFDBloco_1_Class, ACBrEFDBloco_D, ACBrEFDBloco_C,
  ACBrEFDBloco_C_Class, ACBrEFDBloco_E;

{$IFDEF FPC}
 {$R *.lfm}
{$ELSE}
 {$R *.dfm}
{$ENDIF}

function TrimChar(texto: string; delchar: char): string;
var
S: string;
begin
S := texto;
while Pos(delchar,S) > 0 do
Delete(S,Pos(delchar,S),1);
Result := S;
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

procedure TFormSPEDFiscal.MostraErros(Sender: Tobject;
  E: Exception);
var
msg : string;
I, X: integer;
begin          //Verifica se o erro apresentado ocorre na base de dados
  If E is EdatabaseError then
  begin        //For para varrer o tamanho da mensagem
      for I := 1 To Length(e.Message) Do
          begin    //if para verificar o fim da mensagem definido pelo caracter '|'
            if (e.Message[I] = '|') then       //gravando posição do caracter indicativo
                  X := I;
          END;
              msg := copy(e.Message, 0, 1);
              //APRESENTANDO A MENSAGEM AO USUARIO
       MessageBox(Application.Handle, PChar(Msg), 'Erro', MB_OK + MB_ICONERROR);
   end

   //APRESENTANDO ERRO SEM FORMATÇÃO SE NÃO FOR ERRO DA BASE DE DADOS
   ELSE
   MessageBox(Application.Handle, PChar(e.Message), 'Erro', MB_OK + MB_ICONERROR);
 end;





procedure TFormSPEDFiscal.btnB_0Click(Sender: TObject);

const
strUNID: array[0..4] of string = ('PC', 'UN', 'LT', 'PC', 'MT');

var
dtaux : TDateTime;
CONTADOR, A,B,C,D,E,F,G,H : Integer;
ValorTeste1,ValorTeste2: Currency;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco 0.
   Label4.Caption:='Inicio da Geração dos dados....';
   ProgressBar1.Visible := True;
   ProgressBar1.Max     := ACBrSpedFiscal1.Bloco_0.Registro0200Count;
   ProgressBar1.Position:= 0 ;

   dtAux := (StrToDate(EvDateEdit1.Text));

   dm.SDS_Unidades.Active := false;
   DM.SDS_Unidades.Active := True;
   dm.SDS_Empresa.Active := False;
   dm.SDS_Empresa.Active := true;
   DM.SDS_Clientes.Filtered := False;

DM.qrcfop.Active := False;
DM.qrcfop.sql.Clear;
DM.qrcfop.sql.add('select * from TABELA_CFOP');
DM.qrcfop.Active := true;

   DM.SDS_CONFIGURACOES.Active := False;
   DM.SDS_CONFIGURACOES.Active := True;

   cbConcomitante.Enabled := False ;
   btnB_0.Enabled := false;
   btnB_C.Enabled := True ;


   if cbConcomitante.Checked then
   begin
      with ACBrSpedFiscal1 do
      begin
         DT_INI := EvDateEdit1.Date;//StrToDate('01/07/2009');
         DT_FIN := EvDateEdit2.Date;// StrToDate('31/07/2009');
         LinhasBuffer := StrToIntDef( edBufLinhas.Text, 0 );

         IniciaGeracao;
      end;

      LoadToMemo;
   end;

    Label4.Caption:='Geração dos Dados da Empresa....';

   with ACBrSpedFiscal1.Bloco_0 do
   begin
      // Dados da Empresa

      with Registro0000New do
      begin
         if ComboBox1.ItemIndex = 0 then
         begin
         COD_VER    := vlVersao100;
         end else
         if ComboBox1.ItemIndex = 1 then
         begin
         COD_VER    := vlVersao101;
         end else
         if ComboBox1.ItemIndex = 2 then
         begin
         COD_VER    := vlVersao102;
         end else
         if ComboBox1.ItemIndex = 3 then
         begin
         COD_VER    := vlVersao103;
         end else
         if ComboBox1.ItemIndex = 4 then
         begin
         COD_VER    := vlVersao104;
         end else
         if ComboBox1.ItemIndex = 5 then
         begin
         COD_VER    := vlVersao105;
         end;
         if ComboBox1.ItemIndex = 6 then
         begin
         COD_VER    := vlVersao106;
         end;
         if ComboBox1.ItemIndex = 7 then
         begin
         COD_VER    := vlVersao107;
         end;
         if ComboBox1.ItemIndex = 8 then
         begin
         COD_VER    := vlVersao108;
         end;
         if ComboBox1.ItemIndex = 9 then
         begin
         COD_VER    := vlVersao109;
         end;
         if ComboBox1.ItemIndex = 10 then
         begin
         COD_VER    := vlVersao110;
         end;
                
         if ComboBox2.ItemIndex = 0 then
         begin
         COD_FIN    := raOriginal;
         end else
         if ComboBox2.ItemIndex = 1 then
         begin
         COD_FIN    := raSubstituto;
         end;
         NOME       := dm.SDS_EmpresaRAZAO_SOCIAL.Text;//'NOME DA EMPRESA';
         if Length(RemoveChar(dm.SDS_EmpresaCNPJ.Text)) = 14 then
         begin
         CNPJ       := removechar(DM.SDS_EmpresaCNPJ.Text);
         end else
         begin
         CNPJ := '';
         end;
         if Length(removechar(dm.SDS_EmpresaCNPJ.Text)) = 11 then
         begin
         CPF        := removechar(dm.SDS_EmpresaCNPJ.text);
         end else
         begin
         Cpf := '';
         end;
         UF         := dm.SDS_EmpresaUF.Text;
         IE         := removechar(DM.SDS_EmpresaIE.Text);//'082260133';
         COD_MUN    := dm.SDS_EmpresaCOD_CID_IBGE.AsInteger;
         IM         := dm.SDS_EmpresaIM.Text;
         SUFRAMA    := '';
         if ComboBox3.ItemIndex = 0 then
         begin
         IND_PERFIL := pfPerfilA;
         end else
         if ComboBox3.ItemIndex = 1 then
         begin
         IND_PERFIL := pfPerfilB;
         end else
         if ComboBox3.ItemIndex = 2 then
         begin
         IND_PERFIL := pfPerfilC;
         end;
         IND_ATIV   := atOutros;
      end;

      with Registro0001New do
      begin
         IND_MOV := imComDados;

         // FILHO - Dados complementares da Empresa
         with Registro0005New do
         begin
            FANTASIA   := Trim(dm.SDS_EmpresaNOME_FANTASIA.Text);//'NOME FANTASSIA';
            CEP        := removechar(DM.SDS_Empresacep.Text);
            ENDERECO   := Trim(dm.SDS_EmpresaENDERECO.Text); //'ENDEREÇO DA EMPRESA';
            NUM        := Formatar(dm.SDS_EmpresaNUMERO.Text,2,false,'0');//'S/N';
            COMPL      := '';
            BAIRRO     := Trim(DM.SDS_EmpresaBAIRRO.Text);
            FONE       := removechar(DM.SDS_EmpresaTELEFONE.Text);
            FAX        := removechar(dm.SDS_EmpresaFAX.Text);
            EMAIL      := Trim(dm.SDS_EmpresaEMAIL.Text);
            end;

         {   // tiver substituicao tributaria
         with Registro0015New do
         begin
         UF_ST :='';
         IE_ST :='';
         end;
                 }

         // FILHO - Dados do contador.
         with Registro0100New do
         begin
            NOME       := Trim(dm.SDS_EmpresaNOME_CONTADOR.Text);//'NOME DO CONTADOR';
            CPF        := removechar(DM.SDS_EmpresaCPF_CONTADOR.Text);//'12345678900'; // Deve ser uma informação valida
            CRC        := dm.SDS_EmpresaCRC_CONTADOR.Text;//'123456';
            CNPJ       := removechar(dm.SDS_EmpresaCNPJ_CONTADOR.Text);
            CEP        := removechar(dm.SDS_EmpresaCEP_CONTADOR.Text);
            ENDERECO   := Trim(dm.SDS_EmpresaENDERECO_CONTADOR.text);
            NUM        := Formatar(dm.SDS_EmpresaNUM_CONTADOR.Text,2,False,'0');
            COMPL      := Trim(DM.SDS_EmpresaCOMPL_CONTADOR.Text);
            BAIRRO     := Trim(DM.SDS_EmpresaBAIRRO_CONTADOR.text);
            FONE       := removechar(DM.SDS_EmpresaFONE_CONTADOR.text);
            FAX        := removechar(dm.SDS_EmpresaFAX_CONTADOR.text);
            EMAIL      := Trim(DM.SDS_EmpresaEMAIL_CONTADOR.text);
            COD_MUN    := DM.SDS_EmpresaCOD_IBGE_CONTADOR.AsInteger;
         end;
//          Check(Reg0001.Registro0190.LocalizaRegistro(UNID), '(0-0190) UNIDADE MEDIDA: A unidade de medida "%s" foi duplicada na lista de registros 0190!', [UNID]);

           if CheckBox9.Checked = True then
           begin
             SP_GERA_UNIDADES.execproc;
           end;
           
            // GERA Clientes
            SDS_PARTICIPANTES.Active := False;
            SDS_PARTICIPANTES.Active := TRUE;

            Label4.Caption:='Geração dos Dados dos Participantes....';

            SDS_PARTICIPANTES.First;
            // with SDS_PARTICIPANTES do
            while not SDS_PARTICIPANTES.Eof do
            begin
            SDS_PARTICIPANTES.Delete;
            // SDS_PARTICIPANTES.Next;
            SDS_PARTICIPANTES.ApplyUpdates(0);
            end;
            SDS_PARTICIPANTES.Last;


          { SP_GERA_CLIENTES.Close;
           SP_GERA_CLIENTES.Params[0].Text     :=  FormatDateTime('mm',dtAux);
           SP_GERA_CLIENTES.Params[1].Text     :=  FormatDateTime('yyyy',dtAux);
           SP_GERA_CLIENTES.ExecSQL;}

           SP_CLIENTES.Params[0].Text     :=  FormatDateTime('mm',dtAux);
           SP_CLIENTES.Params[1].Text     :=  FormatDateTime('yyyy',dtAux);
           SP_CLIENTES.Prepare();
           SP_CLIENTES.ExecProc();
           DM.Coneccao.Commit;

           SP_FORNECEDORES.Params[0].Text :=  FormatDateTime('mm',dtAux);
           SP_FORNECEDORES.Params[1].Text :=  FormatDateTime('yyyy',dtAux);
           SP_FORNECEDORES.execproc;

         {  SP_CLIENTES_NFE.Params[0].Text :=  FormatDateTime('mm',dtAux);
           SP_CLIENTES_NFE.Params[1].Text :=  FormatDateTime('yyyy',dtAux);
           SP_CLIENTES_NFE.Execproc;  }

           SDS_PARTICIPANTES.Active := False;
           SDS_PARTICIPANTES.Active := TRUE;

           
           if SDS_PARTICIPANTES.Locate('cod_municipio', '', []) = True then
           begin
             ShowMessage('Codigo do ibge nao localizado para o participante:' +#13+
                          SDS_PARTICIPANTESNOME.text);
           end else
           begin
           SDS_PARTICIPANTES.First;
           CONTADOR := 0;
           CONTADOR :=  SDS_PARTICIPANTES.RecordCount;
           For A:=1 to Contador do
           begin
            with Registro0150New do
            begin
               COD_PART := SDS_PARTICIPANTESCOD_SPED.Text;//IntToStr(int0150);
               NOME     := Trim(SDS_PARTICIPANTESNOME.AsString);
               COD_PAIS := '1058';
               if SDS_PARTICIPANTESTIPO.Text = 'J' then
               begin
               CNPJ     := removechar(SDS_PARTICIPANTESCNPJ_CPF.text);
               IE       := removechar(SDS_PARTICIPANTESIE.Text);
               end else
               if SDS_PARTICIPANTESTIPO.Text = 'F' then
               begin
               CPF      := removechar(SDS_PARTICIPANTESCNPJ_CPF.text);
               IE       := '';
               end;
               COD_MUN  := SDS_PARTICIPANTESCOD_Municipio.AsInteger;
               SUFRAMA  := '';
               ENDERECO := Trim(SDS_PARTICIPANTESlogradouro.text);
               NUM      := Formatar(SDS_PARTICIPANTESNUMERO.text,2,False,'0');
               COMPL    := Trim(SDS_PARTICIPANTESCOMPLEMENTO.text);
               BAIRRO   := Trim(SDS_PARTICIPANTESBairro.text);
               SDS_PARTICIPANTES.Next;

             { // FILHO - 5 Alterações para cada cliente
                  with Registro0175New do
                  begin
                     //DT_ALT   := '';//Date + int0175;
                    // NR_CAMPO := '';//IntToStr(int0175);
                    // CONT_ANT := ''; + IntToStr(int0175);
                  end;
                  }     
             //  end;
           //  end;
              end;
             end;
             end;
         // FILHO
         // 4 Unidades de medida
         // Const strUNID, esta declarada no inicio deste evento.
         //for int0190 := Low(strUNID) to High(strUNID) do
         //begin
          //  if not Registro0190.LocalizaRegistro(strUNID[int0190]) then
            //begin


          { SDS_PRODUTOS.Active := False;
            SDS_PRODUTOS.Active := TRUE;


            SDS_PRODUTOS.First;
            while not SDS_PRODUTOS.Eof do
            begin
            SDS_PRODUTOS.Delete;
            SDS_PRODUTOS.ApplyUpdates(0);
            end;
            SDS_PRODUTOS.Last;  }

           Label4.Caption:='Geração dos dados dos cadastro de produtos....';


           if CheckBox8.Checked = True then
           begin

           SPC_DEL_PRODUTOS.execproc;

           if CheckBox7.Checked = True then
           begin
          // SP_GERA_PRODUTOS_CUPOM.Params[0].Text :=  FormatDateTime('mm',dtAux);
          // SP_GERA_PRODUTOS_CUPOM.Params[1].Text :=  FormatDateTime('yyyy',dtAux);
           SP_GERA_PRODUTOS_CUPOM.Params[0].AsDate :=  DT_INI;
           SP_GERA_PRODUTOS_CUPOM.Params[1].asdate :=  DT_FIN;
           SP_GERA_PRODUTOS_CUPOM.execproc;
           end;

           if CheckBox6.Checked = True then
           begin
           SP_GERA_ITENS_NFC.Params[0].AsDate :=  DT_INI;
           SP_GERA_ITENS_NFC.Params[1].AsDate :=  DT_FIN;
           SP_GERA_ITENS_NFC.execproc;

           SP_GERA_PRODUTOS_NFE.Params[0].AsDate :=  DT_INI;
           SP_GERA_PRODUTOS_NFE.Params[1].AsDate :=  DT_FIN;
           SP_GERA_PRODUTOS_NFE.execproc;
           end;
           if CheckBox5.Checked = True then
           begin
           SP_GERA_PRODUTOS_NOTA.Params[0].AsDate :=  DT_INI;
           SP_GERA_PRODUTOS_NOTA.Params[1].AsDate :=  DT_FIN;
           SP_GERA_PRODUTOS_NOTA.Execproc;
           end;

           IF CheckBox1.Checked = True then
           begin
           SP_GERA_PRODUTOS_INV.Params[0].AsDate :=  DT_INI;
           SP_GERA_PRODUTOS_INV.Params[1].AsDate :=  DT_FIN;
           SP_GERA_PRODUTOS_INV.Execproc;
           end;
           end;

              DM1.SDS_UNIDADES.Close;
              DM1.SDS_UNIDADES.Params[0].AsDate :=  DT_INI;
              DM1.SDS_UNIDADES.Params[1].AsDate :=  DT_FIN;
              DM1.SDS_UNIDADES.Open;

              
              DM1.SDS_UNIDADES.First;
              CONTADOR :=0;
              CONTADOR :=  DM1.SDS_Unidades.RecordCount;
              For B:=1 to Contador do
               begin
               with Registro0190New do
               begin
                  UNID  := dm1.SDS_UnidadesABREVIATURA.Text;//DM1.SDS_UnidadesCODIGO.Text;//strUNID[int0190];
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'UN') THEN
                  BEGIN
                  DESCR := 'UNIDADE';
                  end else
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'UND') THEN
                  BEGIN
                  DESCR := 'UNIDADES';
                  end else
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'KG')  THEN
                  BEGIN
                  DESCR := 'KILOGRAMA';
                  end else
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'JG')  THEN
                  BEGIN
                  DESCR := 'JOGO';
                  end else
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'PC') OR (dm1.SDS_UnidadesABREVIATURA.Text = 'pc') THEN
                  BEGIN
                  DESCR := 'PECA';
                  end else
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'PCT')  THEN
                  BEGIN
                  DESCR := 'PACOTE';
                  end else
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'CX')  THEN
                  BEGIN
                  DESCR := 'CAIXA';
                  end else
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'LT')  THEN
                  BEGIN
                  DESCR := 'LATA';
                  end else
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'L')  THEN
                  BEGIN
                  DESCR := 'LITRO';
                  end else
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'PT')  THEN
                  BEGIN
                  DESCR := 'POTE';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'GL')  THEN
                  BEGIN
                  DESCR := 'GALAO';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'RL')  THEN
                  BEGIN
                  DESCR := 'ROLO';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'CJ')  THEN
                  BEGIN
                  DESCR := 'CONJUNTO';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'MT')  THEN
                  BEGIN
                  DESCR := 'METRO';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'ML')  THEN
                  BEGIN
                  DESCR := 'MILILITRO';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'PCA')  THEN
                  BEGIN
                  DESCR := 'PECAS';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'CXA')  THEN
                  BEGIN
                  DESCR := 'CAIXAS';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'FD')  THEN
                  BEGIN
                  DESCR := 'FARDO';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'FR')  THEN
                  BEGIN
                  DESCR := 'FRASCO';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'FRC')  THEN
                  BEGIN
                  DESCR := 'FRASCOS';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'CT')  THEN
                  BEGIN
                  DESCR := 'CENTO';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'VD')  THEN
                  BEGIN
                  DESCR := 'VIDRO';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'TB')  THEN
                  BEGIN
                  DESCR := 'TUBO';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'PT')  THEN
                  BEGIN
                  DESCR := 'POTE';
                  end ELSE
                   IF (dm1.SDS_UnidadesABREVIATURA.Text = 'POT')  THEN
                  BEGIN
                  DESCR := 'POTES';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'BLT')  THEN
                  BEGIN
                  DESCR := 'BLISTER';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'BL')  THEN
                  BEGIN
                  DESCR := 'BALDE';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = '1')  THEN
                  BEGIN
                  DESCR := 'UM';
                  end ELSE
                  IF (dm1.SDS_UnidadesABREVIATURA.Text = 'FC')  THEN
                  BEGIN
                  DESCR := 'FRASCO';
                  end ELSE
                  begin
                  DESCR := dm1.SDS_UnidadesABREVIATURA.Text;
                  end;
                  DM1.SDS_Unidades.Next;
               end;
              end;


            // FILHO
            begin
            DM1.SDS_PRODUTOS.Active:=False;
            DM1.SDS_PRODUTOS.DataSet.CommandText:='SELECT  V_SPED_PRODUTOS.*, UNIDADES.ABREVIATURA  FROM  V_SPED_PRODUTOS '+
                                          'LEFT JOIN UNIDADES ON (V_SPED_PRODUTOS.UNIDADE=UNIDADES.CODIGO) WHERE ANO = '+ QuotedStr(FormatDateTime('yyyy',dtAux)) +
                                          ' AND V_SPED_PRODUTOS.MES = ' + QuotedStr(FormatDateTime('mm',dtAux));
            DM1.SDS_PRODUTOS.Active:=True;

            DM1.SDS_PRODUTOS.First;
            CONTADOR:= 0;
            CONTADOR :=  DM1.SDS_PRODUTOS.RecordCount;
            For C:=1 to Contador do
            with Registro0200New do
            begin
            COD_ITEM      := DM1.SDS_PRODUTOSCODIGO.AsString;//removechar(DM1.SDS_PRODUTOSCOD_BARRAS.text);
            DESCR_ITEM    := Trim(DM1.SDS_PRODUTOSDESCRICAO.AsString);
            COD_BARRA     := '';///removechar(FormatFloat(DM1.SDS_PRODUTOSCOD_BARRAS.Text,0000000000000));
            COD_ANT_ITEM  := '';
            UNID_INV      := DM1.SDS_PRODUTOSABREVIATURA.Text;
            TIPO_ITEM     := DM1.SDS_PRODUTOSTIPO_ATIVIDADE.CurValue;
            COD_NCM       := DM1.SDS_PRODUTOSCOD_NCM.Text;
            EX_IPI        := '';
            if  DM1.SDS_PRODUTOSCOD_NCM.Text >'' then
            COD_GEN       := Formatar(DM1.SDS_PRODUTOScod_NCM.Text,2,True,'0')
            else
            COD_GEN       := '';
            COD_LST       := '';
            ALIQ_ICMS     := 0;
            CEST          := DM1.SDS_PRODUTOSCEST.AsString;
            DM1.SDS_PRODUTOS.Next;
            end;

            {
            // CODIGO DO COMBUSTIVEL CONF ANP  DEVE SER GERADOS SOMENTE POR PRODUTORES E DISTRIBUIDORES
            with Registro0206New do
            begin
             COD_COMB := '';
            end;
                   }
           {
            with Registro0220New do
            begin
           //  UNID_CONV  := '';
           //  FAT_CONV   := '';
            end;
           }
            // TABELA NATUREZA DA OPERACAO - CFOP


        {   dm1.sds_bens.Active := False;
           dm1.sds_bens.Active := TRUE;
           dm1.sds_bens.First;
           contador:=0;
           CONTADOR :=  dm1.sds_bens.RecordCount;
          // CADASTRO DE BENS OU COMPONENTES DO ATIVO IMOBILIZADO
           for D := 1 to Contador do
           begin
            // 10 Bens Imobilizados
            with Registro030NEW do
            begin
               COD_IND_BEM := FormatFloat('000000', DM1.Sds_bensCODIGO.value);
               IDENT_MERC  := dm1.Sds_bensIDENTIF_MERC.AsInteger;
               DESCR_ITEM  := DM1.Sds_bensDESC_BEM.Text;
               COD_PRNC    := DM1.Sds_bensCOD_PRINCIPAL.text;
               COD_CTA     := DM1.Sds_bensCOD_CONTA.text;
               NR_PARC     := DM1.Sds_bensN_PARCELAS.AsInteger;
               dm1.sds_bens.Next;
            end;



               dm1.Sds_bens_utilizacao.Active := False;
               dm1.Sds_bens_utilizacao.Active := TRUE;
              {//  INFORMAÇÃO SOBRE A UTILIZAÇÃO DO BEM
               dm1.Sds_bens_utilizacao.First;
               contador:=0;
               CONTADOR :=  dm1.Sds_bens_utilizacao.RecordCount;
              // CADASTRO DE BENS OU COMPONENTES DO ATIVO IMOBILIZADO
               for E := 1 to Contador do
                begin }
         {        dm1.Sds_bens_utilizacao.First;
                 with Registro0305New do
                 begin
                  COD_CCUS     := dm1.Sds_bens_utilizacaoCOD_CENT_CUSTO.AsString;
                  FUNC         := dm1.Sds_bens_utilizacaoFUNCAO.Text;
                  VIDA_UTIL    := dm1.Sds_bens_utilizacaoVIDA_UTIL.AsInteger;
                  dm1.Sds_bens_utilizacao.Next;
               end;
               end;  }

                 {
               DM.SDS_CFOP.First;
               CONTADOR:= 0;
               CONTADOR :=  DM.SDS_CFOP.RecordCount;
               For F:=1 to Contador do
               begin
               with Registro0400New do
               begin
               COD_NAT  := DM.SDS_CFOPCODIGO_CFOP.TEXT;
               DESCR_NAT := DM.SDS_CFOPDESCRICAO.TEXT;
               DM.SDS_CFOP.Next;
               end;
               end;

               //TABELA DE INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL
               with Registro0450New do
               begin
               COD_INF  := '1';
               TXT      := DM.SDS_CONFIGURACOESMSG_CUPOMFISCAL.Text;
               end;

               // TABELA DE OBSERVAÇÕES DO LANÇAMENTO FISCAL
               with Registro0460New do
               begin
               COD_OBS   := '1';
               TXT      := DM.SDS_CONFIGURACOESMSG_CUPOMFISCAL.Text;
               end;
                      }

             end;


               DM.SDS_PlContas.Active := False;
               DM.SDS_PlContas.Active := true;
               // PLANO DE CONTAS CONTÁBEIS

               Label4.Caption:='Geração dos dados do Plano de Contas....';

               DM.SDS_PlContas.First;
               CONTADOR:= 0;
               CONTADOR :=  DM.SDS_PlContas.RecordCount;
               For G:=1 to Contador do
               begin
               with Registro0500New do
               begin
                 DT_ALT     := DM.SDS_PlContasDATACAD.AsDateTime;
                 COD_NAT_CC := DM.SDS_PlContasCOD_NATUREZA.Text;
                 IND_CTA    := DM.SDS_PlContasINDICADOR.TEXT;
                 NIVEL      := DM.SDS_PlContasNIVEL_CTA.TEXT;
                 COD_CTA    := TrimChar(DM.SDS_PlContasCOD_COMPLETO.TEXT,' ');                NOME_CTA   := DM.SDS_PlContasNOME.TEXT;
                 DM.SDS_PlContas.next;
               end;
               end;

               DM1.Sds_CentroCusto.Active := False;
               DM1.Sds_CentroCusto.Active := True;
               // CENTRO DE CUSTOS DO IMOBILIZADO
               DM1.Sds_CentroCusto.First;
               CONTADOR:= 0;
               CONTADOR :=  DM1.Sds_CentroCusto.RecordCount;
               For H:=1 to Contador do
               begin
               with Registro0600New do
               begin
                 DT_ALT   := DM1.Sds_CentroCustoDATA_CAD.AsDateTime;
                 COD_CCUS := DM1.Sds_CentroCustoCOD_CENTRO.AsString; // CODIGO DO CENTRO DE CUSTOS
                 CCUS     := DM1.Sds_CentroCustoDESCRICAO.Text;
                 DM1.Sds_CentroCusto.Next;
               end;
               end;

              Label4.Caption:='Bloco 0 Gerado com Sucesso....';
            end;

           end;


   if cbConcomitante.Checked then
   begin
      ACBrSPEDFiscal1.WriteBloco_0;
      LoadToMemo;
   end;
end;

procedure TFormSPEDFiscal.btnB_9Click(Sender: TObject);
begin
   btnB_9.Enabled := False ;
   ACBrSPEDFiscal1.WriteBloco_9;
   LoadToMemo;

   // Habilita os botões
   btnB_0.Enabled := true;
   btnB_1.Enabled := true;
   btnB_C.Enabled := true;
   btnB_D.Enabled := true;
   btnB_E.Enabled := true;
   btnB_H.Enabled := true;

   cbConcomitante.Enabled := True ;
end;

procedure TFormSPEDFiscal.btnTXTClick(Sender: TObject);
begin
   btnTXT.Enabled := False ;

   ACBrSPEDFiscal1.LinhasBuffer := StrToIntDef( edBufLinhas.Text, 0 );

   with ACBrSpedFiscal1 do
   begin
     DT_INI := EvDateEdit1.Date;//StrToDate('01/07/2009');
     DT_FIN := EvDateEdit2.Date;// StrToDate('31/07/2009');
   end;

   // Limpa a lista de erros.
   memoError.Lines.Clear;
   // Informa o pata onde será salvo o arquivo TXT.
   //   ACBrSpedFiscal1.Path := '.\Arquivo Sped TXT\';
   
   // Método que gera o arquivo TXT.
   ACBrSpedFiscal1.SaveFileTXT ;

   // Carrega o arquivo TXT no memo.
   LoadToMemo;

   // Habilita os botões
   btnB_0.Enabled := true;
   btnB_1.Enabled := true;
   btnB_C.Enabled := true;
   btnB_D.Enabled := true;
   btnB_E.Enabled := true;
   btnB_H.Enabled := true;
   btnTXT.Enabled := True ;
   cbConcomitante.Enabled := True ;
end;

procedure TFormSPEDFiscal.btnErrorClick(Sender: TObject);
begin
   with ACBrSpedFiscal1 do
   begin
      DT_INI := EvDateEdit1.Date;//StrToDate('01/07/2009');
      DT_FIN := EvDateEdit2.Date;// StrToDate('31/07/2009');
      end;

   // Limpa a lista de erros.
   memoError.Lines.Clear;

   // Método que gera o arquivo TXT.
   ACBrSpedFiscal1.SaveFileTXT ;

   // Habilita os botões
   btnB_0.Enabled := true;
   btnB_1.Enabled := true;
   btnB_C.Enabled := true;
   btnB_D.Enabled := true;
   btnB_E.Enabled := true;
   btnB_H.Enabled := true;
   btnB_G.Enabled := true;
end;

procedure TFormSPEDFiscal.btnB_1Click(Sender: TObject);
var
  contador, i : Integer;
begin

   btnB_1.Enabled := false;
   btnB_9.Enabled := cbConcomitante.Checked ;

   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco 1.

 with ACBrSpedFiscal1.Bloco_1 do
   begin
      with Registro1001New do
      begin
      IND_MOV := imSemDados;

      if ComboBox1.ItemIndex >= 5 then
      BEGIN
        IND_MOV := imComDados;

      //  DM1.CDS_CARTOES_1600.Active := FALSE;
         with DM1.CDS_CARTOES_1600 do
         begin
            close;
            Parambyname('DATAI').AsDate:= EvDateEdit1.Date;
            Parambyname('DATAF').AsDate:= EvDateEdit2.Date;
            Open;
         end;
      //  DM1.CDS_CARTOES_1600.ACTIVE := TRUE;

      with Registro1010New do
      begin
       IND_EXP     := 'N';
       IND_CCRF    := 'N';
       if DM.SDS_EmpresaTIPO_SEGMENTO.TEXT = '3' then
       IND_COMB    := 'S'  // POSTO DE COMBUSTIVEL
       else
       IND_COMB    := 'N';
       IND_USINA   := 'N';
       IND_VA      := 'N';
       IND_EE      := 'N';
       IF not DM1.CDS_CARTOES_1600.EOF  THEN
       IND_CART    := 'S'
       else
       IND_CART    := 'N';
       IND_FORM    := 'N';
       IND_AER     := 'N';
      end;

      end;
    {
      // MOVIMENTAÇÃO DIÁRIA DE COMBUSTÍVEIS
      with Registro1300New do
      begin
        COD_ITEM     := 1;     //codigo do itten Registro1310 0200
        DT_FECH      := Date;  // Data do fechamento da movimentação
        ESTQ_ABERT   := 1;     // Estoque no inicio do dia, em litros
        VOL_ENTR     := 1;     //Volume Recebido no dia (em litros)
        VOL_DISP     := 100;   //Volume Disponível (04 + 05), em litros
        VOL_SAIDAS   := 12;   // Volume Total das Saídas, em litros
        ESTQ_ESCR    := 100;  // Estoque Escritural (06 – 07), litros
        VAL_AJ_PERDA := 0;    // Valor da Perda, em litros
        VAL_AJ_GANHO := 0;    // Valor do ganho, em litros
        FECH_FISICO  := 100;  // Estoque de Fechamento, em litros
      end;

      // MOVIMENTAÇÃO DIÁRIA DE COMBUSTÍVEIS POR TANQUE
      with Registro1310New do
      begin
      NUM_TANQUE   := 1;  // numero do tanque
      ESTQ_ABERT   :=
      VOL_ENTR     :=
      VOL_DISP     :=
      VOL_SAIDAS   :=
      ESTQ_ESCR    :=
      VAL_AJ_PERDA :=
      VAL_AJ_GANHO :=
      FECH_FISICO  :=
      end;

      // VOLUME DE VENDAS  combustiveis
      with Registro1320New do
      begin
      NUM_BICO
      NR_INTERV
      MOT_INTERV
      NOM_INTERV
      CNPJ_INTERV
      CPF_INTERV
      VAL_FECHA
      VAL_ABERT
      VOL_AFERI
      VOL_VENDAS
      end;

       // BOMBAS
      with Registro1350New do
      begin
      SERIE        :=
      FABRICANTE   :=
      MODELO       :=
      TIPO_MEDICAO := 0;
      end;

      //  LACRES DA BOMBA
      with Registro1360New do
      begin
      NUM_LACRE
      DT_APLICACAO
      end;

       with Registro1370New do
      begin
      NUM_BICO
      COD_ITEM
      NUM_TANQUE
      end;   }
      end;

      with Registro1600New do
      begin
            DM1.CDS_CARTOES_1600.First;
            Contador:=DM1.CDS_CARTOES_1600.RecordCount;
            For I:=1 to Contador do
            begin
               COD_PART     :=  DM1.CDS_CARTOES_1600COD_SPED.Text;
               IF DM1.CDS_CARTOES_1600CODIGO_BANDEIRA.TEXT = '2' then
               TOT_CREDITO  :=  DM1.CDS_CARTOES_1600VALOR.ASFLOAT
                ELSE
               TOT_CREDITO  := 0;
               IF DM1.CDS_CARTOES_1600CODIGO_BANDEIRA.TEXT = '1' then
               TOT_DEBITO   := DM1.CDS_CARTOES_1600VALOR.AsFloat
               else
               TOT_DEBITO   := 0;

               DM1.CDS_CARTOES_1600.Next;
              end;
      end;

   if cbConcomitante.Checked then
   begin
      ACBrSPEDFiscal1.WriteBloco_1;
      LoadToMemo;
   end;
end;
end;

procedure TFormSPEDFiscal.btnB_CClick(Sender: TObject);
var
INotas, contador, CONT, INotas1, NNotas1, IItens1 : Integer;
IItens, LItens: Integer;
NNotas, MNotas: Integer;
BNotas, A, B,C, D, E, F, G: Integer;
modelo, valor_desc, valor_total :string;
desc, total, v_desc, v_total : Real;
begin
  ValorC190:= 0;
  ValorC500:= 0;
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco C.
   btnB_C.Enabled := false;
   btnB_D.Enabled := True ;
   btnB_E.Enabled := True ;

   inicio:=datetostr(DATE);
   final:=datetostr(DATE);

   inicio:=EvDateEdit1.Text;
   final:=EvDateEdit2.Text;


   //NNotas := StrToInt64Def(edNotas.Text,1);
   BNotas := StrToInt64Def(edBufNotas.Text,1);

   ProgressBar1.Visible := cbConcomitante.Checked ;
   ProgressBar1.Max     := NNotas;
   ProgressBar1.Position:= 0 ;

   Label4.Caption:='Gerando Notas Fiscais de Entrada....';
   with ACBrSpedFiscal1.Bloco_C do
   begin
     with RegistroC001New do
     begin
         IND_MOV := imComDados;

       if CheckBox5.Checked = True then
       begin
         // notas fiscais de entrada
         dm1.sds_sped_nf_ent.Active := False;
         dm1.sds_sped_nf_ent.DataSet.CommandText:='select * from V_SPED_NOTAS_FISCAIS order by codigo_nota asc';
         dm1.sds_sped_nf_ent.Active := True;
         dm1.sds_sped_nf_ent.Filtered := False;
         dm1.sds_sped_nf_ent.Filter := 'DATA_CADASTRO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DATA_CADASTRO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
         dm1.sds_sped_nf_ent.Filtered := TRUE;
         dm1.sds_sped_nf_ent.First;
         NNotas := 0;
         NNotas := dm1.sds_sped_nf_ent.RecordCount;
         for INotas := 1 to NNotas do
         begin
           with RegistroC100New do
           begin
             IND_OPER      := tpEntradaAquisicao;
             IND_EMIT      := dm1.sds_sped_nf_entEMITENTE.AsVariant;//edTerceiros;
             COD_PART      := dm1.sds_sped_nf_entCOD_SPED.TEXT;
             COD_MOD       := dm1.sds_sped_nf_entMODELO.Text; //'55';
            { if dm1.sds_sped_nf_entDATA_EMISSAO.AsDateTime < EvDateEdit1.Date then
             begin
             COD_SIT       := sdExtempRegular;
             end else
             if dm1.sds_sped_nf_entDATA_EMISSAO.AsDateTime >= EvDateEdit1.Date then
             begin
             COD_SIT       := sdRegular;
             end; }
             COD_SIT       := sdRegular;
             SER           := dm1.sds_sped_nf_entSERIE_NF.TEXT;
             NUM_DOC       := FormatFloat('000000000',dm1.sds_sped_nf_entNUM_NOTA.AsInteger);
             CHV_NFE       := dm1.sds_sped_nf_entCHAVE_NFE.TEXT;
             DT_DOC        := dm1.sds_sped_nf_entDATA_EMISSAO.AsDateTime;
             DT_E_S        := dm1.sds_sped_nf_entDATA_CADASTRO.AsDateTime;
             VL_DOC        := dm1.sds_sped_nf_entTOTAL_NOTA.AsFloat;
             if dm1.sds_sped_nf_entVALOR_AVISTA.AsFloat > 0 then
             BEGIN
             IND_PGTO      := tpVista;
             end else
             if dm1.sds_sped_nf_entVALOR_PRAZO.AsFloat > 0 then
             BEGIN
             IND_PGTO      := tpPrazo;
             end else
             BEGIN
             IND_PGTO      := tpSemPagamento;
             end;

             VL_DESC       := dm1.sds_sped_nf_entVALOR_DESCONTO.AsFloat;
             VL_ABAT_NT    := 0;
             VL_MERC       := dm1.sds_sped_nf_entVALOR_TOTAL_PRODUTOS.AsFloat;
             IND_FRT       := tfSemCobrancaFrete;
             VL_FRT        := 0;
             VL_SEG        := StrToFloatDef(dm1.sds_sped_nf_entVALOR_SEGURO.Text,0);
             VL_OUT_DA     := StrToFloatDef(dm1.sds_sped_nf_entVALOR_OUTRAS_DESPESAS.Text,0);
             VL_BC_ICMS    := StrToFloatDef(dm1.sds_sped_nf_entBASE_CALCULO_ICMS.Text,0);
             VL_ICMS       := StrToFloatDef(dm1.sds_sped_nf_entVALOR_ICMS.Text,0);
             VL_BC_ICMS_ST := StrToFloatDef(dm1.sds_sped_nf_entBASE_CALC_ICMS_SUBST.TEXT,0);
             VL_ICMS_ST    := 0;//StrToFloatDef(dm1.sds_sped_nf_entVALOR_ICMS_SUBST.Text,0);
             VL_IPI        := StrToFloatDef(dm1.sds_sped_nf_entVALOR_IPI.Text,0);
             VL_PIS        := StrToFloatDef(dm1.sds_sped_nf_entVALOR_PIS.Text,0);
             VL_COFINS     := StrToFloatDef(dm1.sds_sped_nf_entVALOR_COFINS.Text,0);
             VL_PIS_ST     := StrToFloatDef(dm1.sds_sped_nf_entVALOR_PIS_ST.Text,0);
             VL_COFINS_ST  := StrToFloatDef(dm1.sds_sped_nf_entVALOR_COFIS_ST.Text,0);



               //REGISTRO C105 – OPERAÇÕES COM ICMS ST RECOLHIDO DO DESTINATÁRIO DO DOCUMENTO FISCAL (CÓDIGO 55).
               {
              with RegistroC105NEW do   //Inicio FDicionar os Itens:
               begin
                   OPER :='';
                   UF   :='MT';
               end;
                }
              {
               with RegistroC140New do   //Inicio PARCELAS DOS TITULOS
               begin
               IND_EMIT  := edTerceiros;
               IND_TIT  := ;  }           {00- Duplicata;
                                              01- Cheque;
                                              02- Promissória;
                                              03- Recibo;
                                               99- Outros (descrever)}
              { DESC_TIT  := 'OBS';
               NUM_TIT   := '0001';
               QTD_PARC  := '1';
               VL_TIT    := '100,00;
              end;
                           }
             {  with RegistroC140New do   //VENCTO DAS PARCELAS DOS TITULOS
               begin
                 NUM_PARC :=
                 DT_VCTO
                 VL_PARC
               end;  }


              dm1.sds_sped_nf_ent_itens.Active := False;
              dm1.sds_sped_nf_ent_itens.Active := True;
             // dm1.sds_sped_nf_ent_itens.Filtered := False;
             // dm1.sds_sped_nf_ent_itens.Filter := 'DATA_EMISSAO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DATA_EMISSAO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(final)));
             // dm1.sds_sped_nf_ent_itens.Filtered := TRUE;
              dm1.sds_sped_nf_ent_itens.First;
              contador := 0;
              contador := dm1.sds_sped_nf_ent_itens.RecordCount;
             // ITENS DA NOTA FISCAL
             for IItens := 1 to CONTADOR do
             begin
               with RegistroC170New do   //Inicio FDicionar os Itens:
               begin
                  NUM_ITEM    := FormatFloat('000', IItens);
                  COD_ITEM    := dm1.sds_sped_nf_ent_itensCODIGO_PRODUTO.text;//RemoveChar(dm1.sds_sped_nf_ent_itensCODIGO_BARRAS.Text);
                  DESCR_COMPL := FormatFloat('NF0000000',dm1.sds_sped_nf_ent_itensCODIGO_NOTA.VALUE)+' -> ITEM '+COD_ITEM;
                  QTD         := dm1.sds_sped_nf_ent_itensQUANTIDADE.AsFloat;
                  UNID        := Trim(DM1.sds_sped_nf_ent_itensDESC_UNIDADE.text);
                  VL_ITEM     := dm1.sds_sped_nf_ent_itensSUBTOTAL.AsFloat;
                  VL_DESC     := StrToFloatDef(dm1.sds_sped_nf_ent_itensVALOR_DESC.Text,0);

                //  if dm1.sds_sped_nf_ent_itensIMOBILZ.Text = 'T' then
                  //ELSE
                 // IND_MOV     := mfNao;

                  IND_MOV     := mfSim;
                  if dm1.sds_sped_nf_entCFOP_NOTA.Text < '2000' then
                  begin
                  if dm1.sds_sped_nf_entCFOP_NOTA.Text = '1910' then
                  CFOP        := '1910'
                  else
                  CFOP        := dm1.sds_sped_nf_ent_itensCFOP.Text;

                IF DM.SDS_EmpresaREGIME.Text = 'S' then
                begin
                if dm1.sds_sped_nf_ent_itensCST.Text = '000' then
                 CST_ICMS   := '101';
                if dm1.sds_sped_nf_ent_itensCST.Text = '010' then
                CST_ICMS   := '203';
                if dm1.sds_sped_nf_ent_itensCST.Text = '020' then
                CST_ICMS   := '101';
                if dm1.sds_sped_nf_ent_itensCST.Text = '030' then
                 CST_ICMS   := '202';
                if dm1.sds_sped_nf_ent_itensCST.Text = '040' then
                CST_ICMS   := '103';
                if dm1.sds_sped_nf_ent_itensCST.Text = '041' then
                CST_ICMS   := '103';
                if dm1.sds_sped_nf_ent_itensCST.Text = '050' then
                CST_ICMS := '103';
                if dm1.sds_sped_nf_ent_itensCST.Text = '051' then
                CST_ICMS:= '103';
                if dm1.sds_sped_nf_ent_itensCST.Text = '060' then
                CST_ICMS   := '500';
                if dm1.sds_sped_nf_ent_itensCST.Text = '070' then
                CST_ICMS  := '202';
                if dm1.sds_sped_nf_ent_itensCST.Text = '080' then
                CST_ICMS := '202';
                if dm1.sds_sped_nf_ent_itensCST.Text = '090' then
                CST_ICMS  := '900';
                end else
                begin
                  CST_ICMS    := dm1.sds_sped_nf_ent_itensCST.Text;
                end;
                  end else
                   if dm1.sds_sped_nf_entCFOP_NOTA.Text > '2000' then
                  begin
                  if dm1.sds_sped_nf_entCFOP_NOTA.Text = '2910' then
                  CFOP        := '2910'
                  else
                  CFOP        := dm1.sds_sped_nf_ent_itensCFOP.Text;
                                  IF DM.SDS_EmpresaREGIME.Text = 'S' then
                begin
                if dm1.sds_sped_nf_ent_itensCST.Text = '000' then
                 CST_ICMS   := '101';
                if dm1.sds_sped_nf_ent_itensCST.Text = '010' then
                CST_ICMS   := '203';
                if dm1.sds_sped_nf_ent_itensCST.Text = '020' then
                CST_ICMS   := '101';
                if dm1.sds_sped_nf_ent_itensCST.Text = '030' then
                 CST_ICMS   := '202';
                if dm1.sds_sped_nf_ent_itensCST.Text = '040' then
                CST_ICMS   := '103';
                if dm1.sds_sped_nf_ent_itensCST.Text = '041' then
                CST_ICMS   := '103';
                if dm1.sds_sped_nf_ent_itensCST.Text = '050' then
                CST_ICMS := '103';
                if dm1.sds_sped_nf_ent_itensCST.Text = '051' then
                CST_ICMS:= '103';
                if dm1.sds_sped_nf_ent_itensCST.Text = '060' then
                CST_ICMS   := '500';
                if dm1.sds_sped_nf_ent_itensCST.Text = '070' then
                CST_ICMS  := '202';
                if dm1.sds_sped_nf_ent_itensCST.Text = '080' then
                CST_ICMS := '202';
                if dm1.sds_sped_nf_ent_itensCST.Text = '090' then
                CST_ICMS  := '900';
                end else
                begin
                  CST_ICMS    := dm1.sds_sped_nf_ent_itensCST.Text;
                end;
                  end;

                  COD_NAT     := '';
                  VL_BC_ICMS  := StrToFloatDef(dm1.sds_sped_nf_ent_itensBASE_ICMS.text,0);
                  ALIQ_ICMS   := StrToFloatDef(dm1.sds_sped_nf_ent_itensPERC_ICMS.Text,0);
                  VL_ICMS     := StrToFloatDef(dm1.sds_sped_nf_ent_itensVALOR_ICMS.Text,0);
                  VL_BC_ICMS_ST := StrToFloatDef(dm1.sds_sped_nf_ent_itensBASE_ICMS_ST.Text,0);
                  ALIQ_ST       := StrToFloatDef(dm1.sds_sped_nf_ent_itensALIC_ICMS_ST.Text,0);
                  VL_ICMS_ST    := StrToFloatDef(dm1.sds_sped_nf_ent_itensVALOR_ICMS_ST.Text,0);
                  IND_APUR      := iaMensal;
                 { if dm1.sds_sped_nf_ent_itensCST_IPI_ENTRADA.Text = '00' then
                  CST_IPI       := ipiEntradaRecuperacaoCredito;
                  if dm1.sds_sped_nf_ent_itensCST_IPI_ENTRADA.Text = '01' then
                  CST_IPI       := ipiEntradaTributradaZero ;
                  if dm1.sds_sped_nf_ent_itensCST_IPI_ENTRADA.Text = '02' then
                  CST_IPI       := ipiEntradaIsenta;
                  if dm1.sds_sped_nf_ent_itensCST_IPI_ENTRADA.Text = '03' then
                  CST_IPI       := ipiEntradaNaoTributada;
                  if dm1.sds_sped_nf_ent_itensCST_IPI_ENTRADA.Text = '04' then
                  CST_IPI       := ipiEntradaImune;
                  if dm1.sds_sped_nf_ent_itensCST_IPI_ENTRADA.Text = '05' then
                  CST_IPI       := ipiEntradaComSuspensao;
                  if dm1.sds_sped_nf_ent_itensCST_IPI_ENTRADA.Text = '49' then }
                   CST_IPI       := CstIpiToStr(stipiEntradaIsenta) ;

                  COD_ENQ       := '';
                  VL_BC_IPI     := StrToFloatDef(dm1.sds_sped_nf_ent_itensBASE_IPI.Text,0);
                  ALIQ_IPI      := StrToFloatDef(dm1.sds_sped_nf_ent_itensPERC_IPI.Text,0);
                  VL_IPI        := StrToFloatDef(dm1.sds_sped_nf_ent_itensVALOR_IPI.Text,0);
                {  if dm1.sds_sped_nf_ent_itensSIT_PIS_COMPRA.Text = '70' then
                  CST_PIS     := pisOperAquiSemDirCredito;
                  if dm1.sds_sped_nf_ent_itensSIT_PIS_COMPRA.Text = '71' then
                  CST_PIS    := pisOperAquiComIsensao;
                  if dm1.sds_sped_nf_ent_itensSIT_PIS_COMPRA.Text = '72' then
                  CST_PIS     :=  pisOperAquiComSuspensao;
                  if dm1.sds_sped_nf_ent_itensSIT_PIS_COMPRA.Text = '73' then
                  CST_PIS     :=  pisOperAquiAliquotaZero;
                  if dm1.sds_sped_nf_ent_itensSIT_PIS_COMPRA.Text = '74' then
                  CST_PIS     :=  pisOperAqui_SemIncidenciaContribuicao;
                  if dm1.sds_sped_nf_ent_itensSIT_PIS_COMPRA.Text = '75' then
                  CST_PIS     :=  pisOperAquiPorST;
                  if dm1.sds_sped_nf_ent_itensSIT_PIS_COMPRA.Text = '98' then
                  CST_PIS     :=  pisOutrasOperacoesEntrada;
                  if dm1.sds_sped_nf_ent_itensSIT_PIS_COMPRA.Text = '99' then  }
                  CST_PIS        := CstIpiToStr(stipiEntradaIsenta);

                  VL_BC_PIS     := StrToFloatDef(dm1.sds_sped_nf_ent_itensBASE_PIS.Text,0);
                  if dm1.sds_sped_nf_ent_itensBASE_PIS.AsFloat >0 then
                  ALIQ_PIS_PERC := dm1.sds_sped_nf_ent_itensVALOR_PIS.AsFloat * 100 / dm1.sds_sped_nf_ent_itensBASE_PIS.AsFloat
                  else
                  ALIQ_PIS_PERC := 0;
                  QUANT_BC_PIS  := 0;
                  ALIQ_PIS_R    := 0;
                  VL_PIS        := StrToFloatDef(dm1.sds_sped_nf_ent_itensVALOR_PIS.Text,0);

                 { if dm1.sds_sped_nf_ent_itensSIT_COFINS_COMPRA.Text = '70' then
                  CST_COFINS    := cofinsOperAquiSemDirCredito;
                  if dm1.sds_sped_nf_ent_itensSIT_COFINS_COMPRA.Text = '71' then
                  CST_COFINS    := cofinsOperAquiComIsensao;
                  if dm1.sds_sped_nf_ent_itensSIT_COFINS_COMPRA.Text = '72' then
                  CST_COFINS    :=  cofinsOperAquiComSuspensao;
                  if dm1.sds_sped_nf_ent_itensSIT_COFINS_COMPRA.Text = '73' then
                  CST_COFINS    :=  cofinsOperAquiAliquotaZero;
                  if dm1.sds_sped_nf_ent_itensSIT_COFINS_COMPRA.Text = '74' then
                  CST_COFINS    :=  cofinsOperAqui_SemIncidenciaContribuicao;
                  if dm1.sds_sped_nf_ent_itensSIT_COFINS_COMPRA.Text = '75' then
                  CST_COFINS    :=  cofinsOperAquiPorST;
                  if dm1.sds_sped_nf_ent_itensSIT_COFINS_COMPRA.Text = '98' then
                  CST_COFINS    :=  cofinsOutrasOperacoesEntrada;
                  if dm1.sds_sped_nf_ent_itensSIT_COFINS_COMPRA.Text = '99' then  }
                  CST_COFINS       := CstIpiToStr(stipiEntradaIsenta);

                  VL_BC_COFINS     := StrToFloatDef(dm1.sds_sped_nf_ent_itensBASE_COFINS.Text,0);
                  if dm1.sds_sped_nf_ent_itensBASE_COFINS.asfloat > 0 then
                  ALIQ_COFINS_PERC := dm1.sds_sped_nf_ent_itensVALOR_COFINS.asfloat * 100 / dm1.sds_sped_nf_ent_itensBASE_COFINS.AsFloat
                  else
                  ALIQ_COFINS_PERC := 0;
                  QUANT_BC_COFINS  := 0;
                  ALIQ_COFINS_R    := 0;
                  VL_COFINS        := StrToFloatDef(dm1.sds_sped_nf_ent_itensVALOR_COFINS.Text,0);
                  COD_CTA          := '1.1.4.01.01';

                end; //Fim dos Itens;
              dm1.sds_sped_nf_ent_itens.Next;
             end;

             //c190
            dM1.sds_sped_nf_ent_itens_anal.Active := False;
            Dm1.sds_sped_nf_ent_itens_anal.Active := True;
            Dm1.sds_sped_nf_ent_itens_anal.first;
            contador :=0;
            contador := DM1.sds_sped_nf_ent_itens_anal.RecordCount;
            For IItens := 1 to CONTADOR do
             begin
               with RegistroC190New do
               begin

                  if dm1.sds_sped_nf_entCFOP_NOTA.Text < '2000' then
                  begin
                  if dm1.sds_sped_nf_entCFOP_NOTA.Text = '1910' then
                  CFOP        := '1910'
                  else
                  CFOP          :=  dm1.sds_sped_nf_ent_itens_analCFOP.Text;
               IF DM.SDS_EmpresaREGIME.Text = 'S' then
                begin
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '000' then
                 CST_ICMS   := '101';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '010' then
                CST_ICMS   := '203';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '020' then
                CST_ICMS   := '101';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '030' then
                 CST_ICMS   := '202';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '040' then
                CST_ICMS   := '103';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '041' then
                CST_ICMS   := '103';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '050' then
                CST_ICMS := '103';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '051' then
                CST_ICMS:= '103';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '060' then
                CST_ICMS   := '500';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '070' then
                CST_ICMS  := '202';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '080' then
                CST_ICMS := '202';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '090' then
                CST_ICMS  := '900';
                end else
                begin
                  CST_ICMS      :=  Formatar(dm1.sds_sped_nf_ent_itens_analCST.Text,3,False,'0');
                end;
                  end else
                  if dm1.sds_sped_nf_entCFOP_NOTA.Text > '2000' then
                  begin
                  if dm1.sds_sped_nf_entCFOP_NOTA.Text = '2910' then
                  CFOP        := '2910'
                  else
                  CFOP          :=  dm1.sds_sped_nf_ent_itens_analCFOP.Text;
                                 IF DM.SDS_EmpresaREGIME.Text = 'S' then
                begin
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '000' then
                 CST_ICMS   := '101';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '010' then
                CST_ICMS   := '203';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '020' then
                CST_ICMS   := '101';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '030' then
                 CST_ICMS   := '202';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '040' then
                CST_ICMS   := '103';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '041' then
                CST_ICMS   := '103';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '050' then
                CST_ICMS := '103';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '051' then
                CST_ICMS:= '103';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '060' then
                CST_ICMS   := '500';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '070' then
                CST_ICMS  := '202';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '080' then
                CST_ICMS := '202';
                if dm1.sds_sped_nf_ent_itens_analCST.TEXT = '090' then
                CST_ICMS  := '900';
                end else
                begin
                  CST_ICMS      :=  Formatar(dm1.sds_sped_nf_ent_itens_analCST.Text,3,False,'0');
                end;
                  end;
                  ALIQ_ICMS     :=  StrToFloatDef(dm1.sds_sped_nf_ent_itens_analPERC_ICMS.Text,0);
                  VL_OPR        :=  (dm1.sds_sped_nf_ent_itens_analSUBTOTAL.AsFloat - dm1.sds_sped_nf_ent_itens_analVALOR_DESCONTO.AsFloat) + StrToFloatDef(dm1.sds_sped_nf_ent_itens_analVALOR_IPI.Text,0)+ StrToFloatDef(dm1.sds_sped_nf_ent_itens_analVALOR_OUTRAS.Text,0) + StrToFloatDef(dm1.sds_sped_nf_ent_itens_analVALOR_ICMS_ST.Text,0);
                  VL_BC_ICMS    :=  StrToFloatDef(dm1.sds_sped_nf_ent_itens_analBASE_ICMS.Text,0);
                  VL_ICMS       :=  StrToFloatDef(dm1.sds_sped_nf_ent_itens_analVALOR_ICMS.Text,0);
                  VL_BC_ICMS_ST := StrToFloatDef(dm1.sds_sped_nf_ent_itens_analBASE_ICMS_ST.Text,0);
                  VL_ICMS_ST    := 0; //StrToFloatDef(dm1.sds_sped_nf_ent_itens_analVALOR_ICMS_ST.Text,0);
                 // ValorC190:= ValorC190 + VL_ICMS_ST;
                  VL_RED_BC     := 0;
                  VL_IPI        := StrToFloatDef(dm1.sds_sped_nf_ent_itens_analVALOR_IPI.Text,0);
                  COD_OBS       := '';
               end;//Fim dos Itens;
              Dm1.sds_sped_nf_ent_itens_anal.Next;
             end;

              {
               // registro dos combustiveis
               with RegistroC171New do
               begin
                 NUM_PARC :=
                 DT_VCTO
                 VL_PARC
               end;  }

             dm1.sds_sped_nf_ent.Next;
           end;


           if cbConcomitante.Checked then
           begin
              if (INotas mod BNotas) = 0 then   // Gravar a cada N notas
              begin
                 // Grava registros na memoria para o TXT, e limpa memoria
                 ACBrSPEDFiscal1.WriteBloco_C( False );  // False, NAO fecha o Bloco
                 ProgressBar1.Position := INotas;
                 Application.ProcessMessages;
              end;
           end;
           end;
       end;


       // notas fiscais de venda
       if CheckBox6.Checked = True then
       begin
         Label4.Caption:='Gerando Notas Fiscais de Vendas....';

         dm1.Sds_sped_nfe.Active := False;
         dm1.sds_sped_nfe.Active := True;
         dm1.sds_sped_nfe.Filtered := False;
         dm1.sds_sped_nfe.Filter := 'chave_acesso_nfe is not null and ' + 'DT_EMISSAO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DT_EMISSAO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
         dm1.sds_sped_nfe.Filtered := TRUE;
         dm1.sds_sped_nfe.First;
         NNotas := 0;
         NNotas := dm1.sds_sped_nfe.RecordCount;
         for INotas := 1 to NNotas do
         begin
           with RegistroC100New do
           begin
            iF (dm1.Sds_sped_nfeSTATUS_INUTILIZADO.Text = 'S') OR (dm1.Sds_sped_nfeSTATUS.Text = '') OR (dm1.Sds_sped_nfeSTATUS.Text = 'N') then
            BEGIN
             IND_OPER      := tpSaidaPrestacao;
             IND_EMIT      := edEmissaoPropria;
             COD_PART      := '';
             COD_MOD       := '55';
             COD_SIT       := sdDoctoNumInutilizada;
             SER           := dm1.sds_sped_nfeSERIE_NF.TEXT;
             NUM_DOC       := FormatFloat('000000000',dm1.sds_sped_nfeNR_NOTA.AsInteger);
             end ELSE
            iF dm1.sds_sped_nfeSTATUS_CANCELADO.Text = 'S' then
            BEGIN
             IND_OPER      := tpSaidaPrestacao;
             IND_EMIT      := edEmissaoPropria;
             COD_PART      := '';
             COD_MOD       := '55';
             COD_SIT       := sdCancelado;
             SER           := dm1.sds_sped_nfeSERIE_NF.TEXT;
             NUM_DOC       := FormatFloat('000000000',dm1.sds_sped_nfeNR_NOTA.AsInteger);
             CHV_NFE       := dm1.sds_sped_nfeCHAVE_ACESSO_NFE.TEXT;
             end ELSE
             BEGIN

             IND_OPER      := tpSaidaPrestacao;
             IND_EMIT      := edEmissaoPropria;
             COD_PART      := dm1.Sds_sped_nfeCOD_SPED.TEXT;
             COD_MOD       := '55';
             COD_SIT       := sdRegular;
             SER           := dm1.sds_sped_nfeSERIE_NF.TEXT;
             NUM_DOC       := FormatFloat('000000000',dm1.Sds_sped_nfeNR_NOTA.AsInteger);
             CHV_NFE       := dm1.Sds_sped_nfeCHAVE_ACESSO_NFE.TEXT;
             DT_DOC        := dm1.sds_sped_nfeDT_EMISSAO.AsDateTime;
             DT_E_S        := dm1.sds_sped_nfeDT_EMISSAO.AsDateTime;
             VL_DOC        := dm1.Sds_sped_nfeVL_TOTAL.AsFloat;
             if dm1.sds_sped_nfeVL_AVISTA.AsFloat > 0 then
             BEGIN
             IND_PGTO      := tpVista;
             end else
             if dm1.sds_sped_nfeVL_PRAZO.AsFloat > 0 then
             BEGIN
             IND_PGTO      := tpPrazo;
             end else
             BEGIN
             IND_PGTO      := tpOutros;
             end;
             VL_DESC       := dm1.Sds_sped_nfeVL_DESCONTOS.AsFloat;
             VL_ABAT_NT    := 0;
             VL_MERC       := dm1.Sds_sped_nfeVL_MERCADORIAS.AsFloat;
             IND_FRT       := tfSemCobrancaFrete;
             VL_FRT        := 0;
             VL_SEG        := StrToFloatDef(dm1.Sds_sped_nfeVL_SEGURO.Text,0);
             VL_OUT_DA     := StrToFloatDef(dm1.Sds_sped_nfeVL_ACRESCIMOS.Text,0);
             VL_BC_ICMS    := StrToFloatDef(dm1.Sds_sped_nfeVL_BASE_ICM.Text,0);
             VL_ICMS       := StrToFloatDef(dm1.Sds_sped_nfeVL_ICM.Text,0);
             VL_BC_ICMS_ST := StrToFloatDef(dm1.Sds_sped_nfeVL_BASE_ICM_SUBST.TEXT,0);
             VL_ICMS_ST    := StrToFloatDef(dm1.Sds_sped_nfeVL_ICM_SUBST.Text,0);
             VL_IPI        := StrToFloatDef(dm1.sds_sped_nfeVL_IPI.Text,0);
             VL_PIS        := StrToFloatDef(dm1.Sds_sped_nfeVL_PIS.Text,0);
             VL_COFINS     := StrToFloatDef(dm1.sds_sped_nfeVL_COFINS.Text,0);
             VL_PIS_ST     := 0;//StrToFloatDef(dm1.sds_sped_nfeVL_PIS_ST.Text,0);
             VL_COFINS_ST  := 0;//StrToFloatDef(dm1.sds_sped_nf_entVALOR_COFIS_ST.Text,0);



               //REGISTRO C105 – OPERAÇÕES COM ICMS ST RECOLHIDO DO DESTINATÁRIO DO DOCUMENTO FISCAL (CÓDIGO 55).
               {
              with RegistroC105NEW do   //Inicio FDicionar os Itens:
               begin
                   OPER :='';
                   UF   :='MT';
               end;
                }
              {
               with RegistroC140New do   //Inicio PARCELAS DOS TITULOS
               begin
               IND_EMIT  := edTerceiros;
               IND_TIT  := ;  }           {00- Duplicata;
                                              01- Cheque;
                                              02- Promissória;
                                              03- Recibo;
                                               99- Outros (descrever)}
              { DESC_TIT  := 'OBS';
               NUM_TIT   := '0001';
               QTD_PARC  := '1';
               VL_TIT    := '100,00;
              end;
                           }
             {  with RegistroC140New do   //VENCTO DAS PARCELAS DOS TITULOS
               begin
                 NUM_PARC :=
                 DT_VCTO
                 VL_PARC
               end;  }



                dm1.sds_sped_nfe_itens1.Active := False;
                dm1.sds_sped_nfe_itens1.sql.Clear;
                dm1.sds_sped_nfe_itens1.SQL.Add('select * from NFE_ITENS where nr_nota =:nota');
                dm1.sds_sped_nfe_itens1.Params.ParamByName('nota').asinteger := dm1.sds_sped_nfeNR_NOTA.AsInteger;
                dm1.sds_sped_nfe_itens1.Active := True;

                {   Totais.Close;
                   Totais.SQL.Text := 'SELECT sum (vl_total) as vl_total from nfe_itens where nr_nota =:nf';
                   Totais.Parambyname('nf').AsInteger    := dm1.sds_sped_nfeNR_NOTA.AsInteger;;
                   Totais.Open;
                   total   := Totais.FieldByName('VL_TOTAL').AsFloat;


                   v_total := (total - dm1.Sds_sped_nfeVL_total.AsFloat);


                   Totais.Close;
                   Totais.SQL.Text := 'SELECT sum (vl_desconto) as vl_desconto from nfe_itens where nr_nota =:nf';
                   Totais.Parambyname('nf').AsInteger    := dm1.sds_sped_nfeNR_NOTA.AsInteger;;
                   Totais.Open;
                   DESC   := Totais.FieldByName('VL_DESCONTO').AsFloat;
                   v_desc := (desc - dm1.Sds_sped_nfeVL_DESCONTOS.AsFloat);

                  valor_desc := FloatToStr(dm1.sds_sped_nfe_itens1Vl_DESCONTO.MaxValue);
                  dm1.sds_sped_nfe_itens1.Locate('VL_DESCONTO',valor_desc,[loPartialKey, loCaseInsensitive]);


                 IF desc > dm1.Sds_sped_nfeVL_DESCONTOS.AsFloat then
                  begin
                   dm1.sds_sped_nfe_itens1.Edit;
                   dm1.sds_sped_nfe_itens1Vl_DESCONTO.AsFloat := Abs(dm1.sds_sped_nfe_itens1VL_DESCONTO.asfloat - v_DESC);
                   dm1.sds_sped_nfe_itens1.Post;
                  // dm1.sds_sped_nfe_itens1.ApplyUpdates(0);
                  end;
                  IF desc < dm1.Sds_sped_nfeVL_DESCONTOS.AsFloat then
                  begin
                   dm1.sds_sped_nfe_itens1.Edit;
                   dm1.sds_sped_nfe_itens1VL_DESCONTO.AsFloat := Abs(dm1.sds_sped_nfe_itens1VL_DESCONTO.AsFloat + v_DESC);
                   dm1.sds_sped_nfe_itens1.Post;
                   //dm1.sds_sped_nfe_itens1.ApplyUpdates(0);
                  end;

                  valor_total := FloatToStr(dm1.sds_sped_nfe_itens1VL_TOTAL.MaxValue);
                  dm1.sds_sped_nfe_itens1.Locate('VL_TOTAL',valor_total,[loPartialKey, loCaseInsensitive]);

                  IF total > dm1.Sds_sped_nfeVL_MERCADORIAS.AsFloat then
                  begin
                   dm1.sds_sped_nfe_itens1.Edit;
                   dm1.sds_sped_nfe_itens1VL_TOTAL.AsFloat := dm1.sds_sped_nfe_itens1VL_TOTAL.asfloat - v_total;
                   dm1.sds_sped_nfe_itens1.Post;
                //   dm1.sds_sped_nfe_itens1.ApplyUpdates(0);
                  end;

                  IF total < dm1.Sds_sped_nfeVL_MERCADORIAS.AsFloat then
                  begin
                   dm1.sds_sped_nfe_itens1.Edit;
                   dm1.sds_sped_nfe_itens1VL_TOTAL.AsFloat := dm1.sds_sped_nfe_itens1VL_TOTAL.asfloat + v_total;
                   dm1.sds_sped_nfe_itens1.Post;
                 //  dm1.sds_sped_nfe_itens1.ApplyUpdates(0);
                  end;         }

              // ITENS DA NOTA DE VENDA
              dm1.sds_sped_nfe_itens.Active := False;
              dm1.sds_sped_nfe_itens.Active := True;
              dm1.sds_sped_nfe_itens.First;
              contador := 0;
              contador := dm1.sds_sped_nfe_itens.RecordCount;
//              if (tpEntradaAquisicao = 0)  then
//               begin
//              // ITENS DA NOTA FISCAL
//              for IItens := 1 to CONTADOR do
//              begin
//               with RegistroC170New do   //Inicio FDicionar os Itens:
//               begin
//                  NUM_ITEM    := FormatFloat('000', IItens);
//                  COD_ITEM    := dm1.sds_sped_nfe_itensCODIGO_PROD.Text;///RemoveChar(dm1.sds_sped_nfe_itensCODIGO_BARRAS.Text);
//                  DESCR_COMPL := FormatFloat('NF0000000',dm1.sds_sped_nfe_itensNR_NOTA.VALUE)+' -> ITEM '+COD_ITEM;
//                  QTD         := dm1.sds_sped_nfe_itensQT_PRODUTO.AsFloat;
//                  UNID        := dm1.sds_sped_nfe_itensDESC_UNIDADE.text;
//                  VL_ITEM     := dm1.sds_sped_nfe_itensVL_TOTAL.AsCurrency;
//                  VL_DESC     := StrToFloatDef(dm1.sds_sped_nfe_itensVL_DESCONTO.Text,0);
//                  IND_MOV     := mfSim;
//                  if  (dm1.sds_sped_nfe_itensCST.Text = '900') or (dm1.sds_sped_nfe_itensCST.Text = '500')then
//                  CST_ICMS    := '202'
//                  else
//                  CST_ICMS    := dm1.sds_sped_nfe_itensCST.Text;
//                  CFOP        := dm1.sds_sped_nfe_itensCFOP.Text;
//                  COD_NAT     := '';
//                  VL_BC_ICMS  := StrToFloatDef(dm1.sds_sped_nfe_itensVL_BASE_ICM.text,0);
//                  VL_ICMS     := StrToFloatDef(dm1.sds_sped_nfe_itensVL_ICM.Text,0);
//                  IF  VL_ICMS  > 0 THEN
//                  ALIQ_ICMS   := StrToFloatDef(dm1.sds_sped_nfe_itensALIQ_ICM.Text,0)
//                  else
//                  ALIQ_ICMS   := 0;
//                  VL_BC_ICMS_ST := StrToFloatDef(dm1.sds_sped_nfe_itensVL_BASE_ICM_SUBST.Text,0);
//                  ALIQ_ST       := StrToFloatDef(dm1.sds_sped_nfe_itensALIQ_ICM_SUBST.Text,0);
//                  VL_ICMS_ST    := StrToFloatDef(dm1.sds_sped_nfe_itensVL_ICM_SUBST.Text,0);
//                  IND_APUR      := iaMensal;
//
//                  IF dm1.sds_sped_nfe_itensCST_IPI_SAIDA.Text = '50' THEN
//                  CST_IPI       := ipiSaidaTributada;
//                  IF dm1.sds_sped_nfe_itensCST_IPI_SAIDA.Text = '51' THEN
//                  CST_IPI       := ipiSaidaTributadaZero;
//                  IF dm1.sds_sped_nfe_itensCST_IPI_SAIDA.Text = '52' THEN
//                  CST_IPI       := ipiSaidaIsenta;
//                  IF dm1.sds_sped_nfe_itensCST_IPI_SAIDA.Text = '53' THEN
//                  CST_IPI       := ipiSaidaNaoTributada;
//                  IF dm1.sds_sped_nfe_itensCST_IPI_SAIDA.Text = '54' THEN
//                  CST_IPI       := ipiSaidaImune;
//                  IF dm1.sds_sped_nfe_itensCST_IPI_SAIDA.Text = '55' THEN
//                   CST_IPI       := ipiSaidaComSuspensao;
//                  IF dm1.sds_sped_nfe_itensCST_IPI_SAIDA.Text = '99' THEN
//                  CST_IPI       := ipiOutrasSaidas;
//
//                  COD_ENQ       := '';
//                  VL_BC_IPI     := 0;
//                  VL_IPI        := StrToFloatDef(dm1.sds_sped_nfe_itensVL_IPI.Text,0);
//                  IF VL_IPI > 0 THEN
//                  ALIQ_IPI      := StrToFloatDef(dm1.sds_sped_nfe_itensALIQ_IPI.Text,0)
//                  else
//                  ALIQ_IPI      :=0;
//
//                  if dm1.sds_sped_nfe_itensSIT_PIS_VENDA_EST.Text = '01' then
//                  CST_PIS    := pisValorAliquotaNormal;
//                  if dm1.sds_sped_nfe_itensSIT_PIS_VENDA_EST.Text = '02' then
//                  CST_PIS    := pisValorAliquotaDiferenciada;
//                  if dm1.sds_sped_nfe_itensSIT_PIS_VENDA_EST.Text = '03' then
//                  CST_PIS    :=  pisQtdeAliquotaUnidade;
//                  if dm1.sds_sped_nfe_itensSIT_PIS_VENDA_EST.Text = '04' then
//                  CST_PIS    :=  pisMonofaticaAliquotaZero;
//                  if dm1.sds_sped_nfe_itensSIT_PIS_VENDA_EST.Text = '05' then
//                  CST_PIS    :=  pisValorAliquotaPorST;
//                  if dm1.sds_sped_nfe_itensSIT_PIS_VENDA_EST.Text = '06' then
//                  CST_PIS    :=  pisAliquotaZero;
//                  if dm1.sds_sped_nfe_itensSIT_PIS_VENDA_EST.Text = '07' then
//                  CST_PIS    :=  pisIsentaContribuicao;
//                  if dm1.sds_sped_nfe_itensSIT_PIS_VENDA_EST.Text = '08' then
//                  CST_PIS    :=  pisSemIncidenciaContribuicao;
//                  if dm1.sds_sped_nfe_itensSIT_PIS_VENDA_EST.Text = '09' then
//                  CST_PIS    :=  pisSuspensaoContribuicao;
//                  if dm1.sds_sped_nfe_itensSIT_PIS_VENDA_EST.Text = '49' then
//                  CST_PIS    :=  pisOutrasOperacoesSaida;
//                  if dm1.sds_sped_nfe_itensSIT_PIS_VENDA_EST.Text = '99' then
//                  CST_PIS      := pisOutrasOperacoes;
//
//                  VL_BC_PIS     := StrToFloatDef(dm1.sds_sped_nfe_itensVL_BASE_PIS.Text,0);;
//
//                  QUANT_BC_PIS  := 0;
//                  ALIQ_PIS_R    := 0;
//                  VL_PIS        := StrToFloatDef(dm1.sds_sped_nfe_itensVL_PIS.Text,0);
//                  IF VL_PIS > 0 THEN
//                  ALIQ_PIS_PERC := StrToFloatDef(dm1.sds_sped_nfe_itensALIQ_PIS.Text,0)
//                  else
//                  ALIQ_PIS_PERC :=0;
//
//                  if dm1.sds_sped_nfe_itensSIT_COFINS_VENDA_EST.Text = '01' then
//                  CST_COFINS    := cofinsValorAliquotaNormal;
//                  if dm1.sds_sped_nfe_itensSIT_COFINS_VENDA_EST.Text = '02' then
//                  CST_COFINS    := cofinsValorAliquotaDiferenciada;
//                  if dm1.sds_sped_nfe_itensSIT_COFINS_VENDA_EST.Text = '03' then
//                  CST_COFINS    :=  cofinsQtdeAliquotaUnidade;
//                  if dm1.sds_sped_nfe_itensSIT_COFINS_VENDA_EST.Text = '04' then
//                  CST_COFINS    :=  cofinsMonofaticaAliquotaZero;
//                  if dm1.sds_sped_nfe_itensSIT_COFINS_VENDA_EST.Text = '05' then
//                  CST_COFINS    :=  cofinsValorAliquotaPorST;
//                  if dm1.sds_sped_nfe_itensSIT_COFINS_VENDA_EST.Text = '06' then
//                  CST_COFINS    :=  cofinsAliquotaZero;
//                  if dm1.sds_sped_nfe_itensSIT_COFINS_VENDA_EST.Text = '07' then
//                  CST_COFINS    :=  cofinsIsentaContribuicao;
//                  if dm1.sds_sped_nfe_itensSIT_COFINS_VENDA_EST.Text = '08' then
//                  CST_COFINS    :=  cofinsSemIncidenciaContribuicao;
//                  if dm1.sds_sped_nfe_itensSIT_COFINS_VENDA_EST.Text = '09' then
//                  CST_COFINS    :=  cofinsSuspensaoContribuicao;
//                  if dm1.sds_sped_nfe_itensSIT_COFINS_VENDA_EST.Text = '49' then
//                  CST_COFINS    :=  cofinsOutrasOperacoesSaida;
//                  if dm1.sds_sped_nfe_itensSIT_COFINS_VENDA_EST.Text = '99' then
//                  CST_COFINS       := cofinsOutrasOperacoes;
//
//                  VL_BC_COFINS  := StrToFloatDef(dm1.sds_sped_nfe_itensVL_BASE_COFINS.Text,0);
//                  VL_COFINS        := StrToFloatDef(dm1.sds_sped_nfe_itensVL_COFINS.Text,0);
//                  IF VL_COFINS > 0 THEN
//                  ALIQ_COFINS_PERC := StrToFloatDef(dm1.sds_sped_nfe_itensALIQ_COFINS.Text,0)
//                  else
//                  ALIQ_COFINS_PERC := 0;
//                  QUANT_BC_COFINS  := 0; //StrToFloatDef(dm1.sds_sped_nfe_itensVL_BASE_COFINS.Text,0);;
//                  ALIQ_COFINS_R    := 0;
//                  COD_CTA          := '3.1.1.01.01';
//
//                end; // Fim dos Itens;
//
//
//
//                 // REGISTRO ANALITICO 1
//                  with RegistroC176New do
//                  begin
//                  COD_MOD_ULT_E  := '55';
//                  NUM_DOC_ULT_E  :=  FormatFloat('000000000',dm1.Sds_sped_nfeNR_NOTA.AsInteger + 100);
//                  SER_ULT_E      :=  dm1.sds_sped_nfeSERIE_NF.TEXT;
//                  DT_ULT_E       :=  dm1.sds_sped_nfeDT_EMISSAO.AsDateTime;
//                  COD_PART_ULT_E :=  dm1.Sds_sped_nfeCOD_SPED.TEXT;
//                  QUANT_ULT_E    :=  dm1.sds_sped_nfe_itensQT_PRODUTO.AsFloat;
//                  VL_UNIT_ULT_E  :=  dm1.sds_sped_nfe_itensVL_TOTAL.AsFloat;
//                  VL_UNIT_BC_ST:= StrToFloatDef(dm1.sds_sped_nfe_itensVL_BASE_ICM_SUBST.Text,0);
//                  CHAVE_NFE_ULT_E:= dm1.Sds_sped_nfeCHAVE_ACESSO_NFE.AsString;
//                  //NUM_ITEM_ULT_E := dm1.sds_sped_nfe_itensNR_NOTA.AsString;
//
////                  VL_UNIT_BC_ICMS_ULT_E:= dm1.sds_sped_nfe_itensVL_TOTAL.AsCurrency;  //Vr. unitário b. cáculo ICMS remetente
////
////                  ALIQ_ICMS_ULT_E:= dm1.sds_sped_nfe_itensVL_TOTAL.AsCurrency; // Alíquota do ICMS (%)
////
////                  VL_UNIT_LIMITE_BC_ICMS_ULT_E:= dm1.sds_sped_nfe_itensVL_TOTAL.AsCurrency; //Vr. Unítário b. cálculo ICMS retenção
////
////                  VL_UNIT_ICMS_ULT_E:= dm1.sds_sped_nfe_itensALIQ_ICM.AsCurrency * dm1.sds_sped_nfe_itensVL_ICM.AsCurrency; //Vr. unitária do crédito de ICMS
////
////                  ALIQ_ST_ULT_E:= dm1.sds_sped_nfe_itensALIQ_ICM_SUBST.AsCurrency; //Alíquota do ICMS ST (%)
////
////                  VL_UNIT_RES:= dm1.sds_sped_nfe_itensVL_UNITARIO.AsCurrency; //Vr. Unitário ICMS ST ressarcimento
//
//
//                  COD_RESP_RET:= '';
//                  COD_MOT_RES:= '';
//                  CHAVE_NFE_RET:= '';
//                  COD_PART_NFE_RET:= '';
//                  SER_NFE_RET:= '';
//                  NUM_NFE_RET:= '';
//                  ITEM_NFE_RET:= '';
//                  COD_DA:= '';
//                  NUM_DA:= '';
//                 end;
//
//               dm1.sds_sped_nfe_itens.Next;
//                end;
//
//              end;

             //REGISTRO ANALITICO 2
             dm1.sds_sped_nfe_itens_anal.Active := False;
             dm1.sds_sped_nfe_itens_anal.Active := True;
             dm1.sds_sped_nfe_itens_anal.first;
             contador := 0;
             contador := dm1.sds_sped_nfe_itens_anal.RecordCount;
             for IItens := 1 to CONTADOR do
             begin
               with RegistroC190New do
               begin
                   if (dm1.sds_sped_nfe_itens_analCST.Text = '900')  or (dm1.sds_sped_nfe_itens_analCST.Text = '500') then
                   CST_ICMS    := '202'
                   else
                  CST_ICMS    :=  Formatar(dm1.sds_sped_nfe_itens_analCST.Text,3,False,'0');
                  CFOP        :=  dm1.sds_sped_nfe_itens_analCFOP.Text;
                  ALIQ_ICMS   :=  StrToFloatDef(dm1.sds_sped_nfe_itens_analALIQ_ICM.Text,0);
                  VL_OPR      :=  StrToFloatDef(dm1.sds_sped_nfe_itens_analVL_TOTAL.Text,0) - StrToFloatDef(dm1.sds_sped_nfe_itens_analVL_DESCONTO.Text,0);
                  VL_BC_ICMS  :=  StrToFloatDef(dm1.sds_sped_nfe_itens_analVL_BASE_ICM.Text,0);
                  VL_ICMS     :=  StrToFloatDef(dm1.sds_sped_nfe_itens_analVL_ICM.Text,0);
                  VL_BC_ICMS_ST := StrToFloatDef(dm1.sds_sped_nfe_itens_analVL_BASE_ICM_SUBST.Text,0);
                  VL_ICMS_ST    := StrToFloatDef(dm1.sds_sped_nfe_itens_analVALOR_ICM_SUBST.Text,0);
                  VL_RED_BC     := 0;
                  VL_IPI        := StrToFloatDef(dm1.sds_sped_nfe_itens_analVL_IPI.Text,0);
                  COD_OBS       := '';
               end;//Fim dos Itens;
               dm1.sds_sped_nfe_itens_anal.Next;
             end;
              {
               // registro dos combustiveis
               with RegistroC171New do
               begin
                 NUM_PARC :=
                 DT_VCTO
                 VL_PARC
               end;}
             end;
             dm1.sds_sped_nfe.Next;
           end;
          end;

          Application.ProcessMessages;
         // notas de FISCAIS DE VENDA PRODUTOR ETC... rural
         Label4.Caption:='Gerando Notas Fiscais de Vendas produtor rural....';

         modelo :='01';
         dm1.Sds_sped_nfprod.Active := False;
         dm1.Sds_sped_nfprod.Active := True;
         dm1.Sds_sped_nfprod.Filtered := False;
         dm1.Sds_sped_nfprod.Filter := 'modelo_nf >= '+QuotedStr(MODELO) +' and Data_pedido >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and Data_pedido <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
         dm1.Sds_sped_nfprod.Filtered := TRUE;
         dm1.Sds_sped_nfprod.First;
         NNotas1 := 0;
         NNotas1 := dm1.Sds_sped_nfprod.RecordCount;
         for INotas1 := 1 to NNotas1 do
         begin
           with RegistroC100New do
           begin
             IND_OPER      := tpSaidaPrestacao;
             IND_EMIT      := edEmissaoPropria;
             COD_PART      := dm1.Sds_sped_nfprodCOD_SPED.TEXT;
             COD_MOD       := DM1.Sds_sped_nfprodMODELO_NF.TEXT;
             COD_SIT       := sdRegular;
             SER           := '01';//dm1.sds_sped_nfeSERIE_NF.TEXT;
             NUM_DOC       := FormatFloat('000000000',dm1.Sds_sped_nfprodNUM_NOTA.AsInteger);
             CHV_NFE       := ''; //dm1.Sds_sped_nfeCHAVE_ACESSO_NFE.TEXT;
             DT_DOC        := dm1.Sds_sped_nfprodDATA_PEDIDO.AsDateTime;
             DT_E_S        := dm1.Sds_sped_nfprodDATA_PEDIDO.AsDateTime;
             VL_DOC        := dm1.Sds_sped_nfprodVALOR_TOTAL.AsFloat;
             if dm1.Sds_sped_nfprodVALOR_AVISTA.AsFloat > 0 then
             BEGIN
             IND_PGTO      := tpVista;
             end else
             if dm1.Sds_sped_nfprodVALOR_PRAZO.AsFloat > 0 then
             BEGIN
             IND_PGTO      := tpPrazo;
             end else
             BEGIN
             IND_PGTO      := tpOutros;
             end;
             VL_DESC       := dm1.Sds_sped_nfprodVALOR_DESCONTO.AsFloat;
             VL_ABAT_NT    := 0;
             VL_MERC       := dm1.Sds_sped_nfprodVALOR_ITENS.AsFloat;
             IND_FRT       := tfSemCobrancaFrete;
             VL_FRT        := 0;
             VL_SEG        := 0;// StrToFloatDef(dm1.Sds_sped_nfeVL_SEGURO.Text,0);
             VL_OUT_DA     := 0;//StrToFloatDef(dm1.Sds_sped_nfeVL_OUTROS.Text,0);
             VL_BC_ICMS    := 0;//StrToFloatDef(dm1.Sds_sped_nfeVL_BASE_ICM.Text,0);
             VL_ICMS       := 0;//StrToFloatDef(dm1.Sds_sped_nfeVL_ICM.Text,0);
             VL_BC_ICMS_ST := 0;//StrToFloatDef(dm1.Sds_sped_nfeVL_BASE_ICM_SUBST.TEXT,0);
             VL_ICMS_ST    := 0;//StrToFloatDef(dm1.Sds_sped_nfeVL_ICM_SUBST.Text,0);
             VL_IPI        := 0;//StrToFloatDef(dm1.sds_sped_nfeVL_IPI.Text,0);
             VL_PIS        := 0;//StrToFloatDef(dm1.Sds_sped_nfeVL_PIS.Text,0);
             VL_COFINS     := 0;//StrToFloatDef(dm1.sds_sped_nfeVL_COFINS.Text,0);
             VL_PIS_ST     := 0;//StrToFloatDef(dm1.sds_sped_nfeVL_PIS_ST.Text,0);
             VL_COFINS_ST  := 0;//StrToFloatDef(dm1.sds_sped_nf_entVALOR_COFIS_ST.Text,0);

             // ITENS DA NOTA FISCAL PRODUTOR
              dm1.sds_sped_nfprod_itens.Active := False;
              dm1.sds_sped_nfprod_itens.Active := True;
              dm1.sds_sped_nfprod_itens.First;
              contador := 0;
              contador := dm1.sds_sped_nfprod_itens.RecordCount;
              for IItens1 := 1 to CONTADOR do
             begin
               with RegistroC170New do   //Inicio FDicionar os Itens:
               begin
                  NUM_ITEM         := FormatFloat('000', IItens1);
                  COD_ITEM         := dm1.sds_sped_nfprod_itensCODIGO_PROD.Text;///RemoveChar(dm1.sds_sped_nfe_itensCODIGO_BARRAS.Text);
                  DESCR_COMPL      := FormatFloat('NF0000000',dm1.Sds_sped_nfprodNUM_NOTA.VALUE)+' -> ITEM '+COD_ITEM;
                  QTD              := dm1.sds_sped_nfprod_itensQUANTIDADE.AsFloat;
                  UNID             := dm1.sds_sped_nfprod_itensUNIDADE.text;
                  VL_ITEM          := dm1.sds_sped_nfprod_itensPRECO_UNITARIO.AsFloat;
                  VL_DESC          := StrToFloatDef(dm1.sds_sped_nfprod_itensDESCONTO.Text,0);
                  IND_MOV          := mfNao;
                  if (dm1.sds_sped_nfprod_itensCST_VENDA.Text = '900')  or (dm1.sds_sped_nfprod_itensCST_VENDA.Text = '500') then
                  CST_ICMS    := '202'
                   else
                  CST_ICMS         := dm1.sds_sped_nfprod_itensCST_VENDA.Text;
                  CFOP             := dm1.sds_sped_nfprod_itensCFOP_NF.Text;
                  COD_NAT          := '';
                  VL_BC_ICMS       := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensVL_BASE_ICM.text,0);
                  ALIQ_ICMS        := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensALIQ_ICM.Text,0);
                  VL_ICMS          := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensVL_ICM.Text,0);
                  VL_BC_ICMS_ST    := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensVL_BASE_ICM_SUBST.Text,0);
                  ALIQ_ST          := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensALIQ_ICM_SUBST.Text,0);
                  VL_ICMS_ST       := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensVL_ICM_SUBST.Text,0);
                  IND_APUR         := iaMensal;
                  CST_IPI          := CstIpiToStr(stipiEntradaIsenta);
                  COD_ENQ          := '';
                  VL_BC_IPI        := 0;
                  ALIQ_IPI         := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensALIQ_IPI.Text,0);
                  VL_IPI           := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensVL_IPI.Text,0);
                  CST_PIS          := CstPisToStr(stpisOutrasOperacoes);
                  VL_BC_PIS        := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensVL_BASE_PIS.Text,0);;
                  ALIQ_PIS_PERC    := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensALIQ_PIS.Text,0);;
                  QUANT_BC_PIS     := 0;
                  ALIQ_PIS_R       := 0;
                  VL_PIS           := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensVL_PIS.Text,0);;
                  CST_COFINS       := CstCofinsToStr(stcofinsOutrasOperacoes);
                  VL_BC_COFINS     := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensVL_BASE_COFINS.Text,0);;
                  ALIQ_COFINS_PERC := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensALIQ_COFINS.Text,0);;
                  QUANT_BC_COFINS  := 0; //StrToFloatDef(dm1.sds_sped_nfe_itensVL_BASE_COFINS.Text,0);;
                  ALIQ_COFINS_R    := 0;
                  VL_COFINS        := 0;//StrToFloatDef(dm1.sds_sped_nfe_itensVL_COFINS.Text,0);;
                  COD_CTA          := '3.1.1.01.01';
                end; // Fim dos Itens;

            // dm1.sds_sped_nfe_itens.First;
              // contador := 0;
              // contador := dm1.sds_sped_nfe_itens.RecordCount;
              // for F := 1 to CONT do
              // begin
               {   with RegistroC176New do
                  begin
                  COD_MOD_ULT_E  := '04';
                  NUM_DOC_ULT_E  :=  FormatFloat('000000000',dm1.Sds_sped_nfprodNUM_NOTA.AsInteger + 100);
                  SER_ULT_E      :=  '01';//dm1.sds_sped_nfeSERIE_NF.TEXT;
                  DT_ULT_E       :=  dm1.Sds_sped_nfprodDATA_PEDIDO.AsDateTime;
                  COD_PART_ULT_E :=  dm1.Sds_sped_nfprodCOD_SPED.TEXT;
                  QUANT_ULT_E    :=  dm1.sds_sped_nfprod_itensQUANTIDADE.AsFloat;
                  VL_UNIT_ULT_E  :=  dm1.sds_sped_nfprod_itensPRECO_TOTAL.AsFloat;
                  VL_UNIT_BC_ST  :=  StrToFloatDef(dm1.sds_sped_nfprod_itensBASE_ICMS_SUBST.Text,0);
                 end;   }
                // end;
               dm1.sds_sped_nfprod_itens.Next;
              end;

             //c190
            { dm1.sds_sped_nfe_itens_anal.Active := False;
             dm1.sds_sped_nfe_itens_anal.Active := True;
             dm1.sds_sped_nfe_itens_anal.first;
             contador := 0;
             contador := dm1.sds_sped_nfe_itens_anal.RecordCount;
             for IItens := 1 to CONTADOR do
             begin}
               with RegistroC190New do
               begin
                  if (dm1.sds_sped_nfprod_itensCST_VENDA.Text = '900')  or (dm1.sds_sped_nfprod_itensCST_VENDA.Text = '500') then
                  CST_ICMS    := '202'
                  else
                  CST_ICMS    :=  Formatar(dm1.sds_sped_nfprod_itensCST_VENDA.Text,3,False,'0');
                  CFOP        :=  dm1.sds_sped_nfprod_itensCFOP_NF.Text;
                  ALIQ_ICMS   :=  0;//StrToFloatDef(dm1.sds_sped_nfe_itens_analALIQ_ICM.Text,0);
                  VL_OPR      :=  StrToFloatDef(dm1.Sds_sped_nfprodVALOR_TOTAL.Text,0) - StrToFloatDef(dm1.Sds_sped_nfprodVALOR_DESCONTO.Text,0);
                  VL_BC_ICMS  :=  0;//StrToFloatDef(dm1.sds_sped_nfe_itens_analVL_BASE_ICM.Text,0);
                  VL_ICMS     :=  0;//StrToFloatDef(dm1.sds_sped_nfe_itens_analVL_ICM.Text,0);
                  VL_BC_ICMS_ST := 0;//StrToFloatDef(dm1.sds_sped_nfe_itens_analVL_BASE_ICM_SUBST.Text,0);
                  VL_ICMS_ST    := 0;//StrToFloatDef(dm1.sds_sped_nfe_itens_analVALOR_ICM_SUBST.Text,0);
                  VL_RED_BC     := 0;
                  VL_IPI        := 0;//StrToFloatDef(dm1.sds_sped_nfe_itens_analVL_IPI.Text,0);
                  COD_OBS       := '';
               end;//Fim dos Itens;
              // dm1.sds_sped_nfe_itens_anal.Next;
             end;
             dm1.Sds_sped_nfprod.Next;
           end;


          Label4.Caption:='Gerando Notas Fiscais Consumidor NFC-E de Vendas ....';

         modelo :='65';
         dm1.sds_nfce.Active := False;
         dm1.sds_nfce.Active := True;
         dm1.sds_nfce.Filtered := False;
        // dm1.sds_nfce.Filter := 'chave_acesso_nfe is not null and ' + 'DT_EMISSAO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DT_EMISSAO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
          dm1.sds_nfce.Filter := 'DT_EMISSAO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DT_EMISSAO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
         dm1.sds_nfce.Filtered := TRUE;
         dm1.sds_nfce.First;
         NNotas := 0;
         NNotas := dm1.sds_nfce.RecordCount;
         for INotas := 1 to NNotas do
         begin
           with RegistroC100New do
           begin
            IF (dm1.sds_nfceSTATUS_INUTILIZADO.Text = 'S') or (dm1.sds_nfceCHAVE_ACESSO_NFE.Text = '') then
            BEGIN
             IND_OPER      := tpSaidaPrestacao;
             IND_EMIT      := edEmissaoPropria;
             COD_PART      := '';
             COD_MOD       := modelo;
             COD_SIT       := sdDoctoNumInutilizada;
             SER           := '1';
             NUM_DOC       := FormatFloat('000000000',dm1.sds_nfceNR_NOTA.AsInteger);
            end ELSE
            IF dm1.sds_nfceSTATUS_CANCELADO.Text = 'S' then
            BEGIN
             IND_OPER      := tpSaidaPrestacao;
             IND_EMIT      := edEmissaoPropria;
             COD_PART      := '';
             COD_MOD       := modelo;
             COD_SIT       := sdCancelado;
             SER           := '1';
             NUM_DOC       := FormatFloat('000000000',dm1.sds_nfceNR_NOTA.AsInteger);
             CHV_NFE       := dm1.Sds_nfceCHAVE_ACESSO_NFE.TEXT;
             end ELSE
             BEGIN

             IND_OPER      := tpSaidaPrestacao;
             IND_EMIT      := edEmissaoPropria;
             COD_PART      := '';
             COD_MOD       := modelo;
             COD_SIT       := sdRegular;
             SER           := '1';
             NUM_DOC       := FormatFloat('000000000',dm1.sds_nfceNR_NOTA.AsInteger);
             CHV_NFE       := dm1.Sds_nfceCHAVE_ACESSO_NFE.TEXT;
             DT_DOC        := dm1.sds_nfceDT_EMISSAO.AsDateTime;
             DT_E_S        := dm1.sds_nfceDT_EMISSAO.AsDateTime;
             VL_DOC        := dm1.sds_nfceVL_TOTAL.AsFloat;
             if DM1.SDS_NFcETP.TEXT ='A' then
             begin
             IND_PGTO      := tpVista;
             end else
             if DM1.SDS_NFcETP.TEXT ='C' then
             begin
              IND_PGTO      := tpPrazo;
             end else
             begin
             IND_PGTO      := tpOutros;
             end;

             VL_DESC       := dm1.sds_nfceVL_DESCONTOS.AsFloat;
             VL_ABAT_NT    := 0;
             VL_MERC       := dm1.sds_nfceVL_MERCADORIAS.AsFloat;
             IND_FRT       := tfSemCobrancaFrete;
             VL_FRT        := 0;
             VL_SEG        := StrToFloatDef(dm1.sds_nfceVL_SEGURO.Text,0);
             VL_OUT_DA     := StrToFloatDef(dm1.sds_nfceVL_OUTROS.Text,0);
             VL_BC_ICMS    := StrToFloatDef(dm1.sds_nfceVL_BASE_ICM.Text,0);
             VL_ICMS       := StrToFloatDef(dm1.sds_nfceVL_ICM.Text,0);
             VL_BC_ICMS_ST := StrToFloatDef(dm1.sds_nfceVL_BASE_ICM_SUBST.TEXT,0);
             VL_ICMS_ST    := StrToFloatDef(dm1.Sds_nfceVL_ICM_SUBST.Text,0);
             VL_IPI        := StrToFloatDef(dm1.sds_nfceVL_IPI.Text,0);
            // VL_PIS        := StrToFloatDef(dm1.sds_nfceVL_PIS.Text,0);
            // VL_COFINS     := StrToFloatDef(dm1.sds_nfceVL_COFINS.Text,0);
            // VL_PIS_ST     := null;//StrToFloatDef(dm1.sds_nfceVL_pisPIS_ST.Text,0);
            // VL_COFINS_ST  := null; //StrToFloatDef(dm1.sds_nfceVALOR_COFIS_ST.Text,0);

            { dm1.sds_nfce_anal.Active := False;
             dm1.sds_nfce_anal.Active := True;
             dm1.sds_nfce_anal.first;
             contador := 0;
             contador := dm1.sds_nfce_anal.RecordCount;
             for IItens := 1 to CONTADOR do
             begin
               with RegistroC190New do
               begin
                  CST_ICMS    :=  Formatar(dm1.sds_nfce_analCST.Text,3,False,'0');
                  CFOP        :=  dm1.sds_nfce_analCFOP.Text;
                  ALIQ_ICMS   :=  StrToFloatDef(dm1.sds_nfce_analALIQ_ICM.Text,0);
                  VL_OPR      :=  StrToFloatDef(dm1.sds_nfce_analVL_TOTAL.Text,0);
                  VL_BC_ICMS  :=  StrToFloatDef(dm1.sds_nfce_analVL_BASE_ICM.Text,0);
                  VL_ICMS     :=  StrToFloatDef(dm1.sds_nfce_analVL_ICM.Text,0);
                  VL_BC_ICMS_ST := StrToFloatDef(dm1.sds_nfce_analVL_BASE_ICM_SUBST.Text,0);
                  VL_ICMS_ST    := StrToFloatDef(dm1.sds_nfce_analVALOR_ICM_SUBST.Text,0);
                  VL_RED_BC     := 0;
                  VL_IPI        := StrToFloatDef(dm1.sds_nfce_analVL_IPI.Text,0);
                  COD_OBS       := '';
               end;
               dm1.sds_nfce_anal.Next;
             end; }

             
              with RegistroC190New do
               begin
                  CST_ICMS      :=  '090';
                  CFOP          :=  dm1.sds_nfceCD_CFOP.TEXT;
                  ALIQ_ICMS     :=   0;
               //   VL_OPR        :=   dm1.sds_nfceVL_MERCADORIAS.AsFloat - dm1.sds_nfceVL_DESCONTOS.AsFloat;
                  VL_OPR        :=   dm1.sds_nfceVL_MERCADORIAS.AsFloat - dm1.sds_nfceVL_DESCONTOS.AsFloat;
                  VL_BC_ICMS    :=   0;
                  VL_ICMS       :=   StrToFloatDef(dm1.sds_nfce_analVL_ICM.Text,0);
                  VL_BC_ICMS_ST := 0;
                  VL_ICMS_ST    := 0;
                  VL_RED_BC     := 0;
                  VL_IPI        := 0;
                  COD_OBS       := '';
               end;
              END;
             dm1.sds_nfce.Next;
           end;
          end;

           if cbConcomitante.Checked then
           begin
              if (INotas mod BNotas) = 0 then   // Gravar a cada N notas
              begin
                 // Grava registros na memoria para o TXT, e limpa memoria
                 ACBrSPEDFiscal1.WriteBloco_C( False );  // False, NAO fecha o Bloco
                 ProgressBar1.Position := INotas;
                 Application.ProcessMessages;
              end;
           end;
         end;

        if CheckBox7.Checked = True then
        begin
          //.................. dados do ecf ACBR....................

         // IF DM.SDS_CONFIGURACOESMODELO_ECF.Text ='2' then
          begin
            Label4.Caption:='Gerando dados do ecf....';
            dm1.Sds_ecf.Active := False;
            dm1.Sds_ecf.Active := true;
            dm1.Sds_ecf.First;
            contador := 0;
            contador := dm1.Sds_ecf.RecordCount;
             // DADOS DO ECF
          for  A:= 1 to CONTADOR do
          begin
            with RegistroC400New do
            begin
             cod_mod := DM1.Sds_ecfCOD_MOD.AsString;
             eCF_MOD := DM1.Sds_ecfECF_MOD.Value;
             eCF_FAB := DM1.Sds_ecfECF_FAB.Text; // nº serie
             ECF_CX :=  DM1.Sds_ecfECF_CX.Text;
            end;

            // dados das reduções z
            Label4.Caption:='Gerando dados das reduções z....';

            dm1.Sds_Red_Z.Active := False;
            dm1.Sds_Red_Z.Active := true;
            DM1.Sds_Red_Z.Filtered := False;
            DM1.Sds_Red_Z.Filter := 'DT_COD >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DT_COD <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
            DM1.Sds_Red_Z.Filtered := TRUE;
            DM1.Sds_Red_Z.First;
            contador := 0;
            contador := DM1.Sds_Red_Z.RecordCount;
            for  B:= 1 to CONTADOR do
            begin
              with RegistroC405New do
              begin
               DT_DOC       := DM1.Sds_Red_ZDT_COD.AsDateTime;
               NUM_COO_FIN  := DM1.Sds_Red_ZCOO.AsInteger;
               CRO          := DM1.Sds_Red_ZCRO.AsInteger;
               CRZ          := DM1.Sds_Red_ZCRZ.AsInteger;
               GT_FIN       := DM1.Sds_Red_ZGT_FIN.AsFloat;
               VL_BRT       := DM1.Sds_Red_ZVL_BRT.AsFloat;
               end;

              dm1.Sds_pis_Cofins.Active := False;
              dm1.Sds_pis_Cofins.Active := true;
              dm1.Sds_pis_Cofins.Filtered := False;
              dm1.Sds_pis_Cofins.Filter := 'DATA_PEDIDO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
              dm1.Sds_pis_Cofins.Filtered := TRUE;
              dm1.Sds_pis_Cofins.First;
              contador := 0;
              contador := dm1.Sds_pis_Cofins.RecordCount;
              for  F:= 1 to CONTADOR do
              begin
                with RegistroC410New do // PIS COFINS
              begin
               VL_PIS := dm1.Sds_pis_CofinsVL_PIS.AsFloat;
               VL_COFINS := dm1.Sds_pis_CofinsVL_COFINS.AsFloat;
              end;
              dm1.Sds_pis_Cofins.Next;
              end;

              if ComboBox3.ItemIndex = 0 then
              begin
                dm1.SDS_TOTAL_Z_1.Active := False;
                dm1.SDS_TOTAL_Z_1.Active := true;
                dm1.SDS_TOTAL_Z_1.Filtered := False;
                dm1.SDS_TOTAL_Z_1.Filter := 'VALOR_TOTALIZADOR > 0 and DATA >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DATA <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
                dm1.SDS_TOTAL_Z_1.Filtered := TRUE;
                dm1.SDS_TOTAL_Z_1.First;
                contador:=0;
                contador := dm1.SDS_TOTAL_Z_1.RecordCount;
                for  C:= 1 to CONTADOR do
                begin
                  with RegistroC420New do  // TOTALIZADOR PARCIAL
                  begin
                    {IF dm1.SDS_TOTAL_Z_1TOTALIZADOR_Z.Text = 'T0001' THEN
                    COD_TOT_PAR   := '06T0001'
                    ELSE }
                   // BEGIN
                    COD_TOT_PAR   := dm1.SDS_TOTAL_Z_1TOTALIZADOR_Z.Text;
                    VLR_ACUM_TOT  := dm1.SDS_TOTAL_Z_1VALOR_TOTALIZADOR.AsFloat;
                    IF dm1.SDS_TOTAL_Z_1N_TOTALIZADOR.Text = '' THEN
                    begin
                   // NR_TOT        := NullBcd;
                   // DESCR_NR_TOT  :=;
                    end else
                    begin
                    NR_TOT        := dm1.SDS_TOTAL_Z_1N_TOTALIZADOR.AsInteger;
                    DESCR_NR_TOT  := 'Totalizador '+ dm1.SDS_TOTAL_Z_1N_TOTALIZADOR.AsString; //dm1.SDS_TOTAL_Z_1DESCRICAO.Text;
                    end;
                  //end;
                  end;
                  dm1.SDS_TOTAL_Z_1.Next;
                end;

                   dm1.sds_sped_copons.Active := False;
                   dm1.sds_sped_copons.Active := true;
                   dm1.sds_sped_copons.Filtered := False;
                   dm1.sds_sped_copons.Filter := 'CRZ ='+QuotedStr(DM1.Sds_Red_ZCRZ.Text) + ' and n_ecf='+'000'+ DM1.Sds_ecfECF_CX.Text;
                  // dm1.sds_sped_copons.Filter := 'DATA_PEDIDO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)))+ ' and n_ecf='+'000'+ DM1.Sds_ecfECF_CX.Text;
                   dm1.sds_sped_copons.Filtered := TRUE;

                   dm1.sds_sped_copons.First;
                   contador:=0;
                   contador := dm1.sds_sped_copons.RecordCount;
                   for  D:= 1 to CONTADOR do
                   begin
                      with RegistroC460New do // DOC FISCAL CUPON MOD 2D NF AO CONSUMIDOR MOD. 02
                      begin
                      COD_MOD     := '2D';
                      COD_SIT     := sdRegular;  //00 REGULAR //02 CANCELADO
                      NUM_DOC     := dm1.sds_sped_coponsN_CUPOM.Text;
                      DT_DOC      := dm1.sds_sped_coponsDATA_PEDIDO.AsDateTime;
                      VL_DOC      := dm1.sds_sped_coponsVALOR_TOTAL.AsFloat;
                      VL_PIS      := StringToFloatDef(dm1.sds_sped_coponsVLR_PIS.Text,0);
                      VL_COFINS   := StringToFloatDef(dm1.sds_sped_coponsVLR_COFINS.Text,0);
                      CPF_CNPJ    := '';//TrimChar(dm1.sds_sped_coponsCPF_CNPJ.Text,' ');
                      NOM_ADQ     := dm1.sds_sped_coponsNOME_CLIENTE.Text;
                      end;

                      //  itens do cupon //
                      dm1.SDS_Sped_cupons_itens.Active := False;
                      dm1.SDS_Sped_cupons_itens.Active := true;
                      dm1.SDS_Sped_cupons_itens.Filtered := False;
                      dm1.SDS_Sped_cupons_itens.Filter := 'CRZ ='+QuotedStr(DM1.Sds_Red_ZCRZ.Text) + ' and n_ecf='+'000'+ DM1.Sds_ecfECF_CX.Text;
                    //  dm1.SDS_Sped_cupons_itens.Filter := 'DATA_PEDIDO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
                      dm1.SDS_Sped_cupons_itens.Filtered := TRUE;
                      dm1.SDS_Sped_cupons_itens.First;
                      contador:=0;
                      contador := dm1.SDS_Sped_cupons_itens.RecordCount;
                      for  E:= 1 to CONTADOR do
                      begin
                       with RegistroC470New do // ITENS DO CUPOM OU NF CONSUMIDOR
                       begin
                        COD_ITEM  := dm1.SDS_Sped_cupons_itensCODIGO_PROD.Text;//RemoveChar(dm1.SDS_Sped_cupons_itensCODIGO_PRODUTO.Text);
                        QTD       := dm1.SDS_Sped_cupons_itensQUANTIDADE.AsFloat;
                        QTD_CANC  := dm1.SDS_Sped_cupons_itensQNT_DEV.AsFloat;
                        UNID      := dm1.SDS_Sped_cupons_itensCOD_UNIDADE.Text;

                        if DM.SDS_CONFIGURACOESTP_DESC.Text = 'T' then
                        BEGIN
                        VL_ITEM   := dm1.SDS_Sped_cupons_itensPRECO_TOTAL.AsFloat - dm1.SDS_Sped_cupons_itensDESCONTO.AsFloat;
                        if VL_ITEM  > 0 then
                        begin
                        VL_ITEM   := VL_ITEM;
                        end else
                        if VL_ITEM  < 0 then
                        begin
                        VL_ITEM   := 0;
                        end;
                        end  else
                        if DM.SDS_CONFIGURACOESTP_DESC.Text = 'U' then
                        BEGIN
                        VL_ITEM   := dm1.SDS_Sped_cupons_itensPRECO_TOTAL.AsFloat;
                        end ;

                       { if dm.SDS_EmpresaREGIME.Text = 'S' then
                        begin
                        CST_ICMS  := '900';
                        end else
                        if dm.SDS_EmpresaREGIME.Text = 'P' then
                        begin
                        CST_ICMS  := '090';
                        end else
                        if dm.SDS_EmpresaREGIME.Text = 'R' then
                        begin
                        CST_ICMS  := '090';
                        end; }
                        CST_ICMS  := dm1.SDS_Sped_cupons_itensCST_VENDA.text;
                      {  if  dm1.SDS_Sped_cupons_itensSIT_TRIBUTARIA.Text = '5,00' then
                         CFOP      := '5933'
                        else}
                        CFOP      := dm1.SDS_Sped_cupons_itensCFOP_EST_VENDA.text;

                        if  ((dm1.SDS_Sped_cupons_itensSIT_TRIBUTARIA.Text = 'FF') OR (dm1.SDS_Sped_cupons_itensSIT_TRIBUTARIA.Text = 'II') OR (dm1.SDS_Sped_cupons_itensSIT_TRIBUTARIA.Text = 'NN') OR (dm1.SDS_Sped_cupons_itensSIT_TRIBUTARIA.Text = '5,00')) then
                        begin
                        ALIQ_ICMS := 0;
                        VL_PIS    := 0;
                        VL_COFINS := 0;
                        end else
                        if  ((dm1.SDS_Sped_cupons_itensSIT_TRIBUTARIA.TEXT = '0,01') OR (dm1.SDS_Sped_cupons_itensSIT_TRIBUTARIA.Text = '7,00') OR (dm1.SDS_C490SIT_TRIBUTARIA.Text = '12,00') OR (dm1.SDS_Sped_cupons_itensSIT_TRIBUTARIA.Text = '17,00') OR (dm1.SDS_Sped_cupons_itensSIT_TRIBUTARIA.Text = '25,00'))  then
                        BEGIN
                        ALIQ_ICMS := StrToFloat(dm1.SDS_Sped_cupons_itensSIT_TRIBUTARIA.Text);
                        VL_PIS    := StrToFloatDef(dm1.SDS_Sped_cupons_itensVL_PIS.Text,0);
                        VL_COFINS := StrToFloatDef(dm1.SDS_Sped_cupons_itensVL_COFINS.Text,0);
                        end;
                        end;
                        dm1.SDS_Sped_cupons_itens.Next;
                      end;

                     dm1.sds_sped_copons.Next;
                     end;


                      dm1.SDS_C490.Active := False;
                      dm1.SDS_C490.Active := true;
                      dm1.SDS_C490.Filtered := False;
                      dm1.SDS_C490.Filter := 'CRZ ='+QuotedStr(DM1.Sds_Red_ZCRZ.Text)+ ' and ecf='+'000'+ DM1.Sds_ecfECF_CX.Text;
                      //  dm1.SDS_C490.Filter := 'DATA_PEDIDO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
                      dm1.SDS_C490.Filtered := TRUE;
                      dm1.SDS_C490.First;
                      contador:=0;
                      contador := dm1.SDS_C490.RecordCount;
                      for  G:= 1 to CONTADOR do
                      begin
                      with RegistroC490New do // REGISTRO ANALITICO DA VDA
                      begin
                        if dm.SDS_EmpresaREGIME.Text = 'S' then
                        begin
                        CST_ICMS  := dm1.SDS_C490CST_VENDA.text;
                        end else
                        if dm.SDS_EmpresaREGIME.Text = 'P' then
                        begin
                         CST_ICMS  := dm1.SDS_C490CST_VENDA.text;
                        end else
                        if dm.SDS_EmpresaREGIME.Text = 'R' then
                        begin
                        CST_ICMS  := dm1.SDS_C490CST_VENDA.text;
                        end;
                        CFOP      := dm1.SDS_C490CFOP_EST_VENDA.Text;
                        VL_OPR    := dm1.SDS_C490VALOR_TOTAL.AsFloat - dm1.SDS_C490VALOR_DESCONTO.AsFloat;
                        if  ((dm1.SDS_C490SIT_TRIBUTARIA.Text = 'FF') OR (dm1.SDS_C490SIT_TRIBUTARIA.Text = 'II') OR (dm1.SDS_C490SIT_TRIBUTARIA.Text = 'NN') OR (dm1.SDS_C490SIT_TRIBUTARIA.Text = '5,00')) then
                        begin
                        ALIQ_ICMS := 0;
                        VL_BC_ICMS:= 0;
                        VL_ICMS   := 0;
                        COD_OBS   := '';
                        end else
                        if  ((dm1.SDS_C490SIT_TRIBUTARIA.TEXT = '0,01') OR (dm1.SDS_C490SIT_TRIBUTARIA.Text = '7,00') OR (dm1.SDS_C490SIT_TRIBUTARIA.Text = '12,00') OR (dm1.SDS_C490SIT_TRIBUTARIA.Text = '17,00') OR (dm1.SDS_C490SIT_TRIBUTARIA.Text = '25,00'))  then
                        begin
                        ALIQ_ICMS := StrToFloat(dm1.SDS_C490SIT_TRIBUTARIA.TEXT);
                        VL_BC_ICMS:= dm1.SDS_C490VALOR_TOTAL.AsFloat - dm1.SDS_C490VALOR_DESCONTO.AsFloat;
                        VL_ICMS   := dm1.SDS_C490VALOR_ICMS.AsFloat;
                        COD_OBS   := '';
                        end;
                        dm1.SDS_C490.Next;
                        end;
                        end;

                 end else

                // perfil B
               if ComboBox3.ItemIndex = 1 then
               begin
                dm1.SDS_TOTAL_Z_1.Active := False;
                dm1.SDS_TOTAL_Z_1.Active := true;
                dm1.SDS_TOTAL_Z_1.Filtered := False;
                dm1.SDS_TOTAL_Z_1.Filter := 'VALOR_TOTALIZADOR > 0 and DATA >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DATA <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
                dm1.SDS_TOTAL_Z_1.Filtered := TRUE;
                dm1.SDS_TOTAL_Z_1.First;
                contador:=0;
                contador := dm1.SDS_TOTAL_Z_1.RecordCount;
                for  C:= 1 to CONTADOR do
                begin
                  with RegistroC420New do  // TOTALIZADOR PARCIAL
                  begin
                    COD_TOT_PAR   := dm1.SDS_TOTAL_Z_1TOTALIZADOR_Z.Text;
                    VLR_ACUM_TOT  := dm1.SDS_TOTAL_Z_1VALOR_TOTALIZADOR.AsFloat;
                    NR_TOT        := dm1.SDS_TOTAL_Z_1N_TOTALIZADOR.AsInteger;
                    DESCR_NR_TOT  := dm1.SDS_TOTAL_Z_1DESCRICAO.Text;
                  end;

                      dm1.SDS_Sped_cupons_itens_B.Active := False;
                      dm1.SDS_Sped_cupons_itens_B.Active := true;
                      dm1.SDS_Sped_cupons_itens_B.Filtered := False;
                      dm1.SDS_Sped_cupons_itens_B.Filter := 'DATA_PEDIDO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
                      dm1.SDS_Sped_cupons_itens_b.Filtered := TRUE;
                      dm1.SDS_Sped_cupons_itens_B.First;
                      contador:=0;
                      contador := dm1.SDS_Sped_cupons_itens_B.RecordCount;
                      for  E:= 1 to CONTADOR do
                      begin
                       with RegistroC425New do // ITENS DO CUPOM OU NF CONSUMIDOR
                       begin
                        COD_ITEM  := dm1.SDS_Sped_cupons_itens_BCODIGO_PROD.AsString;//RemoveChar(dm1.SDS_Sped_cupons_itens_BCODIGO_PRODUTO.Text);
                        QTD       := dm1.SDS_Sped_cupons_itens_bqtd.AsFloat;
                        UNID      := dm1.SDS_Sped_cupons_itens_Bcodigo.Text;
                        VL_ITEM   := dm1.SDS_Sped_cupons_itens_BTOTAL_iten.AsFloat;
                        VL_PIS    := StrToFloatDef(dm1.SDS_Sped_cupons_itens_BVL_PIS.Text,0);
                        VL_COFINS := StrToFloatDef(dm1.SDS_Sped_cupons_itens_BVL_COFINS.Text,0);
                        end;
                        dm1.SDS_Sped_cupons_itens_B.Next;
                      end;
                     dm1.SDS_TOTAL_Z_1.Next;
                   end;

                      with RegistroC490New do // REGISTRO ANALITICO DA VDA
                      begin
                        if dm.SDS_EmpresaREGIME.Text = 'S' then
                        begin
                        CST_ICMS  := DM.SDS_CONFIGURACOESCST_CUPON.text;
                        end else
                        if dm.SDS_EmpresaREGIME.Text = 'P' then
                        begin
                         CST_ICMS  := DM.SDS_CONFIGURACOESCST_CUPON.text;
                        end else
                        if dm.SDS_EmpresaREGIME.Text = 'R' then
                        begin
                        CST_ICMS  := DM.SDS_CONFIGURACOESCST_CUPON.text;
                        end;
                        CFOP      := DM.SDS_CONFIGURACOESCfop_CUPON.text;
                        ALIQ_ICMS := 0;
                        VL_OPR    := DM1.Sds_Red_ZVL_BRT.AsFloat;//dm1.sds_sped_coponsVaLOR_ITENS.AsFloat;
                        VL_BC_ICMS:= 0;
                        VL_ICMS   := 0;
                        COD_OBS   := '';
                        end;

                  end;

                 DM1.Sds_Red_Z.Next;
                end;

              dm1.Sds_ecf.Next;
            end;

            end;
           end;

          // 06-CONTAS DE ENERGIA - 28- GAS - 29 - FORNECIMENTO AGUA
         dm1.sds_sped_nf_ent.Active := False;
         dm1.sds_sped_nf_ent.DataSet.CommandText:='select * from V_SPED_NOTAS_FISCAIS_06 order by codigo_nota asc';
         dm1.sds_sped_nf_ent.Active := True;
         dm1.sds_sped_nf_ent.Filtered := False;
         dm1.sds_sped_nf_ent.Filter := 'DATA_EMISSAO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DATA_EMISSAO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
         dm1.sds_sped_nf_ent.Filtered := TRUE;

         dm1.sds_sped_nf_ent.First;
         NNotas := 0;
         NNotas := dm1.sds_sped_nf_ent.RecordCount;
         for INotas := 1 to NNotas do
         begin
         with RegistroC500New do
          begin
            IND_OPER      := tpEntradaAquisicao;
             IND_EMIT      := dm1.sds_sped_nf_entEMITENTE.AsVariant;//edTerceiros;
             COD_PART      := dm1.sds_sped_nf_entCOD_SPED.TEXT;
             COD_MOD       := dm1.sds_sped_nf_entMODELO.Text; //'55';
             COD_SIT       := sdRegular;
             SER           := dm1.sds_sped_nf_entSERIE_NF.TEXT;
             SUB           := ''; //dm1.sds_sped_nf_entSUB_SERIE.TEXT;
             COD_CONS      := '02';
             NUM_DOC       := FormatFloat('000000000',dm1.sds_sped_nf_entNUM_NOTA.AsInteger);
            // CHV       := dm1.sds_sped_nf_entCHAVE_NFE.TEXT;
             DT_DOC        := dm1.sds_sped_nf_entDATA_EMISSAO.AsDateTime;
             DT_E_S        := dm1.sds_sped_nf_entDATA_EMISSAO.AsDateTime;
             VL_DOC        := dm1.sds_sped_nf_entTOTAL_NOTA.AsFloat;
             VL_DESC       :=  dm1.sds_sped_nf_entVALOR_DESCONTO.AsFloat;
             VL_FORN       :=  dm1.sds_sped_nf_entVALOR_TOTAL_PRODUTOS.AsFloat;
             VL_SERV_NT    := dm1.sds_sped_nf_entVALOR_TOTAL_PRODUTOS.AsFloat;
             VL_TERC       :=  0;
             VL_DA         :=  dm1.sds_sped_nf_entVALOR_OUTRAS_DESPESAS.AsFloat;
             VL_BC_ICMS    := dm1.sds_sped_nf_entBASE_CALCULO_ICMS.AsFloat;
             VL_ICMS       := dm1.sds_sped_nf_entVALOR_ICMS.AsFloat;
             VL_BC_ICMS_ST := dm1.sds_sped_nf_entBASE_CALCULO_ICMS.AsFloat;
             VL_ICMS_ST    := dm1.sds_sped_nf_entVALOR_ICMS_SUBST.AsFloat;
             COD_INF       := '';
             VL_PIS        := dm1.sds_sped_nf_entVALOR_PIS.AsFloat;
             VL_COFINS     := dm1.sds_sped_nf_entVALOR_COFINS.AsFloat ;
           //  TP_LIGACAO    := TP_LIGACAO;
           //  COD_GRUPO_TENSAO := '07';

           // contador :=0;
           // contador := dm1.sds_sped_nf_ent.RecordCount;
          //  For IItens := 1 to CONTADOR do
             begin
               with RegistroC590New do
               begin
                  {  if dm.SDS_EmpresaREGIME.Text = 'S' then
                        begin
                        CST_ICMS  := '900';
                        end else
                        if dm.SDS_EmpresaREGIME.Text = 'P' then
                        begin
                        CST_ICMS  := '090';
                        end else
                        if dm.SDS_EmpresaREGIME.Text = 'R' then
                        begin
                        CST_ICMS  := '090';
                        end; }
                  CST_ICMS      :=  '000'; //Formatar(dm1.sds_sped_nf_entCST.Text,3,False,'0');
                  CFOP          :=  dm1.sds_sped_nf_entCFOP_NOTA.Text;
                  ALIQ_ICMS     :=  StrToFloatDef(dm1.sds_sped_nf_entPERC_ICMS.Text,0);
                  VL_OPR        :=  dm1.sds_sped_nf_entTOTAL_NOTA.AsFloat;//StrToFloatDef(dm1.sds_sped_nf_ent_itens_analTOTAL_NOTA.Text,0);
                  VL_BC_ICMS    :=  StrToFloatDef(dm1.sds_sped_nf_entBASE_CALCULO_ICMS.Text,0);
                  VL_ICMS       :=  StrToFloatDef(dm1.sds_sped_nf_entVALOR_ICMS.Text,0);
                  VL_BC_ICMS_st := StrToFloatDef(dm1.sds_sped_nf_entBASE_CALC_ICMS_SUBST.Text,0);
                  VL_ICMS_ST    := 0; //StrToFloatDef(dm1.sds_sped_nf_entVALOR_ICMS_SUBST.Text,0);
                  //ValorC500:=  ValorC500 + VL_ICMS_ST;
                  VL_RED_BC     := 0;
              //  VL_IPI        := StrToFloatDef(dm1.sds_sped_nf_ent_itens_analVALOR_IPI.Text,0);
                  COD_OBS       := '';
               end;
           end;
           dm1.sds_sped_nf_ent.Next;
          end;

          end;


          Label4.Caption :='Fim da Geracção do Bloco C';
          end;


   if cbConcomitante.Checked then
   begin
      ACBrSPEDFiscal1.WriteBloco_C(True);  // True, fecha o Bloco
      LoadToMemo;
   end;

   ProgressBar1.Visible := False ;
  end;
end;

procedure TFormSPEDFiscal.btnB_DClick(Sender: TObject);
var
INotas, contador1, contador, CONT: Integer;
IItens: Integer;
NNotas: Integer;
BNotas, A, B,C, D, E, F, G: Integer;
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco D.

   with ACBrSpedFiscal1.Bloco_D do
   begin
      //gera cte
      with RegistroD001New do
      begin
          IND_MOV := imComDados;

       if CheckBox5.Checked = True then
       begin
         // cte - entrada
         dm1.sds_sped_nf_ent.Active := False;
         dm1.sds_sped_nf_ent.DataSet.CommandText:='select * from V_SPED_NOTAS_FISCAIS_57 order by codigo_nota asc';
         dm1.sds_sped_nf_ent.Active := True;
         dm1.sds_sped_nf_ent.Filtered := False;
         dm1.sds_sped_nf_ent.Filter := 'DATA_CADASTRO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DATA_CADASTRO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
         dm1.sds_sped_nf_ent.Filtered := TRUE;

         NNotas := 0;
         NNotas := dm1.sds_sped_nf_ent.RecordCount;
         dm1.sds_sped_nf_ent.First;
         for INotas := 1 to NNotas do
         begin
          with RegistroD100New do
           begin
             IND_OPER      := tpEntradaAquisicao;
             IND_EMIT      := dm1.sds_sped_nf_entEMITENTE.AsVariant;//edTerceiros;
             COD_PART      := dm1.sds_sped_nf_entCOD_SPED.TEXT;
             COD_MOD       := dm1.sds_sped_nf_entMODELO.Text; //'55';
             COD_SIT       := sdRegular;
             SER           := dm1.sds_sped_nf_entSERIE_NF.TEXT;
             SUB           := '';
             NUM_DOC       := FormatFloat('000000000',dm1.sds_sped_nf_entNUM_NOTA.AsInteger);
             CHV_CTE       := dm1.sds_sped_nf_entCHAVE_NFE.TEXT;
             DT_DOC        := dm1.sds_sped_nf_entDATA_EMISSAO.AsDateTime;
             DT_A_P        := dm1.sds_sped_nf_entDATA_EMISSAO.AsDateTime;
             TP_CT_e       := '0';
             CHV_CTE_REF   := '';
             VL_DOC        := dm1.sds_sped_nf_entTOTAL_NOTA.AsFloat;
             VL_DESC       := dm1.sds_sped_nf_entVALOR_DESCONTO.AsFloat;
            // IND_FRT     := ;
             VL_SERV       := dm1.sds_sped_nf_entVALOR_TOTAL_PRODUTOS.AsFloat;
             VL_BC_ICMS    := dm1.sds_sped_nf_entBASE_CALCULO_ICMS.AsFloat;
             VL_ICMS       := dm1.sds_sped_nf_entVALOR_ICMS.AsFloat;
             VL_NT         := 0;
             COD_INF       := '';
             COD_CTA       := '1.1.4.01.01';

           // contador :=0;
           //  contador := dm1.sds_sped_nf_ent.RecordCount;
           // For IItens := 1 to CONTADOR do
             begin
               with RegistroD190New do
               begin
                       {  if dm.SDS_EmpresaREGIME.Text = 'S' then
                        begin
                        CST_ICMS  := '900';
                        end else
                        if dm.SDS_EmpresaREGIME.Text = 'P' then
                        begin
                        CST_ICMS  := '090';
                        end else
                        if dm.SDS_EmpresaREGIME.Text = 'R' then
                        begin
                        CST_ICMS  := '090';
                        end; }
                  CST_ICMS      :=  '000'; //Formatar(dm1.sds_sped_nf_entCST.Text,3,False,'0');
                  CFOP          :=  dm1.sds_sped_nf_entCFOP_NOTA.Text;
                  ALIQ_ICMS     :=  StrToFloatDef(dm1.sds_sped_nf_entPERC_ICMS.Text,0);
                  VL_OPR        :=  dm1.sds_sped_nf_entTOTAL_NOTA.AsFloat;//StrToFloatDef(dm1.sds_sped_nf_ent_itens_analTOTAL_NOTA.Text,0);
                  VL_BC_ICMS    :=  StrToFloatDef(dm1.sds_sped_nf_entBASE_CALCULO_ICMS.Text,0);
                  VL_ICMS       :=  StrToFloatDef(dm1.sds_sped_nf_entVALOR_ICMS.Text,0);
              //  VL_BC_ICMS_st := StrToFloatDef(dm1.sds_sped_nf_ent_itens_analBASE_ICMS_ST.Text,0);
              //  VL_ICMS_ST    := StrToFloatDef(dm1.sds_sped_nf_ent_itens_analVALOR_ICMS_ST.Text,0);
                  VL_RED_BC     := 0;
              //  VL_IPI        := StrToFloatDef(dm1.sds_sped_nf_ent_itens_analVALOR_IPI.Text,0);
                  COD_OBS       := '';
               end;
            end;
           dm1.sds_sped_nf_ent.Next;
          end;
         // dm1.sds_sped_nf_ent.Next;
          end;

         // notas fiscais telefone
         dm1.sds_sped_nf_ent.Active := False;
         dm1.sds_sped_nf_ent.DataSet.CommandText:='select * from V_SPED_NOTAS_FISCAIS_22 order by codigo_nota asc';
         dm1.sds_sped_nf_ent.Active := True;
         dm1.sds_sped_nf_ent.Filtered := False;
         dm1.sds_sped_nf_ent.Filter := 'DATA_CADASTRO >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DATA_CADASTRO <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
         dm1.sds_sped_nf_ent.Filtered := TRUE;

         dm1.sds_sped_nf_ent.First;
         NNotas := 0;
         NNotas :=  dm1.sds_sped_nf_ent.RecordCount;
         for INotas := 1 to NNotas do
         begin
          with RegistroD500New do
           begin
            IND_OPER      := tpEntradaAquisicao;
             IND_EMIT      := dm1.sds_sped_nf_entEMITENTE.AsVariant;//edTerceiros;
             COD_PART      := dm1.sds_sped_nf_entCOD_SPED.TEXT;
             COD_MOD       := dm1.sds_sped_nf_entMODELO.Text; //'55';
             COD_SIT       := sdRegular;
             SER           := dm1.sds_sped_nf_entSERIE_NF.TEXT;
             SUB           := dm1.sds_sped_nf_entSUB_SERIE.TEXT;
             NUM_DOC       := FormatFloat('000000000',dm1.sds_sped_nf_entNUM_NOTA.AsInteger);
            // CHV_CTE       := dm1.sds_sped_nf_entCHAVE_NFE.TEXT;
             DT_DOC        := dm1.sds_sped_nf_entDATA_EMISSAO.AsDateTime;
             DT_A_P        := dm1.sds_sped_nf_entDATA_EMISSAO.AsDateTime;
             VL_DOC        := dm1.sds_sped_nf_entTOTAL_NOTA.AsFloat;
             VL_DESC       :=  dm1.sds_sped_nf_entVALOR_DESCONTO.AsFloat;
            // IND_FRT       := ;
             VL_SERV       := dm1.sds_sped_nf_entVALOR_TOTAL_PRODUTOS.AsFloat;
             VL_TERC       := 0;
             VL_DA         := dm1.sds_sped_nf_entVALOR_OUTRAS_DESPESAS.AsFloat;
             VL_BC_ICMS    := dm1.sds_sped_nf_entBASE_CALCULO_ICMS.AsFloat;
             VL_ICMS       := dm1.sds_sped_nf_entVALOR_ICMS.AsFloat;
             COD_INF       := '';
             VL_PIS        := dm1.sds_sped_nf_entVALOR_PIS.AsFloat;
             VL_COFINS     := dm1.sds_sped_nf_entVALOR_COFINS.AsFloat;
             COD_CTA       := '';
             TP_ASSINANTE  := assComercialIndustrial;

           { contador1 :=0;
            contador1 := dm1.sds_sped_nf_ent.RecordCount;
            For IItens := 1 to CONTADOR1 do
             begin  }
               with RegistroD590New do
               begin

                  CST_ICMS      :=  '000'; //Formatar(dm1.sds_sped_nf_entCST.Text,3,False,'0');
                  CFOP          :=  dm1.sds_sped_nf_entCFOP_NOTA.Text;
                  ALIQ_ICMS     :=  StrToFloatDef(dm1.sds_sped_nf_entPERC_ICMS.Text,0);
                  VL_OPR        :=  dm1.sds_sped_nf_entTOTAL_NOTA.AsFloat;//StrToFloatDef(dm1.sds_sped_nf_ent_itens_analTOTAL_NOTA.Text,0);
                  VL_BC_ICMS    :=  StrToFloatDef(dm1.sds_sped_nf_entBASE_CALCULO_ICMS.Text,0);
                  VL_ICMS       :=  StrToFloatDef(dm1.sds_sped_nf_entVALOR_ICMS.Text,0);
               //   VL_BC_ICMS_st := StrToFloatDef(dm1.sds_sped_nf_entBASE_CALC_ICMS_SUBST.Text,0);
               //   VL_ICMS_ST    := StrToFloatDef(dm1.sds_sped_nf_entVALOR_ICMS_SUBST.Text,0);
                  VL_RED_BC     := 0;
              //  VL_IPI        := StrToFloatDef(dm1.sds_sped_nf_ent_itens_analVALOR_IPI.Text,0);
                  COD_OBS       := '';
               end;
          dm1.sds_sped_nf_ent.Next;
          end;
          end;
          end;

          {if dm1.sds_sped_nf_ent.RecordCount > 0 then
           IND_MOV := imComDados
           else
           IND_MOV := imSemDados;  }
          
       end;
     btnB_D.Enabled := false;
     btnB_E.Enabled := True ;

    end;


   if cbConcomitante.Checked then
   begin
      ACBrSPEDFiscal1.WriteBloco_D;
      LoadToMemo;
   end;
end;

procedure TFormSPEDFiscal.btnB_EClick(Sender: TObject);
begin
   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco E.
   btnB_E.Enabled := false;
   btnB_H.Enabled := True ;

   with ACBrSpedFiscal1.Bloco_E do
   begin
      // Abertura do Bloco E
      with RegistroE001New do
      begin
         IND_MOV := imComDados;
         ///

         with RegistroE100New do
         begin
          DT_INI := EvDateEdit1.Date;//StrToDate('01/07/2009');
          DT_FIN := EvDateEdit2.Date;
          
           with RegistroE110New do
           begin
              VL_TOT_DEBITOS := 0;
              VL_AJ_DEBITOS := 0;
              VL_TOT_AJ_DEBITOS := 0;
              VL_ESTORNOS_CRED := 0;
              VL_TOT_CREDITOS := 0;
              VL_AJ_CREDITOS := 0;
              VL_TOT_AJ_CREDITOS := 0;
              VL_ESTORNOS_DEB := 0;
              VL_SLD_CREDOR_ANT := 0;
              VL_SLD_APURADO := 0;
              VL_TOT_DED := 0;
              VL_ICMS_RECOLHER := 0;
              VL_SLD_CREDOR_TRANSPORTAR := 0;
              DEB_ESP := 0;
           end;

//           if (ValorC500 > 0 ) or (ValorC190 > 0 ) then
//           begin
//             with RegistroE200 do
//             begin
//
//             end;
//           end;
         end;
      end;
   end;

   if cbConcomitante.Checked then
   begin
      ACBrSPEDFiscal1.WriteBloco_E;
      LoadToMemo;
   end;
end;


procedure TFormSPEDFiscal.btnB_HClick(Sender: TObject);
var
IInvent, CONTADOR: integer;
begin

  // inventario


   btnB_H.Enabled := false;
   btnB_1.Enabled := True ;

   // Alimenta o componente com informações para gerar todos os registros do
   // Bloco H.
   with ACBrSpedFiscal1.Bloco_H do
   begin
      with RegistroH001New do
      begin
         IND_MOV := imComDados;
         //
         dm1.Sds_inventario.Active := False;
         dm1.Sds_inventario.Active := True;
         dm1.Sds_inventario.Filtered := False;
         dm1.Sds_inventario.Filter := 'DT_INV >='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((inicio))))+' and DT_INV <='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate(final)));
         dm1.Sds_inventario.Filtered := TRUE;
         dm1.Sds_inventario.First;
         with RegistroH005New do
         begin
            DT_INV := dm1.Sds_inventarioDT_INV.AsDateTime;
            VL_INV := dm1.Sds_inventarioVL_INV.AsFloat;
            // FILHO

           dm1.Sds_Inventario_iten.Close;
           dm1.Sds_Inventario_iten.Params.ParamByName('inv').AsInteger := DM1.Sds_inventarioID_INV.AsInteger ;
           dm1.Sds_Inventario_iten.Open;

           //dm1.Sds_Inventario_iten.First;
           with dm1.Sds_Inventario_iten do
           begin
            First;
             while not eof do
             begin

              with RegistroH010New do
               begin
                  COD_ITEM := DM1.Sds_Inventario_itenCOD_ITEM.AsString; ///RemoveChar(DM1.Sds_Inventario_itensCOD_BARRAS.Text);//FormatFloat('00000000000000', IInvent);
                  UNID := DM1.Sds_Inventario_itenABREVIATURA.Text;
                  QTD  := DM1.Sds_Inventario_itenQTD_ITEN.AsFloat;
                  VL_UNIT := DM1.Sds_Inventario_itenVLR_UNIT.AsFloat;
                  VL_ITEM := DM1.Sds_Inventario_itenVL_ITEM_TOTAL.AsFloat;
                  IND_PROP := piInformante;
                  COD_PART := ''; // FORNECEDOR DO PRODUTO
                  TXT_COMPL := ''; // DESCRICAO COMPLEMENTAR
                  COD_CTA := DM1.Sds_Inventario_itenCOD_CONTA.text; // CONTA ANALITICA

               end;
               Next;
            end;
         end;
         dm1.Sds_inventario.Next;
      end;
    end;
   end;

   if cbConcomitante.Checked then
   begin
      ACBrSPEDFiscal1.WriteBloco_H;
      LoadToMemo;
   end;
end;

procedure TFormSPEDFiscal.edtFileChange(Sender: TObject);
begin
   ACBrSPEDFiscal1.Arquivo := edtFile.Text ;
end;

procedure TFormSPEDFiscal.LoadToMemo;
begin
   memoTXT.Lines.Clear;
   if FileExists( ACBrSpedFiscal1.Path + ACBrSpedFiscal1.Arquivo ) then
      memoTXT.Lines.LoadFromFile(ACBrSpedFiscal1.Path + ACBrSpedFiscal1.Arquivo);
end;

procedure TFormSPEDFiscal.cbConcomitanteClick(Sender: TObject);
begin
   btnTXT.Enabled   := not cbConcomitante.Checked ;
   btnError.Enabled := btnTXT.Enabled ;

   edBufNotas.Enabled := cbConcomitante.Checked ;

   if not cbConcomitante.Checked then
   begin
      btnB_0.Enabled := True ;
      btnB_C.Enabled := False ;
      btnB_D.Enabled := False ;
      btnB_E.Enabled := False ;
      btnB_H.Enabled := False ;
      btnB_1.Enabled := False ;
      btnB_9.Enabled := False ;
   end;
end;

procedure TFormSPEDFiscal.ACBrSPEDFiscal1Error(const MsnError: String);
begin
   memoError.Lines.Add(MsnError);
end;

procedure TFormSPEDFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := cafree;
FormSPEDFiscal := nil;
end;

procedure TFormSPEDFiscal.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Pred(Self.ComponentCount) do
  begin
    if Self.Components[I] is TSimpleDataSet then
    begin
      (Self.Components[I] as TSimpleDataSet).Connection:= DM.SQLC;
    end
    else
    if Self.Components[I] is TSQLQuery then
    begin
      (Self.Components[I] as TSQLQuery).SQLConnection:= DM.SQLC;
    end;
  end;
  SetWindowPos(Handle,HWND_TOP,140,10,0,0,SWP_NOSIZE);
end;

procedure TFormSPEDFiscal.btnB_GClick(Sender: TObject);
begin
 with ACBrSpedFiscal1.Bloco_G do
   begin
      // Abertura do Bloco g
      with RegistroG001New do
      begin
         IND_MOV := imSemDados;
      end;

   if cbConcomitante.Checked then
   begin
      ACBrSPEDFiscal1.WriteBloco_G;
      LoadToMemo;
   end;
end;
end;

procedure TFormSPEDFiscal.RzBitBtn1Click(Sender: TObject);
begin
        // IF DM.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
       //  begin
              IF DM.SDS_EmpresaCOD_CID_IBGE.Text ='' then
              begin
                ShowMessage('Favor preencher os dados do Ibge no Cadastro da empresa');
                Exit;
              end;
              IF DM.SDS_EmpresaRAZAO_SOCIAL.Text ='' then
              begin
                ShowMessage('Favor preencher os dados da Razão social no Cadastro da empresa');
                Exit;
              end;   

             IF CheckBox2.Checked = False then
              begin
                    IF CheckBox3.Checked = true then
                    begin
                    cArquivoMFD   := edit1.Text;
                    cArquivoTXT   := 'C:\SIACE\SPED\Sped_Bem_Bloco_C.txt';
                    cDataInicial  := DateToStr(EvDateEdit1.Date);
                    cDataFinal    := DateToStr(EvDateEdit2.Date);
                    IF ComboBox3.ItemIndex = 0 then
                    begin
                    cPerfil       := 'A';
                    end else
                    IF ComboBox3.ItemIndex = 1 then
                    begin
                    cPerfil       := 'B';
                    end;

                    cCFOP         := '5929';
                    cCODOBSFiscal := '';
                    cAliqPIS      := FormatFloat('##,##00.00',currencyedit1.value);//'00,00';
                    cAliqCOFINS   := FormatFloat('##,##00.00',currencyedit2.value);//'00,00';


                    iRetorno := Bematech_FI_GeraRegistrosSpedMFD( pchar( cArquivoMFD ), pchar( cArquivoTXT ),
                    pchar( cDataInicial ), pchar( cDataFinal ), pchar( cPerfil ), pchar( cCFOP ), pchar( cCODOBSFiscal ),
                    pchar( cAliqPIS ), pchar( cAliqCOFINS ) );
                    FormPrincipal.Analisa_iRetorno();
                    FormPrincipal.Retorno_Impressora();
                    end;

                    IF CheckBox4.Checked = true then
                    begin
                    cArquivoMFD   := 'C:\SIACE\SPED\download.mfd';
                    cArquivoTXT   := 'C:\SIACE\SPED\Sped_Bem_Bloco_C.txt';
                    cDataInicial  := DateToStr(EvDateEdit1.Date);
                    cDataFinal    := DateToStr(EvDateEdit2.Date);
                    IF ComboBox3.ItemIndex = 0 then
                    begin
                    cPerfil       := 'A';
                    end else
                    IF ComboBox3.ItemIndex = 1 then
                    begin
                    cPerfil       := 'B';
                    end;

                    cCFOP         := '5929';
                    cCODOBSFiscal := '';
                    cAliqPIS      := FormatFloat('##,##00.00',currencyedit1.value);//'00,00';
                    cAliqCOFINS   := FormatFloat('##,##00.00',currencyedit2.value);//'00,00';


                    iRetorno := Bematech_FI_GeraRegistrosSpedMFD( pchar( cArquivoMFD ), pchar( cArquivoTXT ),
                    pchar( cDataInicial ), pchar( cDataFinal ), pchar( cPerfil ), pchar( cCFOP ), pchar( cCODOBSFiscal ),
                    pchar( cAliqPIS ), pchar( cAliqCOFINS ) );
                    FormPrincipal.Analisa_iRetorno();
                    FormPrincipal.Retorno_Impressora();
                    end;
             end else

             IF CheckBox2.Checked = True then
             begin
                  IF CheckBox3.Checked = true then
                    begin
                    cArquivoMFD   := edit1.Text;
                    cArquivoTXT   := 'C:\SIACE\SPED\Sped_Bem_Bloco_C.txt';
                    cDataInicial  := DateToStr(EvDateEdit1.Date);
                    cDataFinal    := DateToStr(EvDateEdit2.Date);
                    IF ComboBox3.ItemIndex = 0 then
                    begin
                    cPerfil       := 'A';
                    end else
                    IF ComboBox3.ItemIndex = 1 then
                    begin
                    cPerfil       := 'B';
                    end;

                    cCFOP         := '5929';
                    cCODOBSFiscal := '';
                    cAliqPIS      := FormatFloat('##,##00.00',currencyedit1.value);//'00,00';
                    cAliqCOFINS   := FormatFloat('##,##00.00',currencyedit2.value);//'00,00';
                    cEmpresa      := dm.SDS_EmpresaRAZAO_SOCIAL.Text;
                    cCodMunicipio := dm.SDS_EmpresaCOD_CID_IBGE.Text;

                    iRetorno := Bematech_FI_GeraRegistrosSpedCompleto( pchar( cArquivoMFD ), pchar( cArquivoTXT ),
                    pchar( cDataInicial ), pchar( cDataFinal ), pchar( cPerfil ), pchar( cCFOP ), pchar( cCODOBSFiscal ),
                    pchar( cAliqPIS ), pchar( cAliqCOFINS ), pchar( cEmpresa ), pchar( cCodMunicipio ) );
                    FormPrincipal.Analisa_iRetorno();
                    FormPrincipal.Retorno_Impressora();
                    end;

                    IF CheckBox4.Checked = true then
                    begin
                    cArquivoMFD   := 'C:\SIACE\SPED\download.mfd';
                    cArquivoTXT   := 'C:\SIACE\SPED\Sped_Bem_Bloco_C.txt';
                    cDataInicial  := DateToStr(EvDateEdit1.Date);
                    cDataFinal    := DateToStr(EvDateEdit2.Date);
                    IF ComboBox3.ItemIndex = 0 then
                    begin
                    cPerfil       := 'A';
                    end else
                    IF ComboBox3.ItemIndex = 1 then
                    begin
                    cPerfil       := 'B';
                    end;

                    cCFOP         := '5929';
                    cCODOBSFiscal := '';
                    cAliqPIS      := FormatFloat('##,##00.00',currencyedit1.value);//'00,00';
                    cAliqCOFINS   := FormatFloat('##,##00.00',currencyedit2.value);//'00,00';
                    cEmpresa      := dm.SDS_EmpresaRAZAO_SOCIAL.Text;
                    cCodMunicipio := dm.SDS_EmpresaCOD_CID_IBGE.Text;

                    iRetorno := Bematech_FI_GeraRegistrosSpedCompleto( pchar( cArquivoMFD ), pchar( cArquivoTXT ),
                    pchar( cDataInicial ), pchar( cDataFinal ), pchar( cPerfil ), pchar( cCFOP ), pchar( cCODOBSFiscal ),
                    pchar( cAliqPIS ), pchar( cAliqCOFINS ), pchar( cEmpresa ), pchar( cCodMunicipio ) );
                    FormPrincipal.Analisa_iRetorno();
                    FormPrincipal.Retorno_Impressora();
                    end;
             end;
         end;

//end;     

procedure TFormSPEDFiscal.CheckBox4Click(Sender: TObject);
begin
edit1.Visible := False;
suiButton2.Visible := False;
CheckBox3.Checked := False;
end;

procedure TFormSPEDFiscal.CheckBox3Click(Sender: TObject);
begin
edit1.Visible := true;
suiButton2.Visible := true;
CheckBox4.Checked := False;
end;

procedure TFormSPEDFiscal.suiButton2Click(Sender: TObject);
begin
OpenDialog1.Title := 'Abrir o arquivo MFD';
OpenDialog1.InitialDir := 'C:\SIACE\SPED\';
if OpenDialog1.Execute then
Begin
//ImgProduto.Visible := True;
//ImgProduto.Picture.LoadFromFile(OpenDialog.FileName);
Edit1.Text := OpenDialog1.FileName;
end;
end;

procedure TFormSPEDFiscal.suiButton1Click(Sender: TObject);
begin
OpenDialog2.Title := 'Salvar o arquivo';
OpenDialog2.InitialDir := 'C:\SIACE\SPED\';
if OpenDialog2.Execute then
Begin
//ImgProduto.Visible := True;
//ImgProduto.Picture.LoadFromFile(OpenDialog.FileName);
edtFile.Text := OpenDialog2.FileName;
end;
end;

procedure TFormSPEDFiscal.RzBitBtn2Click(Sender: TObject);
var
  total1, total2, saldo, total_venda, x, y :Double;
  contador, cont, e, i :Integer;
   dtmovi, dtmovf :string;
   DESCONTO , PERC_DESC :Real;
begin

    dtmovi:=datetostr(DATE);
    dtmovf:=datetostr(DATE);

    dtmovi:=EvDateEdit1.TexT;
    dtmovf:=EvDateEdit2.TexT;

          QRY_PEDIDOS.Close;
          SDS_PEDIDOS.Active := FALSE;
          QRY_PEDIDOS.SQL.Clear;
          QRY_PEDIDOS.SQL.Add('select * from V_PEDIDOS_DESC where COD_EMPRESA >0'+'');
          if dtmovi > ' / /   ' then
          QRY_PEDIDOS.SQL.add('and DATA_PEDIDO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovi)))+' and DATA_PEDIDO <='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(dtmovf)))+'');
          QRY_PEDIDOS.SQL.add('ORDER BY CODIGO ASC');
          QRY_PEDIDOS.Open;
          SDS_PEDIDOS.Active := TRUE;
          SDS_PEDIDOS_ITENS.Active := False;
          SDS_PEDIDOS_ITENS.Active := True;
          // DESCONTOS




        Sds_Pedidos.First;
        Cont := 0;
        cont:=Sds_Pedidos.RecordCount;
        E:=0;
        For e:=1 to Cont do
        begin

          PERC_DESC := SDS_PEDIDOSVALOR_DESCONTO.AsFloat * 100 / SDS_PEDIDOSVALOR_ITENS.AsFloat;

          Sds_Pedidos_itens.First;
          Contador := 0;
          Contador:=Sds_Pedidos_itens.RecordCount;
          i:=0;
          For I:=1 to Contador do
          begin
          Sds_Pedidos_itens.Edit;
          TOTAL1:= (SDS_PEDIDOS_ITENSPRECO_TOTAL.AsFloat * PERC_DESC) / 100;
          sds_pedidos_itensDESCONTO.TEXT :=  FormatFloat('##,##0.00',Total1);
          Sds_Pedidos_itens.post;
          Sds_Pedidos_itens.ApplyUpdates(0);
          Sds_Pedidos_itens.Next;
          end;

          // ACHA RESTO DA DIVISÃO
          Sds_Pedidos_itens.First;
          Total1 := 0;
          X:= 0;
          X:= X + StrToFloatDef(sds_pedidos_itensDESCONTO.Text,0.00);
          Sds_Pedidos_itens.Next;
          TOTAL1 := X;
          While not Sds_Pedidos_itens.Eof do
          begin
          X:= X + StrToFloatDef(sds_pedidos_itensDESCONTO.Text,0.00);
          Sds_Pedidos_itens.Next;
          Total1:= X;
          end;
          Sds_Pedidos_itens.First;

          total_venda := (Total1 - Sds_PedidosValor_Desconto.AsFloat);

         // CurrencyEdit9.Value := total_venda;

          IF TOTAL1 > Sds_PedidosValor_Desconto.AsFloat then
          begin
           sds_pedidos_itens.Edit;
           DESCONTO :=   sds_pedidos_itensDESCONTO.asfloat - total_venda;
           sds_pedidos_itensDESCONTO.AsFloat := Abs(DESCONTO);
           sds_pedidos_itens.Post;
           Sds_Pedidos_itens.ApplyUpdates(0);
          end ELSE

          IF TOTAL1 < Sds_PedidosValor_Desconto.AsFloat then
          begin
           sds_pedidos_itens.Edit;
           //sds_pedidos_itensDESCONTO.AsFloat := sds_pedidos_itensDESCONTO.asfloat + total_venda;
           DESCONTO :=   sds_pedidos_itensDESCONTO.asfloat + total_venda;
           sds_pedidos_itensDESCONTO.AsFloat :=Abs(DESCONTO);
           sds_pedidos_itens.Post;
           Sds_Pedidos_itens.ApplyUpdates(0);
          end;
                 
          //diferenca dos itens CORRETO
         { Sds_Pedidos_itens.First;
          Total1 := 0;
          X:= 0;
          y:= 0;
          X:= X + StrToFloatDef(sds_pedidos_itensDESCONTO.Text,0.00);
          y:= y + StrToFloatDef(SDS_PEDIDOS_ITENSPRECO_TOTAL.Text,0.00);
          TOTAL1 := X;
          total2 := y;
          Sds_Pedidos_itens.Next;
          While not Sds_Pedidos_itens.Eof do
          begin
          X:= X + StrToFloatDef(sds_pedidos_itensDESCONTO.Text,0.00);
          y:= y + StrToFloatDef(SDS_PEDIDOS_ITENSPRECO_TOTAL.Text,0.00);
          Total1:= X;
          total2 := y;
          Sds_Pedidos_itens.Next;
          end;
          Sds_Pedidos_itens.First;

          total_venda := (total2 - total1);

          saldo := SDS_PEDIDOSVALOR_TOTAL.AsFloat - total_venda;

          IF total_venda > SDS_PEDIDOSVALOR_TOTAL.AsFloat then
          begin
           sds_pedidos_itens.Edit;
           SDS_PEDIDOS_ITENSPRECO_TOTAL.AsFloat := SDS_PEDIDOS_ITENSPRECO_TOTAL.AsFloat + saldo;
           sds_pedidos_itens.Post;
           Sds_Pedidos_itens.ApplyUpdates(0);
          end ELSE

          IF total_venda < SDS_PEDIDOSVALOR_TOTAL.AsFloat then
          begin
           sds_pedidos_itens.Edit;
           SDS_PEDIDOS_ITENSPRECO_TOTAL.AsFloat := SDS_PEDIDOS_ITENSPRECO_TOTAL.AsFloat - saldo;
           sds_pedidos_itens.Post;
           Sds_Pedidos_itens.ApplyUpdates(0);
          end;
                  }

          RzBitBtn2.Visible := False;
          Sds_Pedidos.Next;
   end;
end;

procedure TFormSPEDFiscal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = vk_f2 then
begin
  RzBitBtn2.Visible := True;
  end;
end;

procedure TFormSPEDFiscal.RzBitBtn3Click(Sender: TObject);
begin
with ACBrSpedFiscal1.Bloco_K do
   begin
      // Abertura do Bloco g
      with RegistroK001New do
      begin
         IND_MOV := imSemDados;
     end;

          // Abertura do Bloco g
   {   with RegistroK100New do
      begin
         DT_INI := EvDateEdit1.Date;//StrToDate('01/07/2009');
         DT_FIN := EvDateEdit2.Date;// StrToDate('31/07/2009');
      end;

      with RegistroK200New do
      begin
        DT_EST := //data do estoque
        COD_ITEM := // codigo do iten
        QTD  := //qtde
        IND_EST :=  // indicador de estoque 0 - proprietario 1- proprietario em maos de outros 2 - estoque de terceiros em suas maos
        COD_PART := //codigo do participante


      end;  }

   if cbConcomitante.Checked then
   begin
      ACBrSPEDFiscal1.WriteBloco_K;
      LoadToMemo;
   end;
end;
end;

procedure TFormSPEDFiscal.FormShow(Sender: TObject);
begin
 if dm.IBTransaction.Active then
    dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  DM.QConsulta.SQL.Clear;
  DM.QConsulta.SQL.Add('update notasfiscais set notasfiscais.emitente = 1');
  DM.QConsulta.ExecSQL;
  dm.IBTransaction.Commit;
  dm.QConsulta.Close;
end;

end.
