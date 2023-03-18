unit ArquivodeRetorno748;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, ExtCtrls, StdCtrls, SUIDlg, SUIComboBox,
  SUIEdit, Mask, ToolEdit, DBCtrls, SUIDBCtrls,  FMTBcd, SqlExpr,
  DB, DBClient, SimpleDS, DBXpress, XDBGrids, Provider, ComCtrls, Grids,
  Buttons, FileCtrl, IBCustomDataSet, IBQuery, CurrEdit;

  type
  TFormArquivodeRetorno748 = class(TForm)
    DtsRetornoSicredi: TDataSource;
    Panel5: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label3: TLabel;
    ProgressBar1: TProgressBar;
    OpenDialog1: TOpenDialog;
    FileListBox1: TFileListBox;
    LbAguarde: TLabel;
    GroupBox5: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    PnEmpresa: TPanel;
    PnArquivoSelecionado: TPanel;
    PnBanco: TPanel;
    PnConta: TPanel;
    PnArquivoRenomeado: TPanel;
    PnPath: TPanel;
    BoxArquivos: TListBox;
    Label10: TLabel;
    EdtValorTotalGeral: TCurrencyEdit;
    BoxMensagens: TMemo;
    Label19: TLabel;
    GroupBox6: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    EdtTotalRegistros: TCurrencyEdit;
    EdtValidos: TCurrencyEdit;
    EdtRejeitados: TCurrencyEdit;
    EdtGravados: TCurrencyEdit;
    EdtSaldo: TCurrencyEdit;
    EdtValorTotal: TCurrencyEdit;
    Label11: TLabel;
    PnCgc: TPanel;
    DtsBuscaCodigoBoleto: TDataSource;
    BtnSair: TBitBtn;
    BtnProcessar: TBitBtn;
    BtnEditar: TBitBtn;
    QryBuscaCodigoBoleto: TSQLQuery;
    QryRetornoSicredi: TSQLQuery;
    QryBuscaCodigoNumeroBoleto: TSQLQuery;
    QryBuscaCodigoNumeroBoletoCODIGO: TIntegerField;
    QryBuscaCodigoNumeroBoletoCODIGO_CLIENTE: TIntegerField;
    QryBuscaCodigoNumeroBoletoDATA_COMPRA: TDateField;
    QryBuscaCodigoNumeroBoletoDATA_VENCIMENTO: TDateField;
    QryBuscaCodigoNumeroBoletoDATA_BAIXA: TDateField;
    QryBuscaCodigoNumeroBoletoHISTORICO: TStringField;
    QryBuscaCodigoNumeroBoletoUSUARIO_VENDA: TStringField;
    QryBuscaCodigoNumeroBoletoUSUARIO_BAIXA: TStringField;
    QryBuscaCodigoNumeroBoletoSITUACAO: TStringField;
    QryBuscaCodigoNumeroBoletoVALOR_COMPRA: TFMTBCDField;
    QryBuscaCodigoNumeroBoletoVALOR_JUROS: TFMTBCDField;
    QryBuscaCodigoNumeroBoletoVALOR_ACRESCIMO: TFMTBCDField;
    QryBuscaCodigoNumeroBoletoVALOR_DESCONTO: TFMTBCDField;
    QryBuscaCodigoNumeroBoletoVALOR_PAGAR: TFMTBCDField;
    QryBuscaCodigoNumeroBoletoVALOR_PAGO: TFMTBCDField;
    QryBuscaCodigoNumeroBoletoVALOR_TOTAL: TFMTBCDField;
    QryBuscaCodigoNumeroBoletoCODIGO_COMPRA: TIntegerField;
    QryBuscaCodigoNumeroBoletoPARCELA: TStringField;
    QryBuscaCodigoNumeroBoletoNUMBOLETO: TStringField;
    QryBuscaCodigoNumeroBoletoBANCO_PORTADOR: TIntegerField;
    QryBuscaCodigoNumeroBoletoREMESSA: TStringField;
    QryBuscaCodigoNumeroBoletoDATACREDITO: TDateField;
    QryBuscaCodigoNumeroBoletoID_PORTADOR: TIntegerField;
    QryBuscaCodigoNumeroBoletoENVIADO: TStringField;
    QryBuscaCodigoNumeroBoletoCOD_EMPRESA: TIntegerField;
    QryBuscaCodigoNumeroBoletoNUMBOLETO1: TIntegerField;
    QryBuscaCodigoNumeroBoletoCODIGOCEDENTE: TStringField;
    QryBuscaCodigoNumeroBoletoTIPO: TStringField;
    QryBuscaCodigoNumeroBoletoCHEK_BOX: TStringField;
    QryBuscaCodigoNumeroBoletoNUM_NOTA: TIntegerField;
    QryBuscaCodigoNumeroBoletoSERIE_NOTA: TStringField;
    QryBuscaCodigoNumeroBoletoNOME_SACADO: TStringField;
    QryBuscaCodigoNumeroBoletoANO: TStringField;
    QryBuscaCodigoNumeroBoletoMES: TStringField;
    QryRetornoSicrediCODCLIENTE: TIntegerField;
    QryRetornoSicrediDATALIQUIDACAO: TDateField;
    QryRetornoSicrediNOMEDOSACADO: TStringField;
    QryRetornoSicrediNOSSONUMERO: TStringField;
    QryRetornoSicrediVENCIMENTO: TDateField;
    QryRetornoSicrediTARIFADECOBRANCA: TIntegerField;
    QryRetornoSicrediVALORDOTITULO: TFMTBCDField;
    QryRetornoSicrediABATIMENTO: TFMTBCDField;
    QryRetornoSicrediDESCONTOS: TFMTBCDField;
    QryRetornoSicrediVALORRECEBIDO: TFMTBCDField;
    QryRetornoSicrediCODLIQUIDACAO: TStringField;
    QryRetornoSicrediDOCUMENTO: TStringField;
    QryRetornoSicrediANOVCTO: TIntegerField;
    QryRetornoSicrediMESVCTO: TIntegerField;
    QryRetornoSicrediANOLIQUIDACAO: TIntegerField;
    QryRetornoSicrediMESLIQUIDACAO: TIntegerField;
    QryRetornoSicrediCODIGODEOCORRENCIA: TIntegerField;
    QryRetornoSicrediDATADEOCORRENCIA: TDateField;
    QryRetornoSicrediARQUIVO: TStringField;
    QryRetornoSicrediSEQUENCIA: TIntegerField;
    QryRetornoSicrediBANCOCOBRADOR: TStringField;
    QryRetornoSicrediAGENCIACOBRADORA: TStringField;
    QryRetornoSicrediCEDENTE_CONTABAN_BANCOCODIGO: TStringField;
    QryRetornoSicrediCEDENTE_CONTABAN_NOMEDOBANCO: TStringField;
    QryRetornoSicrediCEDENTE_CONTABAN_CODIGOAGENCIA: TStringField;
    QryRetornoSicrediCEDENTE_CONTABAN_DIGITOAGENCIA: TStringField;
    QryRetornoSicrediCEDENTE_CONTABAN_NUMEROCONTA: TStringField;
    QryBuscaCodigoBoletoCODIGO: TIntegerField;
    QryBuscaCodigoBoletoCODIGO_CLIENTE: TIntegerField;
    QryBuscaCodigoBoletoDATA_COMPRA: TDateField;
    QryBuscaCodigoBoletoDATA_VENCIMENTO: TDateField;
    QryBuscaCodigoBoletoDATA_BAIXA: TDateField;
    QryBuscaCodigoBoletoHISTORICO: TStringField;
    QryBuscaCodigoBoletoUSUARIO_VENDA: TStringField;
    QryBuscaCodigoBoletoUSUARIO_BAIXA: TStringField;
    QryBuscaCodigoBoletoSITUACAO: TStringField;
    QryBuscaCodigoBoletoVALOR_COMPRA: TFMTBCDField;
    QryBuscaCodigoBoletoVALOR_JUROS: TFMTBCDField;
    QryBuscaCodigoBoletoVALOR_ACRESCIMO: TFMTBCDField;
    QryBuscaCodigoBoletoVALOR_DESCONTO: TFMTBCDField;
    QryBuscaCodigoBoletoVALOR_PAGAR: TFMTBCDField;
    QryBuscaCodigoBoletoVALOR_PAGO: TFMTBCDField;
    QryBuscaCodigoBoletoVALOR_TOTAL: TFMTBCDField;
    QryBuscaCodigoBoletoCODIGO_COMPRA: TIntegerField;
    QryBuscaCodigoBoletoPARCELA: TStringField;
    QryBuscaCodigoBoletoNUMBOLETO: TStringField;
    QryBuscaCodigoBoletoBANCO_PORTADOR: TIntegerField;
    QryBuscaCodigoBoletoREMESSA: TStringField;
    QryBuscaCodigoBoletoDATACREDITO: TDateField;
    QryBuscaCodigoBoletoID_PORTADOR: TIntegerField;
    QryBuscaCodigoBoletoENVIADO: TStringField;
    QryBuscaCodigoBoletoCOD_EMPRESA: TIntegerField;
    QryBuscaCodigoBoletoNUMBOLETO1: TIntegerField;
    QryBuscaCodigoBoletoCODIGOCEDENTE: TStringField;
    QryBuscaCodigoBoletoTIPO: TStringField;
    QryBuscaCodigoBoletoCHEK_BOX: TStringField;
    QryBuscaCodigoBoletoNUM_NOTA: TIntegerField;
    QryBuscaCodigoBoletoSERIE_NOTA: TStringField;
    QryBuscaCodigoBoletoNOME_SACADO: TStringField;
    QryBuscaCodigoBoletoANO: TStringField;
    QryBuscaCodigoBoletoMES: TStringField;
    TblRetornoSicredi: TSimpleDataSet;
    TblRetornoSicrediCODCLIENTE: TIntegerField;
    TblRetornoSicrediDATALIQUIDACAO: TDateField;
    TblRetornoSicrediNOMEDOSACADO: TStringField;
    TblRetornoSicrediNOSSONUMERO: TStringField;
    TblRetornoSicrediVENCIMENTO: TDateField;
    TblRetornoSicrediTARIFADECOBRANCA: TIntegerField;
    TblRetornoSicrediVALORDOTITULO: TFMTBCDField;
    TblRetornoSicrediABATIMENTO: TFMTBCDField;
    TblRetornoSicrediDESCONTOS: TFMTBCDField;
    TblRetornoSicrediVALORRECEBIDO: TFMTBCDField;
    TblRetornoSicrediCODLIQUIDACAO: TStringField;
    TblRetornoSicrediDOCUMENTO: TStringField;
    TblRetornoSicrediANOVCTO: TIntegerField;
    TblRetornoSicrediMESVCTO: TIntegerField;
    TblRetornoSicrediANOLIQUIDACAO: TIntegerField;
    TblRetornoSicrediMESLIQUIDACAO: TIntegerField;
    TblRetornoSicrediCODIGODEOCORRENCIA: TIntegerField;
    TblRetornoSicrediDATADEOCORRENCIA: TDateField;
    TblRetornoSicrediARQUIVO: TStringField;
    TblRetornoSicrediSEQUENCIA: TIntegerField;
    TblRetornoSicrediBANCOCOBRADOR: TStringField;
    TblRetornoSicrediAGENCIACOBRADORA: TStringField;
    TblRetornoSicrediCEDENTE_CONTABAN_BANCOCODIGO: TStringField;
    TblRetornoSicrediCEDENTE_CONTABAN_NOMEDOBANCO: TStringField;
    TblRetornoSicrediCEDENTE_CONTABAN_CODIGOAGENCIA: TStringField;
    TblRetornoSicrediCEDENTE_CONTABAN_DIGITOAGENCIA: TStringField;
    TblRetornoSicrediCEDENTE_CONTABAN_NUMEROCONTA: TStringField;
    IBBoleto: TSimpleDataSet;
    IBBoletoCODIGO: TIntegerField;
    IBBoletoCODIGO_CLIENTE: TIntegerField;
    IBBoletoDATA_COMPRA: TDateField;
    IBBoletoDATA_VENCIMENTO: TDateField;
    IBBoletoDATA_BAIXA: TDateField;
    IBBoletoHISTORICO: TStringField;
    IBBoletoUSUARIO_VENDA: TStringField;
    IBBoletoUSUARIO_BAIXA: TStringField;
    IBBoletoSITUACAO: TStringField;
    IBBoletoVALOR_COMPRA: TFMTBCDField;
    IBBoletoVALOR_JUROS: TFMTBCDField;
    IBBoletoVALOR_ACRESCIMO: TFMTBCDField;
    IBBoletoVALOR_DESCONTO: TFMTBCDField;
    IBBoletoVALOR_PAGAR: TFMTBCDField;
    IBBoletoVALOR_PAGO: TFMTBCDField;
    IBBoletoVALOR_TOTAL: TFMTBCDField;
    IBBoletoCODIGO_COMPRA: TIntegerField;
    IBBoletoPARCELA: TStringField;
    IBBoletoNUMBOLETO: TStringField;
    IBBoletoBANCO_PORTADOR: TIntegerField;
    IBBoletoREMESSA: TStringField;
    IBBoletoDATACREDITO: TDateField;
    IBBoletoID_PORTADOR: TIntegerField;
    IBBoletoENVIADO: TStringField;
    IBBoletoCOD_EMPRESA: TIntegerField;
    IBBoletoNUMBOLETO1: TIntegerField;
    IBBoletoCODIGOCEDENTE: TStringField;
    IBBoletoTIPO: TStringField;
    IBBoletoCHEK_BOX: TStringField;
    IBBoletoNUM_NOTA: TIntegerField;
    IBBoletoSERIE_NOTA: TStringField;
    IBBoletoNOME_SACADO: TStringField;
    IBBoletoANO: TStringField;
    IBBoletoMES: TStringField;
    DTS_iboleto: TDataSource;
    DSP_BuscadataBaixa: TDataSetProvider;
    Cds_buscadataBaxia: TClientDataSet;
    Cds_buscadataBaxiaCODIGO: TIntegerField;
    Cds_buscadataBaxiaCODIGO_CLIENTE: TIntegerField;
    Cds_buscadataBaxiaDATA_COMPRA: TDateField;
    Cds_buscadataBaxiaDATA_VENCIMENTO: TDateField;
    Cds_buscadataBaxiaDATA_BAIXA: TDateField;
    Cds_buscadataBaxiaHISTORICO: TStringField;
    Cds_buscadataBaxiaUSUARIO_VENDA: TStringField;
    Cds_buscadataBaxiaUSUARIO_BAIXA: TStringField;
    Cds_buscadataBaxiaSITUACAO: TStringField;
    Cds_buscadataBaxiaVALOR_COMPRA: TFMTBCDField;
    Cds_buscadataBaxiaVALOR_JUROS: TFMTBCDField;
    Cds_buscadataBaxiaVALOR_ACRESCIMO: TFMTBCDField;
    Cds_buscadataBaxiaVALOR_DESCONTO: TFMTBCDField;
    Cds_buscadataBaxiaVALOR_PAGAR: TFMTBCDField;
    Cds_buscadataBaxiaVALOR_PAGO: TFMTBCDField;
    Cds_buscadataBaxiaVALOR_TOTAL: TFMTBCDField;
    Cds_buscadataBaxiaCODIGO_COMPRA: TIntegerField;
    Cds_buscadataBaxiaPARCELA: TStringField;
    Cds_buscadataBaxiaNUMBOLETO: TStringField;
    Cds_buscadataBaxiaBANCO_PORTADOR: TIntegerField;
    Cds_buscadataBaxiaREMESSA: TStringField;
    Cds_buscadataBaxiaDATACREDITO: TDateField;
    Cds_buscadataBaxiaID_PORTADOR: TIntegerField;
    Cds_buscadataBaxiaENVIADO: TStringField;
    Cds_buscadataBaxiaCOD_EMPRESA: TIntegerField;
    Cds_buscadataBaxiaNUMBOLETO1: TIntegerField;
    Cds_buscadataBaxiaCODIGOCEDENTE: TStringField;
    Cds_buscadataBaxiaTIPO: TStringField;
    Cds_buscadataBaxiaCHEK_BOX: TStringField;
    Cds_buscadataBaxiaNUM_NOTA: TIntegerField;
    Cds_buscadataBaxiaSERIE_NOTA: TStringField;
    Cds_buscadataBaxiaNOME_SACADO: TStringField;
    Cds_buscadataBaxiaANO: TStringField;
    Cds_buscadataBaxiaMES: TStringField;
    QryBuscaDataBaixa: TSQLQuery;
    QryBuscaDataBaixaCODIGO: TIntegerField;
    QryBuscaDataBaixaCODIGO_CLIENTE: TIntegerField;
    QryBuscaDataBaixaDATA_COMPRA: TDateField;
    QryBuscaDataBaixaDATA_VENCIMENTO: TDateField;
    QryBuscaDataBaixaDATA_BAIXA: TDateField;
    QryBuscaDataBaixaHISTORICO: TStringField;
    QryBuscaDataBaixaUSUARIO_VENDA: TStringField;
    QryBuscaDataBaixaUSUARIO_BAIXA: TStringField;
    QryBuscaDataBaixaSITUACAO: TStringField;
    QryBuscaDataBaixaVALOR_COMPRA: TFMTBCDField;
    QryBuscaDataBaixaVALOR_JUROS: TFMTBCDField;
    QryBuscaDataBaixaVALOR_ACRESCIMO: TFMTBCDField;
    QryBuscaDataBaixaVALOR_DESCONTO: TFMTBCDField;
    QryBuscaDataBaixaVALOR_PAGAR: TFMTBCDField;
    QryBuscaDataBaixaVALOR_PAGO: TFMTBCDField;
    QryBuscaDataBaixaVALOR_TOTAL: TFMTBCDField;
    QryBuscaDataBaixaCODIGO_COMPRA: TIntegerField;
    QryBuscaDataBaixaPARCELA: TStringField;
    QryBuscaDataBaixaNUMBOLETO: TStringField;
    QryBuscaDataBaixaBANCO_PORTADOR: TIntegerField;
    QryBuscaDataBaixaREMESSA: TStringField;
    QryBuscaDataBaixaDATACREDITO: TDateField;
    QryBuscaDataBaixaID_PORTADOR: TIntegerField;
    QryBuscaDataBaixaENVIADO: TStringField;
    QryBuscaDataBaixaCOD_EMPRESA: TIntegerField;
    QryBuscaDataBaixaNUMBOLETO1: TIntegerField;
    QryBuscaDataBaixaCODIGOCEDENTE: TStringField;
    QryBuscaDataBaixaTIPO: TStringField;
    QryBuscaDataBaixaCHEK_BOX: TStringField;
    QryBuscaDataBaixaNUM_NOTA: TIntegerField;
    QryBuscaDataBaixaSERIE_NOTA: TStringField;
    QryBuscaDataBaixaNOME_SACADO: TStringField;
    QryBuscaDataBaixaANO: TStringField;
    QryBuscaDataBaixaMES: TStringField;
    Dts_dataBaixa: TDataSource;
    PnData: TDateEdit;
    pndtcred: TPanel;
    StatusBar1: TStatusBar;
    XDBGrid1: TXDBGrid;
    Image3: TImage;
    Label12: TLabel;
    IBBoletoTP_BAIXA: TStringField;
    TblRetornoSicrediJUROS: TFMTBCDField;
    TblRetornoSicrediMULTA: TFMTBCDField;
    QryRetornoSicrediJUROS: TFMTBCDField;
    QryRetornoSicrediMULTA: TFMTBCDField;
    Spc_crediario_Recebido: TSQLStoredProc;
    QryBuscaCodigoBoletoTP_BAIXA: TStringField;
    QryBuscaCodigoBoletoID_CONTRATO: TIntegerField;
    QryBuscaDataBaixaTP_BAIXA: TStringField;
    QryBuscaDataBaixaID_CONTRATO: TIntegerField;
    Cds_buscadataBaxiaTP_BAIXA: TStringField;
    Cds_buscadataBaxiaID_CONTRATO: TIntegerField;
    QryBuscaDataBaixaNOME_ARQ: TStringField;
    IBBoletoID_CONTRATO: TIntegerField;
    IBBoletoNOME_ARQ: TStringField;
    qrcaixa_mov: TIBQuery;
    procedure BtnSairClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnProcessarClick(Sender: TObject);
    procedure FileListBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Local_Saida: TextFile;
    Porta_Saida,Buffer:string;


    NomeArq        :TextFile;
    NomeAnt        :TFileName;
    NomeAtu        :TFileName;
    wsStatusTabela :String;
    S              :String;
    Linha          :String;
    wPath          :String;
    wPathTemp      :String;
    wPathRen       :String;
    cArquivoSelecionado :String;
    cArquivo       :String;
    wArqAtu        :String;
    wArqRen        :String;
    wArqNovo       :String;
    wExt           :String;

    cCgcCedente    :string;
    cAnoVcto       :string;
    cMesVcto       :string;
    cDataLiquidacao:string;
    cNossoNumero   :string;
    cDatadoVencimento:string;
    wLengthPath    :integer;
    wLengthArq     :integer;
    wLinha         :Integer;
    cLin           :Integer;
    N              :Integer;
    nAno           :Integer;
    nCodAssociado  :Integer;
    nMes           :Integer;
    //nNossoNumero   :Integer;
    wValorRecebido :Extended;
    wSaldoAtual    :Extended;
    cNomeAssociado :String;
    cDatadoCredito :String;
    cNomedoSacado  :String;
    cErros         :String;
    wAssociado     :String;
    wParte         :String;
    wTemp          :String;
    cMes           :String;
    cRegistro      :String;
    cValorRecebido :String;
    cDocumento     :String;
    cBancoCobrador :String;
    cAgenciaCobradora :String;
    cNumerodoBanco :String;
    cNomeDoBanco   :String;
    cNumerodaAgencia :String;
    cNumerodaConta :String;
    cTipodeDespesa :String;
    nSaldoAnterior, wValor, nSaldoAtual, cJuros, cMulta, cDesconto :Double;
    nValorTotal    :Extended;

    wPosition, wRecno: LongInt;

    procedure RegistroTrailer;
    procedure ConsisteRegistros;
    procedure BaixaaMensalidade;
    procedure GeraArquivoTexto;
    procedure GravaMvtoBancario;
    procedure AtualizaSaldoBancario;
    function  DirSize(Dir:string):integer;
  public
    { Public declarations }
   wDataFim:String;
  end;
