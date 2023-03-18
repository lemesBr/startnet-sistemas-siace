unit Unit_ECF_Bematech_Fi2;

interface

uses
 Forms, Windows, IniFiles, SysUtils, Classes, IBServices, QDialogs, QControls;

  { Declaração das Funções da nova DLL BEMAFI32.DLL }

  //---------------- Funções de Inicialização ------------------

  function Bematech_FI_AlteraSimboloMoeda(SimboloMoeda: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_ProgramaAliquota(Aliquota: String; ICMS_ISS: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_ProgramaHorarioVerao: Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms(Indice: Integer; Totalizador: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_ProgramaArredondamento:Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_ProgramaTruncamento:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ProgramaTruncamento';
  function Bematech_FI_NomeiaDepartamento(Indice: Integer; Departamento: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_LinhasEntreCupons(Linhas: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_EspacoEntreLinhas(Dots: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_ForcaImpactoAgulhas(ForcaImpacto: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_ResetaImpressora:Integer; StdCall; External 'BEMAFI32.DLL';


  //---------------- Funções do Cupom Fiscal -----------------

  function Bematech_FI_AbreCupom(CGC_CPF: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VendeItem(Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VendeItemDepartamento(Codigo: String; Descricao: String; Aliquota: String; ValorUnitario: String; Quantidade: String; Acrescimo: String; Desconto: String; IndiceDepartamento: String; UnidadeMedida: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_CancelaItemAnterior: Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_CancelaItemGenerico(NumeroItem: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_IniciaFechamentoCupom(AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_EfetuaFormaPagamento(FormaPagamento: String; ValorFormaPagamento: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_EfetuaFormaPagamentoDescricaoForma(FormaPagamento: string; ValorFormaPagamento: string; DescricaoFormaPagto: string ): integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_TerminaFechamentoCupom(Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_FechaCupom(FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_FechaCupomResumido(FormaPagamento: String; Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_AumentaDescricaoItem(Descricao: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_UsaUnidadeMedida(UnidadeMedida: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_EstornoFormasPagamento(FormaOrigem: String; FormaDestino: String; Valor: String): Integer; StdCall; External 'BEMAFI32.DLL';

  //----------------- Funções dos Relatórios Fiscais -----------------

  function Bematech_FI_ReducaoZ(Data: String; Hora: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_LeituraX:Integer; StdCall; External 'BEMAFI32.DLL' ;
  function Bematech_FI_LeituraXSerial:Integer; StdCall; External 'BEMAFI32.DLL' ;
  function Bematech_FI_LeituraMemoriaFiscalData(DataInicial: String; DataFinal: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_LeituraMemoriaFiscalReducao(ReducaoInicial: String; ReducaoFinal: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_LeituraMemoriaFiscalSerialData(DataInicial: String; DataFinal: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_LeituraMemoriaFiscalSerialReducao(ReducaoInicial: String; ReducaoFinal: String): Integer; StdCall; External 'BEMAFI32.DLL';

  //------------------ Funções das Operações Não Fiscais --------------------

  function Bematech_FI_RelatorioGerencial(Texto: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_FechaRelatorioGerencial:Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_RecebimentoNaoFiscal(IndiceTotalizador: String; Valor: String; FormaPagamento: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_AbreComprovanteNaoFiscalVinculado(FormaPagamento: String; Valor: String; NumeroCupom: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_UsaComprovanteNaoFiscalVinculado(Texto: String): Integer; StdCall; External 'BEMAFI32.DLL'
  function Bematech_FI_FechaComprovanteNaoFiscalVinculado:Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_Sangria(Valor: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_Suprimento(Valor: String; FormaPagamento: String): Integer; StdCall; External 'BEMAFI32.DLL';

  //--------------- Funções de Autenticação e Gaveta de Dinheiro -------------------

  function Bematech_FI_Autenticacao:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_Autenticacao';
  function Bematech_FI_ProgramaCaracterAutenticacao(Parametros: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_AcionaGaveta:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta';
  function Bematech_FI_VerificaEstadoGaveta(Var EstadoGaveta: Integer): Integer; StdCall; External 'BEMAFI32.DLL';

  //----------------- Funções de Informações da Impressora ---------------------

  function Bematech_FI_VerificaEstadoImpressora(Var ACK: Integer; Var ST1: Integer; Var ST2: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_NumeroSerie(NumeroSerie: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_SubTotal(SubTotal: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_NumeroCupom(NumeroCupom: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VersaoFirmware(VersaoFirmware: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_CGC_IE(CGC: String; IE: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_GrandeTotal(GrandeTotal: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_Cancelamentos(ValorCancelamentos: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_Descontos(ValorDescontos: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_NumeroOperacoesNaoFiscais(NumeroOperacoes: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_NumeroCuponsCancelados(NumeroCancelamentos: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_NumeroIntervencoes(NumeroIntervencoes: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_NumeroReducoes(NumeroReducoes: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_NumeroSubstituicoesProprietario(NumeroSubstituicoes: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_UltimoItemVendido(NumeroItem: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_ClicheProprietario(Cliche: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_NumeroCaixa(NumeroCaixa: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_NumeroLoja(NumeroLoja: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_SimboloMoeda(SimboloMoeda: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_MinutosLigada(Minutos: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_MinutosImprimindo(Minutos: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VerificaModoOperacao(Modo: string): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VerificaEpromConectada(Flag: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_FlagsFiscais(Var Flag: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_ValorPagoUltimoCupom(ValorCupom: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_DataHoraImpressora(Data: String; Hora: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_ContadoresTotalizadoresNaoFiscais(Contadores: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VerificaTotalizadoresNaoFiscais(Totalizadores: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_DataHoraReducao(Data: String; Hora: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_DataMovimento(Data: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VerificaTruncamento(Flag: string): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_Acrescimos(ValorAcrescimos: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_ContadorBilhetePassagem(ContadorPassagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VerificaAliquotasIss(Flag: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VerificaFormasPagamento(Formas: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VerificaRecebimentoNaoFiscal(Recebimentos: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VerificaDepartamentos(Departamentos: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VerificaTipoImpressora(Var TipoImpressora: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VerificaTotalizadoresParciais(Totalizadores: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_RetornoAliquotas(Aliquotas: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_DadosUltimaReducao(DadosReducao: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_MonitoramentoPapel(Var Linhas: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VerificaIndiceAliquotasIss(Flag: String): Integer; StdCall; External 'BEMAFI32.DLL';

  //-------------- Funções para a Impressora Restaurante -------------------

  function Bematech_FIR_AbreCupomRestaurante(Mesa: String; CGC_CPF: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_RegistraVenda (Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String) : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_CancelaVenda (Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String) : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_ConferenciaMesa (Mesa: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String) : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_AbreConferenciaMesa (Mesa: String) : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_FechaConferenciaMesa (FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String) : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_TransferenciaMesa (MesaOrigem: String; MesaDestino: String) : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_ContaDividida (NumeroCupons: String; ValorPago: String; CGC_CPF: String) : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_FechaCupomContaDividida (NumeroCupons: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; FormasPagamento: String; ValorFormasPagamento: String; ValorPagoCliente: String; CGC_CPF: String) : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_TransferenciaItem (MesaOrigem: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String; MesaDestino: String) : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_RelatorioMesasAbertas (TipoRelatorio: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_ImprimeCardapio : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_RelatorioMesasAbertasSerial : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_CardapioPelaSerial : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_RegistroVendaSerial(Mesa: String) : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_VerificaMemoriaLivre (Bytes: String) : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_FechaCupomRestaurante (FormaPagamento: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorFormaPagto: String; Mensagem: String) : Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FIR_FechaCupomResumidoRestaurante(FormaPagamento: String; Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';


  //-------------- Função para a Impressora Bilhete de Passagem --------------

  function Bematech_FI_AbreBilhetePassagem(ImprimeValorFinal: string;
                                           ImprimeEnfatizado: string;
                                           Embarque         : string;
                                           Destino          : string;
                                           Linha            : string;
                                           Prefixo          : string;
                                           Agente           : string;
                                           Agencia          : string;
                                           Data             : string;
                                           Hora             : string;
                                           Poltrona         : string;
                                           Plataforma       : string ): Integer; StdCall; External 'BEMAFI32.DLL';


  //------------ Funções de Impressão de Cheques --------------

  function Bematech_FI_ProgramaMoedaSingular(MoedaSingular: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_ProgramaMoedaPlural(MoedaPlural: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_CancelaImpressaoCheque:Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_VerificaStatusCheque(Var StatusCheque: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_ImprimeCheque(Banco: String; Valor: String; Favorecido: String; Cidade: String; Data: String; Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_IncluiCidadeFavorecido(Cidade: String; Favorecido: String): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_ImprimeCopiaCheque:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeCopiaCheque';


  //------------ Funções para o TEF ----------------

  function Bematech_FITEF_Status(Identificacao: string): integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FITEF_VendaCartao(Identificacao: string; ValorCompra: string): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FITEF_ConfirmaVenda(Identificacao: string; ValorCompra: string; Header: string): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FITEF_NaoConfirmaVendaImpressao(Identificacao: string; ValorCompra: string): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FITEF_CancelaVendaCartao(Identificacao: string; ValorCompra: string; Nsu: string; NumeroCupom: string; Hora: string; Data: string; Rede: string): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FITEF_ImprimeTEF(Identificacao: string; FormaPagamento: string; ValorCompra: string): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FITEF_ImprimeRelatorio: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FITEF_ImprimeRelatorio';
  function Bematech_FITEF_ADM(Identificacao: string): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FITEF_VendaCompleta(Identificacao: string; ValorCompra: string; FormaPagamento: string; Texto: string): Integer; StdCall; External 'BEMAFI32.DLL';


  //------------ Outras Funções --------------------

  function Bematech_FI_AbrePortaSerial:Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_RetornoImpressora(Var ACK: Integer; Var ST1: Integer; Var ST2: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_FechaPortaSerial:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechaPortaSerial';
  function Bematech_FI_MapaResumo:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumo';
  function Bematech_FI_AberturaDoDia( ValorCompra: string; FormaPagamento: string ): Integer; StdCall; External 'BEMAFI32.DLL';
  function Bematech_FI_FechamentoDoDia:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechamentoDoDia';
  function Bematech_FI_ImprimeConfiguracoesImpressora:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeConfiguracoesImpressora';
  function Bematech_FI_ImprimeDepartamentos:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeDepartamentos';
  function Bematech_FI_RelatorioTipo60Analitico:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Analitico';
  function Bematech_FI_RelatorioTipo60Mestre:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Mestre';
  function Bematech_FI_VerificaImpressoraLigada:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_VerificaImpressoraLigada';

  Function Cancela_Cupom_Bematech_Fi2: boolean;
  procedure Horario_Verao_Bematech_Fi2;
  procedure Estado_ECF_Bematech_Fi2;
  procedure Reducao_Z_Bematech_Fi2;
  procedure Leitura_X_Bematech_Fi2;
  Function Abre_Gaveta_Bematech_Fi2: boolean;

  Function Verifica_Estado_ECF_Bematech_Fi2(numestado: integer) : integer;
  Function Retorno_Impressora_Bematech_Fi2(numestado: integer ; Mensagem: String = '') : integer;
  Procedure Analisa_iRetorno_Bematech_Fi2();

//------ Var declarations ------> Bematech MP20Fi2 MP40Fi2 <------
var
 iRetorno: Integer;                                 // Variável com o retorno da função
 iControle: Integer;
 iACK, iST1, iST2: Integer;                         // Variáveis com o retorno do Status da Impressora}
 GavetaInstalada, iDecimal: integer;
 sTipoQtde, sTipoDesconto: String;

implementation

{-------- Verifica estado da Impressora ---------}
Function Verifica_Estado_ECF_Bematech_Fi2(numestado: integer) : integer;
var est1,est2 : integer;
    estado01,estado02,estado03,estado04,estado05,estado06,estado07,
    estado08,estado09,estado10,estado11,estado12,estado13,estado14,
    estado15,estado16 : integer;
begin
 estado01 := 0; estado02 := 0; estado03 := 0; estado04 := 0; estado05 := 0; estado06 := 0;
 estado07 := 0; estado08 := 0; estado09 := 0; estado10 := 0; estado11 := 0; estado12 := 0;
 estado13 := 0; estado14 := 0; estado15 := 0; estado16 := 0;

 iACK := 0; iST1 := 0; iST2 := 0;

 Result := -1;
 iRetorno := Bematech_FI_VerificaEstadoImpressora( iAck, iSt1, iSt2 );
 if iRetorno = 1 then
  begin
   if iACK = 6 then                      //se recebimento foi correto...
    begin
     // Verifica ST1
     IF iST1 >= 128 Then begin iST1 := iST1 - 128; estado01 := 1; end;
     IF iST1 >= 64  Then begin iST1 := iST1 - 64;  estado02 := 1; end;
     IF iST1 >= 32  Then begin iST1 := iST1 - 32;  estado03 := 1; end;
     IF iST1 >= 16  Then begin iST1 := iST1 - 16;  estado04 := 1; end;
     IF iST1 >= 8   Then begin iST1 := iST1 - 8;   estado05 := 1; end;
     IF iST1 >= 4   Then begin iST1 := iST1 - 4;   estado06 := 1; end;
     IF iST1 >= 2   Then begin iST1 := iST1 - 2;   estado07 := 1; end;
     IF iST1 >= 1   Then begin iST1 := iST1 - 1;   estado08 := 1; end;
     // Verifica ST2
     IF iST2 >= 128 Then begin iST2 := iST2 - 128; estado09 := 1; end;
     IF iST2 >= 64  Then begin iST2 := iST2 - 64;  estado10 := 1; end;
     IF iST2 >= 32  Then begin iST2 := iST2 - 32;  estado11 := 1; end;
     IF iST2 >= 16  Then begin iST2 := iST2 - 16;  estado12 := 1; end;
     IF iST2 >= 8   Then begin iST2 := iST2 - 8;   estado13 := 1; end;
     IF iST2 >= 4   Then begin iST2 := iST2 - 4;   estado14 := 1; end;
     IF iST2 >= 2   Then begin iST2 := iST2 - 2;   estado15 := 1; end;
     IF iST2 >= 1   Then begin iST2 := iST2 - 1;   estado16 := 1; end;

     CASE numestado of
      1 : Result := estado01; // FIM DE PAPEL
      2 : Result := estado02; // POUCO PAPEL
      3 : Result := estado03; // ERRO NO RELOGIO
      4 : Result := estado04; // IMPRESSORA EM ERRO
      5 : Result := estado05; // CMD NAO INICIADO COM ESC
      6 : Result := estado06; // COMANDO INEXISTENTE
      7 : Result := estado07; // CUPOM ABERTO
      8 : Result := estado08; // NUMERO DE PARAMETROS INVALIDO
      9 : Result := estado09; // TIPO DE PARAMETRO INVALIDO
      10: Result := estado10; // MEMORIA FISCAL LOTADA
      11: Result := estado11; // CMOS NAO VOLATIL
      12: Result := estado12; // ALIQUOTA NAO PROGRAMADA
      13: Result := estado13; // ALIQUOTAS LOTADAS
      14: Result := estado14; // CANCELAMENTO NAO PERMITIDO
      15: Result := estado15; // CGC/IE NAO PROGRAMADOS
      16: Result := estado16; // COMANDO NAO EXECUTADO
     END;

    end
   else
    if iACK = 21 then //se recebimento foi incorreto...
     begin
      application.MessageBox('Problemas na Recepção de dados pelo ECF.'+#13+
                             'Possíveis Erros:'#13#13+
                             ' - "Timeout" na recepção de dados pela impressora;'+#13+
                             ' - Seqüência de dados enviados estão incorretos.'+#13#13+
                             'Verifique o ECF e tente novamente', 'Atenção', mb_ok + mb_iconerror);
     end;
  end
 else
  Analisa_iRetorno_Bematech_Fi2();
end;

//------ Abre Gaveta Acoplada ao ECF ------
Function Abre_Gaveta_Bematech_Fi2: boolean;
var
 EstadoGaveta: integer;
begin
 Result:=false;
 If GavetaInstalada <> 3 then                                                              //Gaveta não instalada
  begin
   EstadoGaveta := 0;
   iRetorno := Bematech_FI_VerificaEstadoGaveta(EstadoGaveta);
    if iRetorno = 1 then
     begin
      if EstadoGaveta = 0 then // Se Gaveta Fechada...
       begin
        iRetorno := Bematech_FI_AcionaGaveta(); //Abre gaveta!
        if iretorno = 1 then
         begin
          iRetorno := Bematech_FI_VerificaEstadoGaveta(EstadoGaveta);
           if iretorno = 1 then
            if EstadoGaveta = 0 then
             application.MessageBox('Erro ao tentar Abrir Gaveta acoplada ao ECF.'#13#10+
                                    'Verifique o ECF e tente novamente',
                                    'Atenção',mb_iconerror + mb_ok);
         end
        else Analisa_iRetorno_Bematech_Fi2();
       end;
     end
    else Analisa_iRetorno_Bematech_Fi2();
  end;
{while GavetaECFAberta do
    application.MessageBox('Feche a Gaveta e clique OK para continuar...', 'Gaveta Aberta', mb_ok + mb_iconexclamation);}
end;

//------ Cancela Cupom Fiscal ------
Function Cancela_Cupom_Bematech_Fi2: boolean;
var
 retorno: integer;
 noError: Boolean;
begin
 noError:=False;
 if Bematech_FI_VerificaImpressoraLigada() = 1 then
  begin
   if Verifica_Estado_ECF_Bematech_Fi2(7) = 0 then //se CUPOM FECHADO
    begin
     iRetorno := Bematech_FI_CancelaCupom();
     if iRetorno = 1 then
      begin
       retorno := Retorno_Impressora_Bematech_Fi2(16);
       CASE retorno of
        1:  Retorno_Impressora_Bematech_Fi2(-1,'ERRO: Não foi possível realizar cancelamento de Cupom Fiscal.'#13#10+
                                  'Verifique mensagens do ECF:'#13#10);
        -2: Application.MessageBox('Último Cupom Fiscal Cancelado com sucesso!',
                                   'Confirmação',mb_ok+mb_iconinformation);
        -1: Application.MessageBox('Não foi possível cancelar cupom fiscal',
                                   'ERRO',mb_iconERROR+mb_ok);
       END;
      end
     else
      Analisa_iRetorno_Bematech_Fi2;
    end
   else
    begin
     if Verifica_Estado_ECF_Bematech_Fi2(7) = 1 then //se CUPOM ABERTO
      begin
       iRetorno := Bematech_FI_CancelaCupom();  //cancela cupom fiscal
       if iRetorno = 1 then
        begin
         retorno := Retorno_Impressora_Bematech_Fi2(16);
         CASE retorno of
         1: //comando nao executado -> vende item e cancela depois
            begin
             iRetorno := Bematech_FI_VendeItem(StrPas(Pchar('123')),StrPas(Pchar('Teste')),
                                      StrPas(Pchar('1700')), sTipoQtde,
                                      StrPas(Pchar('100')), iDecimal,
                                      StrPas(Pchar('100')) , sTipoDesconto, StrPas('0'));
             if iRetorno = 1 then
              begin
               if Verifica_Estado_ECF_Bematech_Fi2(16) = 0 then //se item vendido
                begin
                 iRetorno := Bematech_FI_CancelaCupom();
                 if iRetorno = 1 then
                  begin
                   if Verifica_Estado_ECF_Bematech_Fi2(16) = 1 then
                    Retorno_Impressora_Bematech_Fi2(-1,'ERRO: Não foi possível realizar cancelamento de Cupom Fiscal.'#13#10+
                                          'Verifique mensagens do ECF:'#13#10)
                   else
                    application.MessageBox('Último Cupom Fiscal Cancelado com sucesso!',
                                           'Confirmação',mb_ok+mb_iconinformation);
                  end
                 else
                  Analisa_iRetorno_Bematech_Fi2;
                end
               else
                Retorno_Impressora_Bematech_Fi2(-1,'ERRO: Não foi possível realizar cancelamento de Cupom Fiscal.'#13#10+
                                        'Verifique mensagens do ECF:'#13#10);
              end
             else
              Analisa_iRetorno_Bematech_Fi2;
            end;
         -2: // nenhum estado retornado
            begin
             application.MessageBox('Último Cupom Fiscal Cancelado com sucesso!',
                                    'Confirmação',mb_ok+mb_iconinformation);
            end;
         -1:
            begin
             application.MessageBox('Não foi possível cancelar cupom fiscal',
                                    'Atenção',mb_iconERROR+mb_ok);
            end;
         END;

        end
       else
        Analisa_iRetorno_Bematech_Fi2();
      end;
    end;
  end
 else
  begin
   application.MessageBox('Problemas na Recepção de dados pelo ECF.'+#13+
                          'Possíveis Erros:'#13+
                          ' - "Timeout" na recepção de dados pela impressora;'+#13+
                          ' - Seqüência de dados enviados estão incorretos.'+#13#13+
                          'Verifique o ECF e tente novamente', 'Atenção', mb_ok + mb_iconerror);

   application.MessageBox('Não foi possível cancelar Cupom Fiscal.'#13#10+
                          'Possíveis Erros:'+#13+
                          ' - Impressora desligada/desconectada'+#13#13+
                          'Verifique o ECF e tente novamente',
                          'Atenção',mb_iconexclamation + mb_ok);
  end;

{if noError then
 logtofile('Cancelamento de Último Cupom');}
end;

{-------- Analisa o Retorno da Impressora --------> MP20Fi2 MP40Fi2 <------}
//retorna '-2' se nao retornar nenhum estado para ST1 ou ST2;
//retorna '-1' se houver algum erro de comunicacao ou execucao da funcao Bematech_FI_RetornoImpressora
//parametro de ENTRADA: numestado -> numero do estado que se deseja obter informacao
//                      digitar -1 se quiser obter status da impressora (todas informacoes)
//parametro de SAIDA: se estado ativo retorna 1 , se inativo retorna 0
Function Retorno_Impressora_Bematech_Fi2(numestado: integer ; Mensagem: String = '') : integer;
Var
 est1, est2, Resposta: Integer;
 estado01,estado02,estado03,estado04,estado05,estado06,estado07,
 estado08,estado09,estado10,estado11,estado12,estado13,estado14,
 estado15,estado16 : integer;
 msg : TStringList;
Begin
 estado01 := 0; estado02 := 0; estado03 := 0; estado04 := 0; estado05 := 0; estado06 := 0;
 estado07 := 0; estado08 := 0; estado09 := 0; estado10 := 0; estado11 := 0; estado12 := 0;
 estado13 := 0; estado14 := 0; estado15 := 0; estado16 := 0;

 iACK := 0; iST1 := 0; iST2 := 0;

 Result := -1;               // houve algum erro de comunicacao ou execucao da funcao
 Resposta := Bematech_FI_RetornoImpressora(iACK,iST1,iST2);
 if Resposta = 1 then                    //se funcão foi enviada com sucesso...
  begin
   if iACK = 6 then                      //se recebimento foi correto...
    begin
     if (iST1 = 0) and (iST2 = 0) then
      Result := -2                        // nenhum estado foi retornado
     else
      begin
        est1 := iST1;   // keep initial...
        est2 := iST2;   // ...values for testing later
        // Verifica ST1
        IF iST1 >= 128 Then begin iST1 := iST1 - 128; estado01 := 1; end;
        IF iST1 >= 64  Then begin iST1 := iST1 - 64;  estado02 := 1; end;
        IF iST1 >= 32  Then begin iST1 := iST1 - 32;  estado03 := 1; end;
        IF iST1 >= 16  Then begin iST1 := iST1 - 16;  estado04 := 1; end;
        IF iST1 >= 8   Then begin iST1 := iST1 - 8;   estado05 := 1; end;
        IF iST1 >= 4   Then begin iST1 := iST1 - 4;   estado06 := 1; end;
        IF iST1 >= 2   Then begin iST1 := iST1 - 2;   estado07 := 1; end;
        IF iST1 >= 1   Then begin iST1 := iST1 - 1;   estado08 := 1; end;
        // Verifica ST2
        IF iST2 >= 128 Then begin iST2 := iST2 - 128; estado09 := 1; end;
        IF iST2 >= 64  Then begin iST2 := iST2 - 64;  estado10 := 1; end;
        IF iST2 >= 32  Then begin iST2 := iST2 - 32;  estado11 := 1; end;
        IF iST2 >= 16  Then begin iST2 := iST2 - 16;  estado12 := 1; end;
        IF iST2 >= 8   Then begin iST2 := iST2 - 8;   estado13 := 1; end;
        IF iST2 >= 4   Then begin iST2 := iST2 - 4;   estado14 := 1; end;
        IF iST2 >= 2   Then begin iST2 := iST2 - 2;   estado15 := 1; end;
        IF iST2 >= 1   Then begin iST2 := iST2 - 1;   estado16 := 1; end;

       CASE numestado of
        -1: // STATUS DA IMPRESSORA
           begin
            msg := TStringList.Create;
            msg.add(Mensagem); //mensagem passada como parametro de entrada da funcao Retorno_Impressora
            msg.add('Resposta:');
            msg.Add('-> ACK = 6  ..........  OK');
            if est1 = 0 then
             msg.add('-> iST1 = 0  ..........  OK')else msg.add('-> iST1 = '+inttostr(est1));
            if est2 = 0 then
             msg.add('-> iST2 = 0  ..........  OK')else msg.add('-> iST2 = '+inttostr(est2));

            msg.Add('');
            msg.add('Mensagens do ECF:');

            if estado01 = 1 then msg.add('- Fim de papel');
            if estado02 = 1 then msg.add('- Pouco Papel');
            if estado03 = 1 then msg.add('- Erro no Relógio');
            if estado04 = 1 then msg.add('- Impressora em Erro');
            if estado05 = 1 then msg.add('- CMD nao iniciado com ESC');
            if estado06 = 1 then msg.add('- Comando inexistente');
            if estado07 = 1 then msg.add('- Cupom Aberto');
            if estado08 = 1 then msg.add('- Número de parâmetros inválido');
            if estado09 = 1 then msg.add('- Tipo de Parâmetro inválido');
            if estado10 = 1 then msg.add('- Memória Fiscal Lotada');
            if estado11 = 1 then msg.add('- CMOS não Volátil');
            if estado12 = 1 then msg.add('- Alíquota não programada');
            if estado13 = 1 then msg.add('- Alíquotas lotadas');
            if estado14 = 1 then msg.add('- Cancelamento não permitido');
            if estado15 = 1 then msg.add('- CGC/IE não programados');
            if estado16 = 1 then msg.add('- Comando não executado');

            application.MessageBox(pchar(msg.Text), 'Resposta da Impressora',mb_iconinformation+mb_ok);
            msg.Free;
           end;

        1 : Result := estado01; // FIM DE PAPEL
        2 : Result := estado02; // POUCO PAPEL
        3 : Result := estado03; // ERRO NO RELOGIO
        4 : Result := estado04; // IMPRESSORA EM ERRO
        5 : Result := estado05; // CMD NAO INICIADO COM ESC
        6 : Result := estado06; // COMANDO INEXISTENTE
        7 : begin Result := estado07; showmessage(inttostr(estado07)); end; // CUPOM ABERTO
        8 : Result := estado08; // NUMERO DE PARAMETROS INVALIDO
        9 : Result := estado09; // TIPO DE PARAMETRO INVALIDO
        10: Result := estado10; // MEMORIA FISCAL LOTADA
        11: Result := estado11; // CMOS NAO VOLATIL
        12: Result := estado12; // ALIQUOTA NAO PROGRAMADA
        13: Result := estado13; // ALIQUOTAS LOTADAS
        14: Result := estado14; // CANCELAMENTO NAO PERMITIDO
        15: Result := estado15; // CGC/IE NAO PROGRAMADOS
        16: Result := estado16; // COMANDO NAO EXECUTADO
       end;
      end;
    end
   else
    if iACK = 21 then //se recebimento foi incorreto...
     begin
      application.MessageBox('Problemas na Recepção de dados pelo ECF.'+#13+
                             'Possíveis Erros:'#13#13+
                             ' - "Timeout" na recepção de dados pela impressora;'+#13+
                             ' - Seqüência de dados enviados estão incorretos.'+#13#13+
                             'Verifique o ECF e tente novamente', 'Atenção', mb_ok + mb_iconerror);
     end;
  end
 else if Resposta = 0 then
  application.MessageBox('Erro de Comunicação com o ECF. Verifique!'+#13+
                         'Verifique o ECF e tente novamente', 'Atenção', mb_ok + mb_iconerror)
 else if Resposta = -1 then
  application.MessageBox('Erro de Execução da Função. Verifique!'+#13+
                         'Verifique o ECF e tente novamente', 'Atenção', mb_ok + mb_iconerror);
end;

{----------------- Analisa a Variável iRetorno ----------------}
Procedure Analisa_iRetorno_Bematech_Fi2();
Begin
 If iRetorno = 0 Then
  application.MessageBox(pchar('Erro de Comunicação. Verifique!'),'Atenção',mb_ok+mb_iconerror);
 If iRetorno = -1 Then
  application.MessageBox(pchar('Erro de Execução na Função. Verifique!'),'Atenção',mb_ok+mb_iconerror);
 If iRetorno = -2 Then
  application.MessageBox(pchar('Parâmetro de Comando Inválido. Verifique!'),'Atenção',mb_ok+mb_iconerror);
 If iRetorno = -3 Then
  application.MessageBox(pchar('Alíquota não programada. Verifique!'),'Atenção',mb_ok+mb_iconerror);
 If iRetorno = -4 Then
  application.MessageBox(pchar('Arquivo BEMAFI32.INI não encontrado. Verifique!'),'Atenção',mb_ok+mb_iconerror);
 If iRetorno = -5 Then
  application.MessageBox(pchar('Erro ao abrir a porta de comunicação. Verifique!'),'Atenção',mb_ok+mb_iconerror);
end;

procedure Leitura_X_Bematech_Fi2;
var
 noError: boolean;
begin
 screen.cursor:= crHourGlass;
 {noError := False;}
 iRetorno := Bematech_FI_LeituraX();
 if iRetorno = 1 then
  begin
   if Retorno_Impressora_Bematech_Fi2(16) = 1 then  //se COMANDO NAO EXECUTADO...
    Retorno_Impressora_Bematech_Fi2(-1,'Não foi possível realizar Leitura X.'#13#10+
                                       'Verifique mensagens do ECF:'#13#10)
   else
    Retorno_Impressora_Bematech_Fi2(-1);
  end
 else
  Analisa_iRetorno_Bematech_Fi2();

 screen.cursor:= crDefault;
 {if noError then
  logtofile('Leitura X efetuada');}
end;

procedure Reducao_Z_Bematech_Fi2;
var
 noError: boolean;
begin
 screen.cursor:= crHourGlass;
 {noError:= False;}

  //-------> MP20Fi2 MP40Fi2 <--------
 If application.messagebox('Executar Redução Z ?','Atenção',Mb_YesNo+mb_defbutton2+mb_iconquestion) = idyes then
  begin
   iRetorno := Bematech_FI_ReducaoZ('', '');
   if iRetorno = 1 then
    begin
     if Retorno_Impressora_Bematech_Fi2(16) = 1 then
      Retorno_Impressora_Bematech_Fi2(-1,'ERRO: Não foi possível executar Redução Z.'#13#10+
                                         'Verifique mensagens do ECF:'#13#10)
     else
      Retorno_Impressora_Bematech_Fi2(-1);
    end
   else
    Analisa_iRetorno_Bematech_Fi2();
  end;
 screen.cursor:= crDefault;
 {if noError then
  logtofile('Redução Z efetuada');}
end;

procedure Estado_ECF_Bematech_Fi2;
var
 iAck, iSt1, iSt2: Integer;
 Msg:TStringList;
begin
 {-------> MP20Fi2 MP40Fi2 <--------}
 if Bematech_FI_VerificaImpressoraLigada() = 1 then //verifica se impressora está ligada e conectada
  begin
   Msg := TStringList.Create;
   iRetorno := Bematech_FI_VerificaEstadoImpressora( iAck, iSt1, iSt2 );
   if iRetorno = 1 then
    begin
     msg.add('Resposta do ECF:');
     msg.add('-> ACK = '+inttostr(iACK));
     msg.add('-> ST1 = '+inttostr(iST1));
     msg.add('-> ST2 = '+inttostr(iST2));

     If iACK = 6 then
      begin
       // Verifica ST1
       msg.Strings[1] := msg.strings[1] + '  .......... OK';
       if iST1 = 0   then begin msg.Strings[2]:= msg.strings[2] + '  .......... OK'; end;
       if iST2 = 0   then begin msg.Strings[3]:= msg.strings[3] + '  .......... OK'; end;

       msg.add('');
       if (iST1 <> 0) or (iST2 <> 0) then
        msg.add('Mensagens da impressora:');

       //Verifica iST1
       IF iST1 >= 128 Then begin iST1 := iST1 - 128; msg.add('- Fim de papel')end;
       IF iST1 >= 64  Then begin iST1 := iST1 - 64;  msg.add('- Pouco Papel')end;
       IF iST1 >= 32  Then begin iST1 := iST1 - 32;  msg.add('- Erro no Relogio')end;
       IF iST1 >= 16  Then begin iST1 := iST1 - 16;  msg.add('- Impressora em Erro')end;
       IF iST1 >= 8   Then begin iST1 := iST1 - 8;   msg.add('- CMD nao iniciado com ESC')end;
       IF iST1 >= 4   Then begin iST1 := iST1 - 4;   msg.add('- Comando inexistente')end;
       IF iST1 >= 2   Then begin iST1 := iST1 - 2;   msg.add('- Cupom Aberto')end;
       IF iST1 >= 1   Then begin iST1 := iST1 - 1;   msg.add('- Número de parametros inválido')end;
       // Verifica ST2
       IF iST2 >= 128 Then begin iST2 := iST2 - 128; msg.add('- Tipo de Parametro inválido')end;
       IF iST2 >= 64  Then begin iST2 := iST2 - 64;  msg.add('- Memória Fiscal Lotada')end;
       IF iST2 >= 32  Then begin iST2 := iST2 - 32;  msg.add('- CMOS não Volátil')end;
       IF iST2 >= 16  Then begin iST2 := iST2 - 16;  msg.add('- Alíquota não programada')end;
       IF iST2 >= 8   Then begin iST2 := iST2 - 8;   msg.add('- Aliquotas lotadas')end;
       IF iST2 >= 4   Then begin iST2 := iST2 - 4;   msg.add('- Cancelamento não permitido')end;
       iF iST2 >= 2   Then begin iST2 := iST2 - 2;   msg.add('- CGC/IE não programados') end;
       IF iST2 >= 1   Then begin iST2 := iST2 - 1;   msg.add('- Comando não executado') end;
      end
     else
      if iACK = 21 then
       begin
        msg.add('Houve um problema na recepção de dados pela impressora!');
        msg.Add('Abaixo estão listados os possíveis erros:'+#13#10);
        msg.add(' - "Timeout" na recepção de dados pela impressora;');
        msg.add(' - Seqüência de dados enviados estão incorretos.');
       end
      else
       if iACK = 0 then
        application.messagebox('ECF parece estar desligado. Verifique!','Atenção',mb_ok+mb_iconexclamation);

     Application.messagebox(PChar(msg.text),'Estado da Impressora',mb_OK + mb_iconinformation);
     msg.free;
    end
   else
    Analisa_iRetorno_Bematech_Fi2();
  end
 else //impressora está desligada ou desconectada.
  application.MessageBox(pchar('Não é possível obter status.'#13#10+
                               'Verifique se o ECF está ligado e conectado.'#13#10+
                               'Depois tente novamente.'),
                               'ERRO: Impressora desligada/desconectada',mb_iconexclamation+mb_ok);

end;

procedure Horario_Verao_Bematech_Fi2;
begin
 iRetorno := Bematech_FI_ProgramaHorarioVerao;
 if iRetorno = 1 then
  begin
   if Retorno_Impressora_Bematech_Fi2(16) = 1 then
    Retorno_Impressora_Bematech_Fi2(-1,'ERRO: Não é possível programar/desprogramar horário de verão.'#13#10#13#10+
                                       'Importante:'#13#10+
                                       'Para Programar o horário de verão é necessário:'#13#10+
                                       '- Ter realizado uma redução Z, sem movimento no dia;'#13#10+
                                       'Para Desprogramar o horário de verão:'#13#10+
                                       '- Somente 1 hora após a redução Z, sem movimento no dia.'#13#10)
   else
    application.MessageBox('Horário de verão programado/desprogramado com sucesso!','Confirmação',mb_ok+mb_iconinformation);
  end
 else
  Analisa_iRetorno_Bematech_Fi2();
end;


end.