var
  FormArquivodeRetorno748: TFormArquivodeRetorno748;
  wData:String;
  TD:TTransactionDesc;
  e, I, contador : Integer;

implementation

uses Principal, ModulodeDados, Udmcob, Z_RotinasGerais;

{$R *.DFM}

Procedure TFormArquivodeRetorno748.ConsisteRegistros;
begin
  wLinha                  := 0;
  cLin                    := 0;
  nValorTotal             := 0;
  EdtTotalRegistros.Value := 0;
  EdtValidos.Value        := 0;
  EdtRejeitados.Value     := 0;
  EdtGravados.Value       := 0;

  AssignFile(NomeArq, cArquivo );
  Reset(NomeArq);

  while not Eof(NomeArq) do
    begin
      Application.ProcessMessages;

      cDatadoCredito   := '';
      cNomedoSacado    := '';
      cErros           := '';
      cMes             := '';

      Readln(NomeArq,S);
    //  wLinha           := wLinha + 1; {Número de Registros do Arquivo}
    //  EdtValidos.Value := wLinha;
    //  wRecno           := wLinha;

   // cAnoVcto         := '20' + Copy(s,151,2);
   // cMesVcto         := Copy(s,149,2);

   // cDatadoVencimento := Copy(s,147,2) + '/' + Copy(s,149,2) + '/' + '20' + Copy(s,151,2);
   //   cDatadoCredito    := Copy(s,296,6);
   // cNomedoSacado     := Copy(s,325,30);

     // cErros            := Copy(s,378,8);


     If Copy(s,1,1)= '0' then
     // If wLinha = 1 then
         begin
           { Os primeiros 19 caracteres do Arquivo de Retorno do Banco SICREDI tem este Formato}
           if Copy(S,1,19) <> '02RETORNO01COBRANCA' then
              begin
                  FormPrincipal.MsgInformacao.HTMLText.Text := 'Este Não é um arquivo de retorno de cobrança!!! ';
                  FormPrincipal.MsgInformacao.Execute;
                //MessageDlg('Não é um arquivo de retorno de cobrança', mtInformation, [mbOK]);
                CloseFile(NomeArq);
                exit;
              end;

           cCgcCedente       := Copy(s,32,14);
           PnCgc.Caption := Copy(s,32,14);
           //PnEmpresa.Caption := Copy(S,47,30);
           PnData.Text    := Copy(S,101,2)+ '/' +Copy(S,99,2)+ '/' + Copy(S,95,4);
           PnConta.Caption   := Copy(S,27,5);
           PnBanco.Caption   := Copy(S,80,10);

           if length(s) <> 400 then
              begin
              FormPrincipal.MsgInformacao.HTMLText.Text := 'Tamanho de registro diferente de 400 bytes!!! ';
              FormPrincipal.MsgInformacao.Execute;
                //Global.Mensagem('Tamanho de registro diferente de 400 bytes',mtInformation, [mbOK]);
                CloseFile(NomeArq);
                exit;
              end;
         end; // wLinha

     // EdtTotalRegistros.Value := wLinha;

     // If EdtTotalRegistros.Value = 0 then
     //    begin
     //      Global.Mensagem('O retorno está vazio. Não há dados para processar', mtInformation, [mbOK]);
     //      CloseFile(NomeArq);
     //      exit;
     //    end;

      wTemp := Copy(s,1,1);

      If (wTemp = '1') then
         If (Copy(s,319,2) = '00') or (Copy(s,319,2) = 'H5') or (Copy(s,319,2) = 'H6') then
         begin

           wLinha                  := wLinha + 1; {Número de Registros do Arquivo}
           EdtTotalRegistros.Value := wLinha;
           wRecno                  := wLinha;


           n              :=0;
           wParte         :='';
           //cNossoNumero   := Copy(s,48,9);
           cNossoNumero   := Copy(s,48,9);
           //nNossoNumero   := StrToInt(cNossoNumero);
           cDatadoCredito := Copy(s,111,6);
           wTemp          := Copy(s,117,10);
           cValorRecebido := Copy(s,254,13);
           cRegistro      := Copy(s,395,6);
           nValorTotal    := nValorTotal + (StrtoInt(cValorRecebido) / 100);


             QryBuscaCodigoNumeroBoleto.Close;
             QryBuscaCodigoNumeroBoleto.ParamByName('OLD_NOSSONUMERO').asString   := cNossoNumero {FormatFloat('000000000',nNossoNumero)};
             QryBuscaCodigoNumeroBoleto.Open;

             if QryBuscaCodigoNumeroBoleto.Eof then
                begin
                  wTemp := 'Arq:' + wArqAtu +'-'+ 'Boleto:' + cNossoNumero{FormatFloat('00000',cNossoNumero)} + '-' +'Número de Boleto não Encontrado';
                BoxMensagens.lines.Add(wTemp);
                end;

        //   while (wParte <> '/')  and (n <=10) do
        //      begin
        //        n := n+1;
        //        wParte := Copy(wTemp,N,1);
        //        If wParte <> '/' then
        //           wAssociado := wAssociado + wParte;
        //      end;

        //      If (Trim(cDatadoCredito) = '') or  (Trim(cNomedoSacado) = '') or (Trim(cErros) <> '') or
                If (Trim(cDatadoCredito) = '')  or
                   (StrToInt(cValorRecebido) = 0 )then
                   begin
                   If cLin = 0 then
                      begin
                        cLin :=1;
                      end;

                   EdtRejeitados.Value  := EdtRejeitados.Value + 1;
                   If Trim(cDatadoCredito) = '' then
                      begin
                        wTemp := 'Arq:' + wArqAtu +'-'+ 'Boleto:' + {FormatFloat('00000',nNossoNumero)}cNossoNumero + '-' +'Sem Data do Credito';
                        BoxMensagens.lines.Add(wTemp);
                      end;

                 //If Trim(cNomedoSacado) = '' then
                 //   begin
                 //     wTemp  := 'Arq:' + wArqAtu +'-'+ 'Boleto:' + FormatFloat('00000',nNossoNumero) + '-' +'Sem Nome do Sacado';
                 //     BoxMensagens.lines.Add(wTemp);
                 //   end;

                   If (StrToInt(cValorRecebido) = 0 ) then
                      begin
                        wTemp  := 'Arq:' + wArqAtu +'-'+ 'Boleto:' + {FormatFloat('00000',nNossoNumero)}cNossoNumero + '-' +'Sem Valor de Pagamento';
                        BoxMensagens.lines.Add(wTemp);
                      end;

                   cMesVcto   := Copy(s,149,2);

                   BoxMensagens.lines.Add(wTemp);

                   //Traco(20);
                   wTemp := '--------------------------------------------------------------------------------------------------------------------------';
                   BoxMensagens.lines.Add(wTemp);

                   If cNossoNumero = '0' then
                      begin
                        wTemp :='Boleto:' + {FormatFloat('00000',nNossoNumero)} cNossoNumero + ' - ' + 'NUMERO DA MATRICULA '+ ' - ' + 'Registro:'+ cRegistro ;
                      end;

                   If StrToInt(cValorRecebido) = 0 then
                      begin
                        wTemp :='Boleto:' + {FormatFloat('00000',nNossoNumero)}cNossoNumero + ' - ' + 'VALOR DE RECEBIMENTO'+ ' - ' + 'Registro:'+ cRegistro ;
                      end;

                   If Trim(cDatadoCredito) = '' then
                      begin
                        wTemp :='Boleto' + {FormatFloat('00000',nNossoNumero)}cNossoNumero + ' - ' + 'DATA DE RECEBIMENTO.' + ' - '+ 'Registro:'+ cRegistro ;
                      end;

                   If Trim(cNomedoSacado) = '' then
                      begin
                        wTemp :='Boleto:' + {FormatFloat('00000',nNossoNumero)}cNossoNumero + ' - ' + 'NOME DO SACADO......' + '-' + 'Registro:'+ cRegistro ;
                      end;

                  end; //(Trim(cDatadoCredito)
         end; //wTemp = '1'
    end;  //(Eof)

  { FDiciona no Box de Arquivos o Arquivo Selecionado e o Total de Valores }
  BoxArquivos.items.add(wArqAtu + Format('%12.2F',[nValorTotal]));

  { Subtrae o Cabeçalho e o Rodapé do Arquivo }
  EdtTotalRegistros.Value  := wLinha - 0;
  EdtValorTotalGeral.Value := EdtValorTotalGeral.Value + nValorTotal;

  { Subtrae o Primeiro Registro que é Header e o Último que é o RegistroTrailer }
  EdtValidos.Value := (wLinha - 0) - EdtRejeitados.Value;
  wTemp            := FormatFloat('0000',EdtRejeitados.Value) +' - '+'REGISTROS REJEITADOS DO ARQUIVO DE RETORNO :'+wArqAtu+'.TXT';

  {Só FDiciona no Box de Erros se houver erros}
  If EdtRejeitados.Value > 0 then
     BoxMensagens.lines.Add(wTemp);

  RegistroTrailer;
end;

procedure TFormArquivodeRetorno748.RegistroTrailer;
{var PostReg     :Integer;
    wTemp       :String;
    wDATA       :String;
    wDIA_INC    :String;
    wExt        :String;
    wTime       :String;
    HoraInicial :TDateTime;
    HoraFinal   :TDateTime;
    TempoDecorrido :TDateTime;
    dDataVencimento :TDateTime;
    cAnoLiquidacao :string;
    cMesLiquidacao :string;
    FHandle     :Integer;
    arquivo     :string;
    Remessa     : TStringList;
    intConfirma: integer;
    }
var wTemp           :String;
    wDATA           :String;
    wDIA_INC        :String;
    wExt            :String;
    wTime           :String;
    cAnoLiquidacao  :string;
    cMesLiquidacao  :string;
    arquivo         :string;
    cNumerodoCedente:string;
    FHandle         :Integer;
    PostReg         :Integer;
    dDataVencimento :TDateTime;
    Remessa         :TStringList;
begin


  wTime      := Copy(TimetoStr(Time),1,5); //+Copy(TimetoStr(Time),4,2);
  wPosition  := 0;
  wRecno     := 1;
  wLinha     := 0;

  Reset(NomeArq);

  wLinha     := 0;

  while not Eof(NomeArq) do
       begin
         Application.ProcessMessages;

         cErros         := '';
         cDatadoCredito := '';
         cMesVcto       := '';
         cAnoVcto       := '';

         Readln(NomeArq,S);

         inc(wPosition);
         ProgressBar1.position := wPosition * 100 div wRecno;

         cDatadoCredito     := Copy(s,111,6);   // ok
         cDocumento         := Copy(s,117,10);
         cValorRecebido     := Copy(s,254,13);  // ok
        // cErros             := Copy(s,378,8);

         wTemp  := Copy(s,1,1);
         If wTemp = '0' then
            begin
              cNumerodoCedente := Copy(s,27,5);
              cNumerodoBanco   := Copy(s,77,3);
              cNomeDoBanco     := Copy(s,80,15);
            end;

         {Compara antes da Gravação}
       //  If (Trim(cDatadoCredito) <> '' )  and
        //    (StrToInt(cValorRecebido) > 0 )then
       //  if (cNumerodoCedente = IntToStr(FrmMvtoBancario.nNumerodaConta))  and
      //   If wTemp = '1' then
        // If (Copy(s,1,1) = '1') and (Copy(s,319,2) = '00') or (Copy(s,319,2) = 'H5') then
        // If (wTemp = '1') then
       //  If (Copy(s,319,2) = '00') or (Copy(s,319,2) = 'H5') then

         If (wTemp = '1') then
            If (Copy(s,319,2) = '00') or (Copy(s,319,2) = 'H5') then
            begin
              wTemp             := Copy(s,1,1);
              cDatadoCredito    := Copy(s,111,6);   // ok
              cDocumento        := Copy(s,117,10);
              cValorRecebido    := Copy(s,254,13);  // ok

             // If wTemp = '1' then
             if (cNumerodoCedente = FormatFloat('00000',dmcob.sds_CedentesCedenteCodigo.AsFloat))  and
                (Trim(cDatadoCredito) <> '' )  and
                (StrToInt(cValorRecebido) > 0 )then
                 begin
                   wLinha            := wLinha + 1; {Número de Registros do Arquivo}
                   EdtGravados.Value := wLinha;
                   wParte       := '';
                   wAssociado   := '';
                   n            := 0;
                //   wTemp        := Copy(s,117,10);
                   cNossoNumero := Copy(s,48,9);
                   //nNossoNumero := StrToInt(cNossoNumero);

                 //  If Trim(wTemp) <> '' then
                 //     begin
                 //       while (wParte <> '/') and (n <= 10)  do
                 //         begin
                 //           n      := n + 1;
                 //           wParte := Copy(wTemp,N,1);
                 //           If wParte <> '/' then
                 //             //Associado := wAssociado + wParte;
                 //              cCodAssociado := cCodAssociado + wParte;
                 //         end;
                 //     end; //trim
                  //   cDatadoVencimento := Copy(s,147,6); // ok
                  // cMesVcto          := Copy(s,298,2); // estas datas são do crédito
                  // cAnoVcto          := '20' + Copy(s,300,2); // precisa ser Data de Vencimento da Mensalidade

                   {---> 01.10.2005 - Esta Nova Rotina pega o Número do Boleto sem o Dígito  na Tabela de Boetos Impressos<---}

                   QryBuscaCodigoNumeroBoleto.Close;
                   QryBuscaCodigoNumeroBoleto.ParamByName('OLD_NOSSONUMERO').asString   := cNossoNumero;
                   QryBuscaCodigoNumeroBoleto.Open;


                   If not QryBuscaCodigoNumeroBoleto.Eof then
                      begin
                        nCodAssociado   := QryBuscaCodigoNumeroBoleto.FieldByName('CODIGO_CLIENTE').asInteger;
                        cNomeAssociado  := QryBuscaCodigoNumeroBoleto.FieldByName('NOME_SACADO').asString;
                        nAno            := QryBuscaCodigoNumeroBoleto.FieldByName('ANO').AsVariant;
                        nMes            := QryBuscaCodigoNumeroBoleto.FieldByName('MES').AsVariant;
                        dDataVencimento := QryBuscaCodigoNumeroBoleto.FieldByName('Data_Vencimento').asDateTime;
                        cDocumento      := FormatFloat('00000', QryBuscaCodigoNumeroBoleto.FieldByName('CODIGO').Value);

                        QryRetornoSicredi.Close;
                        //    QryRetornoSicredi.ParamByName('OLD_CODASSOCIADO').asInteger := nCodAssociado;
                        QryRetornoSicredi.ParamByName('OLD_ANOVCTO').asInteger      := nAno;
                        // QryRetornoSicredi.ParamByName('OLD_MESVCTO').asInteger      := nMes;
                     //   QryRetornoSicredi.ParamByName('OLD_NOSSONUMERO').asString   := FormatFloat('00000000',nNossoNumero);
                        QryRetornoSicredi.ParamByName('OLD_NOSSONUMERO').asString   := cNossoNumero;
                        QryRetornoSicredi.Open;

                        If QryRetornoSicredi.eof then
                          TblRetornoSicredi.Insert
                        else
                          TblRetornoSicredi.Edit;

                        TblRetornoSicredi.FieldByName('CODCLIENTE').asInteger    := nCodAssociado;     //  wNOSSO NUMERO                                 // 001 001  9(01)      0
                        TblRetornoSicredi.FieldByName('NOMEDOSACADO').AsString    :=  cNomeAssociado;
                        TblRetornoSicredi.FieldByName('NOSSONUMERO').asString   := cNossoNumero;       //  wNOSSO NUMERO                                 // 001 001  9(01)      0
                        TblRetornoSicredi.FieldByName('DOCUMENTO').AsString        := cDocumento;     //  wNOSSO NUMERO                                 // 001 001  9(01)      0
                        wTemp   := '';

                        If Copy(s,147,2) <> '' then
                           begin
                             TblRetornoSicredi.FieldByName('VENCIMENTO').asDateTime     := dDataVencimento;  //  wDATA DE VENCIMENTO
                             TblRetornoSicredi.FieldByName('ANOVCTO').asInteger         := nAno;
                             TblRetornoSicredi.FieldByName('MESVCTO').asInteger         := nMes;
                           end;

                        wTemp   := '';
                        wTemp   := Copy(s,109,2);
                        TblRetornoSicredi.FieldByName('CODIGODEOCORRENCIA').asInteger     := StrToInt(wTemp);    //  wVALOR LANCADO EM CONTA CORRENTE

                        wTemp   := '';
                        If Copy(s,111,2) <> '' then
                           begin
                             wTemp := Copy(s,111,2) + '/' + Copy(s,113,2) + '/' + '20' + Copy(s,115,2);
                             TblRetornoSicredi.FieldByName('DATADEOCORRENCIA').asDateTime   := StrToDateTime(wTemp); //  wDATA DE CREDITO DESTA LIQUIDACAO
                           end;

                        wTemp   := '';
                        wTemp   := Copy(s,153,13);
                        wValor  := StrToFloat(wTemp) / 100;
                        TblRetornoSicredi.FieldByName('VALORDOTITULO').asFloat := wValor;    //  wVALOR LANCADO EM CONTA CORRENTE
                        cBancoCobrador    := Copy(s,166,3);// banco cobrador
                        TblRetornoSicredi.FieldByName('BANCOCOBRADOR').asString      := cBancoCobrador;

                        cAgenciaCobradora := Copy(s,169,5);// agencia cobradora
                        TblRetornoSicredi.FieldByName('AGENCIACOBRADORA').asString   := cAgenciaCobradora;

                        wTemp   := '';
                       // wTemp   := Copy(s,176,13);
                       // wValor  := StrToFloat(wTemp) / 100;
                        TblRetornoSicredi.FieldByName('TARIFADECOBRANCA').asFloat  := wValor;     //  wVALOR DA DESPESA DA COBRANCA
                        wTemp   := '';
                     // wTemp   := Copy(s,228,13);
                     // TblRetornoSicredi.FieldByName('ABATIMENTO').asFloat        := wValor;     //  wVALOR DO ABATIMENTO CONCEDIDO
                        TblRetornoSicredi.FieldByName('ABATIMENTO').asFloat        := 0;     //  wVALOR DO ABATIMENTO CONCEDIDO
                        wTemp   := '';
                        wTemp   := Copy(s,241,13);
                        TblRetornoSicredi.FieldByName('DESCONTOS').asFloat         := cDesconto;    //  wVALOR DO DESCONTO CONCEDIDO
                        wTemp          := '';
                        wTemp          := Copy(s,254,13);
                        wValor         := StrToFloat(wTemp) / 100;
                        wValorRecebido := wValor;
                        EdtValorTotal.Value :=  EdtValorTotal.Value + wValorRecebido;
                        TblRetornoSicredi.FieldByName('VALORRECEBIDO').asFloat     := wValor;    //  wVALOR LANCADO EM CONTA CORRENTE
                        wTemp   := '';
                        wTemp   := Copy(s,267,13);
                        cJuros  := StrToFloat(wTemp) / 100;
                        TblRetornoSicredi.FieldByName('JUROS').asFloat        := cJUROS; //wValor;    //  wVALOR DE MORA E MULTA PAGOS PELO SACADO

                        wTemp   := '';
                        wTemp   := Copy(s,280,13);
                        cMulta  := StrToFloat(wTemp) / 100;
                        TblRetornoSicredi.FieldByName('MULTA').asFloat        := cMulta; //wValor;    //  wVALOR DE MORA E MULTA PAGOS PELO SACADO

                        {Pega o Dia do Crédito para consistir se não está vazio}
                        wTemp          := '';
                        cAnoLiquidacao := '';
                        cMesLiquidacao := '';
                        wTemp          := Trim(Copy(s,329,2));
                        If wTemp <> '' then
                           begin
                            // wTemp            := Copy(s,329,2) + '/' + Copy(s,331,2) + '/' + '20' + Copy(s,333,2);
                            // cDataLiquidacao  := Copy(s,329,2) + '/' + Copy(s,331,2) + '/' + '20' + Copy(s,333,2);
                            // TblRetornoSicredi.FieldByName('DATALIQUIDACAO').asDateTime   := StrToDateTime(wTemp); //  wDATA DE CREDITO DESTA LIQUIDACAO
                             cDataLiquidacao  := Copy(s,335,2) + '/' + Copy(s,333,2)  + '/' +  Copy(s,329,4);
                             TblRetornoSicredi.FieldByName('DATALIQUIDACAO').asDateTime   := StrToDateTime(cDataLiquidacao); //  wDATA DE CREDITO DESTA LIQUIDACAO
                            // cAnoLiquidacao   := '20 '+ Copy(s,333,2);
                             cAnoLiquidacao   :=  Copy(s,329,4);
                             cMesLiquidacao   := Copy(s,333,2);
                             TblRetornoSicredi.FieldByName('ANOLIQUIDACAO').asInteger := StrToInt(cAnoLiquidacao);
                             TblRetornoSicredi.FieldByName('MESLIQUIDACAO').asInteger := StrToInt(cMesLiquidacao);
                           end;

                        wTemp   := '';
                        //     wTemp   := Copy(s,325,30);
                        //     TblRetornoSicredi.FieldByName('NOMEDOSACADO').asString   := wTemp;               //  wNOME DO SACADO
                        wTemp   := '';
                        wTemp   := Copy(s,393,2);
                       // TblRetornoSicredi.FieldByName('CODLIQUIDACAO').asString  := wTemp;               //  wMEIO PELO QUAL O TITULO FOI LIQUIDADO
                        TblRetornoSicredi.FieldByName('ARQUIVO').asString        := UpperCase(wArqAtu);  //  NOME DO ARQUIVO                                  // 001 001  9(01)      0
                        TblRetornoSicredi.FieldByName('SEQUENCIA').asInteger     := wLinha;              //  Linha do Registro no Arquivo                                  // 001 001  9(01)      0

                       // cNumerodaAgencia := Copy(s,25,5);
                       // cNumerodaConta   := Copy(s,31,6);

                       // cNumerodaAgencia := FrmMvtoBancario.cNumerodaAgencia;
                        cNumerodaConta   := dmcob.sds_cedentesNUMEROCONTA.AsString;

                        TblRetornoSicredi.FieldByName('CEDENTE_CONTABAN_NUMEROCONTA').asString  := cNumerodaConta;        //  Número da Conta Corrente do Cedente                                  // 001 001  9(01)      0
                        TblRetornoSicredi.FieldByName('CEDENTE_CONTABAN_BANCOCODIGO').asString   := Trim(cNumerodoBanco);        //  Número da Conta Corrente do Cedente                                  // 001 001  9(01)      0
                        TblRetornoSicredi.FieldByName('CEDENTE_CONTABAN_CODIGOAGENCIA').asString := Trim(cNumerodaAgencia);        //  Número da Conta Corrente do Cedente                                  // 001 001  9(01)      0
                        TblRetornoSicredi.FieldByName('CEDENTE_CONTABAN_NOMEDOBANCO').asString   := UpperCase(cNomeDoBanco);        //  Número da Conta Corrente do Cedente                                  // 001 001  9(01)      0

                        TblRetornoSicredi.Post;
                        TblRetornoSicredi.ApplyUpdates(0);

                       // DM.SQLC.Commit(TD);
                         {--> Procedure <--}
                      ///GravaContaBancaria;
                      //  GravaMvtoBancario;
                        AtualizaSaldoBancario;
                        BaixaaMensalidade;

                      end //DtmSindicato.QryBuscaCodigoNumeroBoleto.Eof
                   else
                     begin
                     FormPrincipal.MsgInformacao.HTMLText.Text := 'Nosso Número não encontrado!!! ';
                     FormPrincipal.MsgInformacao.Execute;
                        //Global.Mensagem('Nosso Número não encontrado', mtInformation, [mbOK]);
                     end;

                 end; //wTemp
            end ; // comparação
       end;  //(eof)


  EdtGravados.Value := wLinha - 0;

  CloseFile(NomeArq);

  Screen.Cursor :=crDefault;

//  If FileExists( wArqnovo ) then
//     begin
       DeleteFile( wArqnovo );
       NomeAtu := wArqnovo;
       Rename( NomeArq,NomeAtu );

       FormPrincipal.MsgInformacao.HTMLText.Text := 'Arquivo Baixado...e Convertido...!!! ';
       FormPrincipal.MsgInformacao.Execute;

  ProgressBar1.position := 0;
  LbAguarde.Caption     := '';
end;

procedure TFormArquivodeRetorno748.BaixaaMensalidade;
var
  CONTAB : string;
begin

  Application.ProcessMessages;

  If (nAno <= 0) and (nMes <= 0) and (nCodAssociado <= 0) then
     exit;

  {---> Deixa Pago o Boleto<---}
  QryBuscaCodigoBoleto.Close;
  QryBuscaCodigoBoleto.ParamByName('Old_NossoNumero').asString   := cNossoNumero;
  QryBuscaCodigoBoleto.Open;

      if not QryBuscaCodigoBoleto.Eof then
       begin
       IBBoleto.Open;
       IBBoleto.Edit;
       IBBoleto.FieldByName('SITUACAO').asString          := 'F';
       IBBoleto.FieldByName('VALOR_JUROS').AsCurrency     := cJuros;
       IBBoleto.FieldByName('VALOR_ACRESCIMO').AsCurrency := cMulta;
       IBBoleto.FieldByName('VALOR_PAGO').AsCurrency      := wValorRecebido;
       IBBoleto.FIELDBYNAME('DATA_BAIXA').AsDateTime      := StrToDateTime(cDataLiquidacao);
       IBBoleto.FieldByName('VALOR_DESCONTO').AsCurrency  := cDesconto;
       IBBoleto.FieldByName('TP_BAIXA').asString          := 'A';
       IBBoleto.FieldByName('NOME_ARQ').asString          := UpperCase(wArqAtu);
       IBBoleto.Post;
       IBBoleto.ApplyUpdates(0);
       IBBoleto.Close;
     end;


  
end;

Procedure TFormArquivodeRetorno748.AtualizaSaldoBancario;
var wSaldoAtual:Extended;
begin
 // wSaldoAtual := 0;

  {Encontrar Registro no Banco}
  {DtmSindicato.QryLerSaldoContaBancaria.Close;
  DtmSindicato.QryLerSaldoContaBancaria.ParamByName('Old_NumerodaConta').AsInteger := FrmMvtoBancario.nNumerodaConta;
  DtmSindicato.QryLerSaldoContaBancaria.Open;

  wSaldoAtual    := DtmSindicato.QryLerSaldoContaBancaria.FieldByName('Saldo').asFloat + wValorRecebido;
  EdtSaldo.value := wSaldoAtual;

  DtmSindicato.IBAtualizaSaldoBancario.Edit;
  DtmSindicato.IBAtualizaSaldoBancario.FieldByName('Saldo').asFloat  :=wSaldoAtual;
  DtmSindicato.IBAtualizaSaldoBancario.Post;
  DtmSindicato.IBAtualizaSaldoBancario.Transaction.CommitRetaining;}
end;

procedure TFormArquivodeRetorno748.BtnEditarClick(Sender: TObject);
begin
  OpenDialog1.Execute;

  If OpenDialog1.FileName = '' then
     begin
       BtnSair.Enabled := True;
       exit;
     end;

  wPath                := OpenDialog1.FileName;

  DirSize(wPath);

  wLengthPath          := (Length(wPath)+ 1-12);
  wPathTemp            := Copy(wPath,1,wLengthPath-1) ;
  { Atualiza a Lista de Arquivos no Box de Arquivos Mostrados }
  FileListBox1.ApplyFilePath(wPathTemp + '\*.CRT');

  PnPath.caption       := wPath;
end;

procedure TFormArquivodeRetorno748.BtnProcessarClick(Sender: TObject);
var
  inicio, final, Dtbaixa, datebanc :string;
  contab :string;
  begin

     QryBuscaDataBaixa.Close;
     Cds_buscadataBaxia.Active := FALSE;


      BoxMensagens.Lines.Clear;
      EdtValorTotal.Value := 0;
      wArqRen             := Trim(Copy(wArqAtu,1,10));
      wLengthArq          := (Length(wArqAtu) + 1-3);

    //  wPathTemp           :=   Trim(cCaminho) + Trim(FrmMenuPrincipal.cRetorno);

      If Trim(wPathTemp) = '' then
         wPathTemp := 'C:\Siace\Retorno\';

        PnPath.Caption              := wPathTemp + wArqAtu;
        wArqNovo                    := wPathTemp + wArqRen + '.REN';
        PnArquivoRenomeado.caption  := wArqRen + '.REN';;

        {Nome e caminho do arquivo de Retorno}
        cArquivo                    := wPathTemp + cArquivoSelecionado;


        BtnProcessar.Enabled        := False;
        BtnEditar.Enabled           := False;
        BtnSair.Enabled             := False;

        LbAguarde.Visible           := True;
        LbAguarde.Caption           := 'Aguarde Processando ...';


          TblRetornoSicredi.Filtered := false;
          TblRetornoSicredi.Filter:= 'ARQUIVO ='+QuotedStr (wArqAtu);
          TblRetornoSicredi.Filtered := True;
          if not TblRetornoSicredi.Eof then
          begin
          TblRetornoSicredi.Delete;
          TblRetornoSicredi.ApplyUpdates(0);
          end;
          TblRetornoSicredi.Filtered := false;

            ConsisteRegistros;

            { Atualiza a Lista de Arquivos no Box de Arquivos Mostrados }
            FileListBox1.ApplyFilePath(wPathTemp + '\*.CRT');

            BtnEditar.Enabled           := True;
            BtnProcessar.Enabled        := False;
            BtnSair.Enabled             := True;


          //inicio:=datetostr(DATE);
          //final:=datetostr(DATE);

          Dtbaixa  := PnData.Text;
          datebanc := datetostr(PnData.Date);
          pndtcred.Caption := datebanc;


          contab := PnConta.Caption;

           //inicio:=cDataLiquidacao;
           //final:=cDataLiquidacao;


          // Dtbaixa  := datetostr(PnData.Text);
           PnData.Date := StrToDateTime(cDataLiquidacao); //(PnData.Date +1);
           Dtbaixa  := PnData.Text;

          QryBuscaDataBaixa.close;
          Cds_buscadataBaxia.Close;
          QryBuscaDataBaixa.SQL.Clear;
          QryBuscaDataBaixa.SQL.add('select * from CREDIARIO where COD_EMPRESA >0'+'');
          QryBuscaDataBaixa.SQL.add('and NOME_ARQ ='+QuotedStr(wArqAtu)+'');
          QryBuscaDataBaixa.SQL.add('and DATA_BAIXA ='+QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(Dtbaixa))));
          QryBuscaDataBaixa.Open;
          Cds_buscadataBaxia.Active :=TRUE;
          // Cds_buscadataBaxia.Filtered := false;
          // Cds_buscadataBaxia.Filter := 'DATA_BAIXA ='+QuotedStr(FormatDateTime('dd/mm/yyyy',StrToDate((DtBaixa))));
          // Cds_buscadataBaxia.Filtered := True;



         // grava parcelas baixadas
          Cds_buscadataBaxia.First;
          Contador := Cds_buscadataBaxia.RecordCount;
          For E:=1 to Contador do
          begin
         { Spc_crediario_Recebido.Params[1].Value   := Cds_buscadataBaxiaCODIGO.Text;
          Spc_crediario_Recebido.Params[2].Value   := dm.SDS_EmpresaCODIGO.Text;
          Spc_crediario_Recebido.Params[3].Value   := Cds_buscadataBaxiaPARCELA.Text;
          Spc_crediario_Recebido.Params[4].Value   := Cds_buscadataBaxiaVALOR_COMPRA.AsFloat;;
          Spc_crediario_Recebido.Params[5].Value   := Cds_buscadataBaxiaVALOR_JUROS.AsFloat;
          Spc_crediario_Recebido.Params[6].Value   := Cds_buscadataBaxiaVALOR_ACRESCIMO.AsFloat;
          Spc_crediario_Recebido.Params[7].Value   := Cds_buscadataBaxiaVALOR_DESCONTO.AsFloat;
          Spc_crediario_Recebido.Params[8].Value   := Cds_buscadataBaxiaVALOR_TOTAL.AsFloat;
          Spc_crediario_Recebido.Params[9].AsDate  := PnData.DATE;
          Spc_crediario_Recebido.Params[10].Value  := FormPrincipal.UserLogado;
          Spc_crediario_Recebido.Params[11].Value  := Cds_buscadataBaxiaCODIGO_CLIENTE.Text;
          Spc_crediario_Recebido.Params[12].Value  := Cds_buscadataBaxiaNOME_SACADO.Text;
          Spc_crediario_Recebido.Params[13].Value  := Cds_buscadataBaxiaCODIGO_COMPRA.Value;
          Spc_crediario_Recebido.Params[14].Value  := 0;
          Spc_crediario_Recebido.Params[15].asdate := Cds_buscadataBaxiaDATA_VENCIMENTO.AsDateTime;
          Spc_crediario_Recebido.Params[16].Value  := (Cds_buscadataBaxiaVALOR_COMPRA.AsFloat +  Cds_buscadataBaxiaVALOR_ACRESCIMO.AsFloat + Cds_buscadataBaxiaVALOR_JUROS.AsFloat) - Cds_buscadataBaxiaVALOR_DESCONTO.AsFloat;
          Spc_crediario_Recebido.ExecProc;   }
                   dm.ProxCod.Close;
                   dm.ProxCod.SQL.Clear;
                   dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM CREDIARIO_RECEBIDO');
                   DM.ProxCod.Open;

                   if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;

                   with DM.QConsulta do
                    begin
                    close;
                    sql.Clear;
                    sql.add('insert into CREDIARIO_RECEBIDO(CODIGO, COD_CREDIAIRIO, COD_EMPRESA, PARCELA, VALOR_PARCELA,');
                    sql.add('JUROS, MULTA, DESCONTO, VALOR_TOTAL, DATA_BAIXA, USUARIO, COD_cliente, nome_cliente, cod_compra,');
                    sql.add('saldo_pagar, data_vencimento, VALOR_PAGO, DOC_REC_ADM) values (:CODIGO, :COD_CREDIAIRIO, :COD_EMPRESA,');
                    sql.add(':PARCELA, :VALOR_PARCELA, :JUROS, :MULTA, :DESCONTO, :VALOR_TOTAL, :DATA_BAIXA, :USUARIO,  :COD_cliente,');
                    sql.add(':nome_cliente, :cod_compra, :saldo_pagar, :data_vencimento, :VALOR_PAGO, :DOC_REC_ADM);');

                    parambyname('codigo').AsInteger  := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    parambyname('COD_CREDIAIRIO').AsInteger   := Cds_buscadataBaxiaCODIGO.value;
                    parambyname('COD_EMPRESA').AsInteger   := dm.SDS_EmpresaCODIGO.value;
                    parambyname('PARCELA').asString    := Cds_buscadataBaxiaPARCELA.Text;
                    parambyname('VALOR_PARCELA').AsFloat     := Cds_buscadataBaxiaVALOR_COMPRA.AsFloat;
                    parambyname('JUROS').asfloat     := Cds_buscadataBaxiaVALOR_JUROS.AsFloat;
                    parambyname('MULTA').AsFloat     := Cds_buscadataBaxiaVALOR_ACRESCIMO.AsFloat;
                    parambyname('DESCONTO').AsFloat     := Cds_buscadataBaxiaVALOR_DESCONTO.AsFloat;
                    parambyname('VALOR_TOTAL').AsFloat     := Cds_buscadataBaxiavalor_total.AsFloat;
                    parambyname('DATA_BAIXA').AsDate      := date;
                    parambyname('USUARIO').AsString   := FormPrincipal.UserLogado;
                    parambyname('COD_CLIENTE').AsInteger  := Cds_buscadataBaxiaCodigo_Cliente.asinteger;
                    parambyname('NOME_CLIENTE').AsString   := Cds_buscadataBaxiaNOME_SACADO.Text;
                    parambyname('COD_COMPRA').AsString      := Cds_buscadataBaxiaCODIGO_COMPRA.Text;
                    parambyname('SALDO_PAGAR').AsFloat    := 0;
                    parambyname('DATA_VENCIMENTO').asdate     := Cds_buscadataBaxiaData_Vencimento.AsDateTime;
                    parambyname('VALOR_PAGO').AsFloat    := Cds_buscadataBaxiaVALOR_TOTAL.AsFloat;
                    parambyname('DOC_REC_ADM').Value       := null;    
                    ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    end;
          Cds_buscadataBaxia.NEXT;
          end;



               DM.SDS_Conta_Bancaria.Locate('CONTA', contab,[loCaseinSensitive]);

     Cds_buscadataBaxia.First;
     Contador := Cds_buscadataBaxia.RecordCount;
     For I:=1 to Contador do
     begin
    { SPC_MovimentoBancario.Params[1].AsDate     := PnData.Date;
     SPC_MovimentoBancario.Params[2].AsString   := 'Valor Ref. a Rec. titulos da Conta ' + PnConta.Caption;
     SPC_MovimentoBancario.Params[3].AsString   := FormPrincipal.UserLogado;
     SPC_MovimentoBancario.Params[4].AsString   := 'B';
     SPC_MovimentoBancario.Params[5].Value      := (Cds_buscadataBaxiaVALOR_COMPRA.AsFloat +  Cds_buscadataBaxiaVALOR_ACRESCIMO.AsFloat + Cds_buscadataBaxiaVALOR_JUROS.AsFloat) - Cds_buscadataBaxiaVALOR_DESCONTO.AsFloat;
     SPC_MovimentoBancario.Params[6].Value      := 0;
     SPC_MovimentoBancario.Params[7].Value      := DM.SDS_Conta_BancariaCODIGO.AsInteger;
     SPC_MovimentoBancario.Params[8].Value      := contab;
     SPC_MovimentoBancario.Params[9].Value      := NULL; //Cds_buscadataBaxiaCODIGO_COMPRA.AsString;
     SPC_MovimentoBancario.Params[10].value     := 'BOL';
     SPC_MovimentoBancario.Params[11].Value     := Cds_buscadataBaxiaCODIGO.Text;
     SPC_MovimentoBancario.Execproc;  }
     
                    dm.ProxCod.Close;
                    dm.ProxCod.SQL.Clear;
                    dm.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM MOVIMENTO_DIARIO');
                    DM.ProxCod.Open;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,COD_CREDIARIO, CODIGO_CC, NUMERO_CC)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:COD_CREDIARIO, :CODIGO_CC, :NUMERO_CC)');

                    qrcaixa_mov.parambyname('codigo').AsInteger := DM.ProxCodN_CODIGO.ASINTEGER + 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      := PnData.Date;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := (Cds_buscadataBaxiaVALOR_COMPRA.AsFloat +  Cds_buscadataBaxiaVALOR_ACRESCIMO.AsFloat + Cds_buscadataBaxiaVALOR_JUROS.AsFloat) - Cds_buscadataBaxiaVALOR_DESCONTO.AsFloat;
                    qrcaixa_mov.parambyname('valor').asfloat := (Cds_buscadataBaxiaVALOR_COMPRA.AsFloat +  Cds_buscadataBaxiaVALOR_ACRESCIMO.AsFloat + Cds_buscadataBaxiaVALOR_JUROS.AsFloat) - Cds_buscadataBaxiaVALOR_DESCONTO.AsFloat;

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_RECEBIMENTO_CREDIARIO').asstring;
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 9; // CHEQUE PRAZO
                    qrcaixa_mov.parambyname('historico').asstring := 'Valor Ref. a Rec. titulos da Conta ' + PnConta.Caption;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'B';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'BOL';
                    qrcaixa_mov.parambyname('COD_CREDIARIO').AsString  := Cds_buscadataBaxiaCODIGO.Text;
                    qrcaixa_mov.parambyname('CODIGO_CC').AsInteger     := DM.SDS_Conta_BancariaCODIGO.AsInteger;
                    qrcaixa_mov.parambyname('NUMERO_CC').AsString      := contab;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
                    
                    Cds_buscadataBaxia.NEXT;
      end;

end;

procedure TFormArquivodeRetorno748.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormArquivodeRetorno748.GeraArquivoTexto;
begin
  Porta_Saida := 'C:\Siace' + wArqAtu + 'ERR.TXT';
  AssignFile(Local_Saida, Porta_Saida);

  Rewrite(Local_Saida);
end;

procedure TFormArquivodeRetorno748.FileListBox1Click(Sender: TObject);
var
  nLengh:Integer;
  FileExt: string[4];
begin
  wLengthPath                  := (Length(wPath)+ 1-12);

  {Pega o Nome do Arquivo de Retorno com a Exensão}
  cArquivoSelecionado          := FileListBox1.Items[FileListBox1.ItemIndex];
  PnArquivoSelecionado.caption := FileListBox1.Items[FileListBox1.ItemIndex];
  nLengh                       := pos('.', PnArquivoSelecionado.caption) - 1;

  {Pega o Nome do Arquivo de Retorno sem a Exensão}
  wArqAtu                      := Copy(cArquivoSelecionado,1,nLengh);
  PnPath.Caption               := wPath + cArquivoSelecionado;

  BtnProcessar.Enabled         := True;
end;

procedure TFormArquivodeRetorno748.FormShow(Sender: TObject);
begin
     TblRetornoSicredi.Active := False;
     TblRetornoSicredi.Active := true;

//  If not DtmSindicato.TblBaixaMensalidade.Active then
//     DtmSindicato.TblBaixaMensalidade.Open;

 // If not QryPegaContaBancaria.Active then
 //    QryPegaContaBancaria.Open;

//  If not IBGravarContasbancarias.Active then
//     IBGravarContasbancarias.Open;

//  DtmSindicato.IBMvtoBancario.Open;

 IBBoleto.Active := false;
 IBBoleto.Active := true;
 DMCOB.sds_Cedentes.Active := false;
 DMCOB.sds_Cedentes.Active := true;
 DM.SDS_Conta_Bancaria.Active:= False;
 DM.SDS_Conta_Bancaria.Active:= True;


 // wPath          := 'd:\Sistemas\Sindicato\CobrancaBancaria\Retorno\';
  PnConta.Caption := DMCOB.sds_cedentesNUMEROCONTA.Text; //FormatFloat('000',DMCOB.sds_cedentesNUMEROCONTA.ASasInteger);
  PnBanco.Caption := DMCOB.sds_cedentesDESCRICAO.asString;
  PnEmpresa.Caption := DMCOB.sds_cedentesNOMECEDENTE.AsString;
  PnCgc.Caption := DMCOB.sds_cedentesCNPJCEDENTE.AsString;
 // pndtcred.Caption := cDatadoCredito;
end;

procedure TFormArquivodeRetorno748.GravaMvtoBancario;
var I, nLancamento:Integer;
    cAnoMes:String;
begin
//  cAnoMes := Copy(FrmMvtoBancario.EdtData.Text,7,4)+Copy(FrmMvtoBancario.EdtData.Text,4,2);

  {------------------> <---------------------------------}
 { DtmSindicato.QryBuscaCodigoContaBancaria.Close;
  DtmSindicato.QryBuscaCodigoContaBancaria.ParamByName('Old_NumerodaConta').AsInteger := FrmMvtoBancario.nNumerodaConta;
  DtmSindicato.QryBuscaCodigoContaBancaria.Open;

  nSaldoAnterior   := DtmSindicato.QryBuscaCodigoContaBancaria.FieldbyName('Saldo').asFloat;
  {------------------> <---------------------------------}

 { DtmSindicato.QryUltimoLancamentoMvtoBancario.Close;
  DtmSindicato.QryUltimoLancamentoMvtoBancario.Open;

  nLancamento :=DtmSindicato.QryUltimoLancamentoMvtoBancario.FieldByName('Lancamento').asInteger;
  If nLancamento =0 then
     nLancamento :=1;

  DtmSindicato.QryBuscaCodigoMvtoBancario.Close;
  DtmSindicato.QryBuscaCodigoMvtoBancario.ParamByName('Old_Lancamento').asInteger :=nLancamento;
  DtmSindicato.QryBuscaCodigoMvtoBancario.Open;

  DtmSindicato.IBMvtoBancario.Insert;
  DtmSindicato.IBMvtoBancario.FieldByName('LANCAMENTO').asInteger      := nLancamento;
  DtmSindicato.IBMvtoBancario.FieldByName('ANOMES').asString           := cAnoMes;
  DtmSindicato.IBMvtoBancario.FieldByName('DATALANCAMENTO').asDateTime := Date;
  DtmSindicato.IBMvtoBancario.FieldByName('DATAMOVIMENTO').asDateTime  := Date;
  DtmSindicato.IBMvtoBancario.FieldByName('DOCUMENTO').asString        := cDocumento;
  DtmSindicato.IBMvtoBancario.FieldByName('CONTABANCARIA').asInteger   := FrmMvtoBancario.nNumerodaConta;
  DtmSindicato.IBMvtoBancario.FieldByName('DctoTipo').asInteger        := FrmMvtoBancario.EdtTipoDcto.asInteger;//nTipoDcto;
  DtmSindicato.IBMvtoBancario.FieldByName('CodigoMovimento').asInteger := FrmMvtoBancario.EdtCodigoMovimento.asInteger;//nCodigoMovimento;
  DtmSindicato.IBMvtoBancario.FieldByName('CodigoPortador').asInteger  := FrmMvtoBancario.EdtCodigoPortador.asInteger;
  DtmSindicato.IBMvtoBancario.FieldByName('NomePortador').asString     := FrmMvtoBancario.EdtNomePortador.Text;
  DtmSindicato.IBMvtoBancario.FieldByName('DEBITOCREDITO').asString    := 'C';
  DtmSindicato.IBMvtoBancario.FieldByName('VALOR').asFloat             := wValorRecebido;
  DtmSindicato.IBMvtoBancario.FieldByName('HISCODIGO').asInteger       := FrmMvtoBancario.EdtHisCodigo.asInteger;;
  DtmSindicato.IBMvtoBancario.FieldByName('HISTORICO1').asString       := FrmMvtoBancario.EdtHistorico1.Text;
  DtmSindicato.IBMvtoBancario.FieldByName('HISTORICO2').asString       := FrmMvtoBancario.EdtHistorico2.Text;
  DtmSindicato.IBMvtoBancario.FieldByName('SaldoAnterior').asFloat     := nSaldoAnterior;

  nSaldoAtual := nSaldoAnterior + wValorRecebido;

  DtmSindicato.IBMvtoBancario.FieldByName('SaldoAtual').asFloat        := nSaldoAtual;
  DtmSindicato.IBMvtoBancario.FieldByName('CodigoUsuario').asInteger   := FrmMenuPrincipal.nCodigoUsuario;
  DtmSindicato.IBMvtoBancario.FieldByName('NomeUsuario').asString      := FrmMenuPrincipal.cNomeUsuario;
  DtmSindicato.IBMvtoBancario.FieldByName('Data').asDateTime           := Date;
  DtmSindicato.IBMvtoBancario.FieldByName('Hora').asDateTime           := Time;
  DtmSindicato.IBMvtoBancario.FieldByName('ARQUIVORETORNO').asString   := UpperCase(wArqAtu);       //  NOME DO ARQUIVO                             // 001 001  9(01)      0
  DtmSindicato.IBMvtoBancario.FieldByName('SEQUENCIA').asInteger       := wLinha;                  //  Linha do Registro no Arquivo de Retorno      // 001 001  9(01)      0

  DtmSindicato.IBMvtoBancario.Post;
  DtmSindicato.IBMvtoBancario.Transaction.CommitRetaining;

  DtmSindicato.QryMvtoBancario.Close;
  DtmSindicato.QryMvtoBancario.Open;

  EdtGravados.Value := wLinha;
  }
end;

function TFormArquivodeRetorno748.DirSize(Dir:string):integer;
{Retorna o tamanho de um diretório}
var
  SearchRec : TSearchRec;
  Separator : string;
  DirBytes : integer;
begin
  if Copy(Dir,Length(Dir),1)='\' then
     begin
       Separator := '';
     end
  else
     begin
       Separator := '\';
     end;

  if FindFirst(Dir+Separator+'*.*',faAnyFile,SearchRec) = 0 then
     begin
       if FileExists(Dir+Separator+SearchRec.Name) then
          begin
            DirBytes := DirBytes + SearchRec.Size;
          end
       else
         if DirectoryExists(Dir+Separator+SearchRec.Name) then
            begin
              if (SearchRec.Name<>'.') and (SearchRec.Name<>'..') then
                  begin
                    DirSize(Dir+Separator+SearchRec.Name);
                  end;
            end;

  while FindNext(SearchRec) = 0 do
        begin
          if FileExists(Dir+Separator+SearchRec.Name) then
             begin
               DirBytes := DirBytes + SearchRec.Size;
             end
          else if DirectoryExists(Dir+Separator+SearchRec.Name) then
               begin
                 if (SearchRec.Name<>'.') and (SearchRec.Name<>'..') then
                    begin
                      DirSize(Dir+Separator+SearchRec.Name);
                    end;
               end;
        end;
  end;

  FindClose(SearchRec);
end;

procedure TFormArquivodeRetorno748.FormActivate(Sender: TObject);
begin
 // PnConta.Caption := FormatFloat('000',FrmMvtoBancario.IBContasBancarias.FieldbyName('NumerodaConta').asInteger);
  //PnBanco.Caption := FrmMvtoBancario.IBContasBancarias.FieldbyName('NomedoBanco').asString;

  FileListBox1.ApplyFilePath(Trim(FormPrincipal.cCaminho.Text) + '*.CRT');

  PnPath.Caption := Trim(FormPrincipal.cCaminho.Text) + '*.CRT';
  wPath          := PnPath.Caption;
end;

procedure TFormArquivodeRetorno748.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormArquivodeRetorno748 := nil;
end;

end.


