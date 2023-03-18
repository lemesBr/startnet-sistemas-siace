unit Unit_ECF_Bematech_Fi2;

interface

uses
 Forms, Windows, IniFiles, SysUtils, Classes, IBServices, QDialogs, QControls;

{ Declaração das Funções da nova DLL BEMAFI32.DLL }
//--- Funções de Inicialização ---
function Bematech_FI_AlteraSimboloMoeda(SimboloMoeda: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_ProgramaAliquota(Aliquota: string; ICMS_ISS: integer): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_ProgramaHorarioVerao: integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms(Indice: integer; Totalizador: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_ProgramaArredondamento: integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_ProgramaTruncamento: integer; stdcall; external 'BEMAFI32.DLL' Name 'Bematech_FI_ProgramaTruncamento';
function Bematech_FI_NomeiaDepartamento(Indice: integer; Departamento: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_LinhasEntreCupons(Linhas: integer): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_EspacoEntreLinhas(Dots: integer): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_ForcaImpactoAgulhas(ForcaImpacto: integer): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_ResetaImpressora: integer; stdcall; external 'BEMAFI32.DLL';

//--- Funções do Cupom Fiscal ---
function Bematech_FI_AbreCupom(CGC_CPF: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VendeItem(Codigo: string; Descricao: string;
 Aliquota: string; TipoQuantidade: string; Quantidade: string;
 CasasDecimais: integer; ValorUnitario: string; TipoDesconto: string;
 Desconto: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VendeItemDepartamento(Codigo: string;
 Descricao: string; Aliquota: string; ValorUnitario: string;
 Quantidade: string; Acrescimo: string; Desconto: string;
 IndiceDepartamento: string; UnidadeMedida: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemAnterior: integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemGenerico(NumeroItem: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupom(AcrescimoDesconto: string;
 TipoAcrescimoDesconto: string; ValorAcrescimoDesconto: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamento(FormaPagamento: string;
 ValorFormaPagamento: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoDescricaoForma(FormaPagamento: string;
 ValorFormaPagamento: string; DescricaoFormaPagto: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_TerminaFechamentoCupom(Mensagem: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_FechaCupom(FormaPagamento: string; AcrescimoDesconto: string;
 TipoAcrescimoDesconto: string; ValorAcrescimoDesconto: string;
 ValorPago: string; Mensagem: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_FechaCupomResumido(FormaPagamento: string;
 Mensagem: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupom: integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_AumentaDescricaoItem(Descricao: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_UsaUnidadeMedida(UnidadeMedida: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_EstornoFormasPagamento(FormaOrigem: string;
 FormaDestino: string; Valor: string): integer; stdcall; external 'BEMAFI32.DLL';

//--- Funções dos Relatórios Fiscais ---
function Bematech_FI_ReducaoZ(Data: string; Hora: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_LeituraX: integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_LeituraXSerial: integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalData(DataInicial: string;
 DataFinal: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducao(ReducaoInicial: string;
 ReducaoFinal: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialData(DataInicial: string;
 DataFinal: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducao(ReducaoInicial: string;
 ReducaoFinal: string): integer; stdcall; external 'BEMAFI32.DLL';

//--- Funções das Operações Não Fiscais ---
function Bematech_FI_RelatorioGerencial(Texto: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_RecebimentoNaoFiscal(IndiceTotalizador: string;
 Valor: string; FormaPagamento: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_AbreComprovanteNaoFiscalVinculado(FormaPagamento: string;
 Valor: string; NumeroCupom: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_UsaComprovanteNaoFiscalVinculado(Texto: string): integer; stdcall; external 'BEMAFI32.DLL'
function Bematech_FI_FechaComprovanteNaoFiscalVinculado: integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_Sangria(Valor: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_Suprimento(Valor: string; FormaPagamento: string): integer; stdcall; external 'BEMAFI32.DLL';

//--- Funções de Autenticação e Gaveta de Dinheiro ---
function Bematech_FI_Autenticacao: integer; stdcall; external 'BEMAFI32.DLL' Name 'Bematech_FI_Autenticacao';
function Bematech_FI_ProgramaCaracterAutenticacao(Parametros: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_AcionaGaveta: integer; stdcall; external 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta';
function Bematech_FI_VerificaEstadoGaveta(var EstadoGaveta: integer): integer; stdcall; external 'BEMAFI32.DLL';

//--- Funções de Informações da Impressora ---
function Bematech_FI_VerificaEstadoImpressora(var ACK: integer;
 var ST1: integer; var ST2: integer): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerie(NumeroSerie: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_SubTotal(SubTotal: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_NumeroCupom(NumeroCupom: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmware(VersaoFirmware: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_CGC_IE(CGC: string; IE: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotal(GrandeTotal: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_Cancelamentos(ValorCancelamentos: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_Descontos(ValorDescontos: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_NumeroOperacoesNaoFiscais(NumeroOperacoes: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_NumeroCuponsCancelados(NumeroCancelamentos: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_NumeroIntervencoes(NumeroIntervencoes: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_NumeroReducoes(NumeroReducoes: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_NumeroSubstituicoesProprietario(NumeroSubstituicoes: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_UltimoItemVendido(NumeroItem: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_ClicheProprietario(Cliche: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_NumeroCaixa(NumeroCaixa: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_NumeroLoja(NumeroLoja: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_SimboloMoeda(SimboloMoeda: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_MinutosLigada(Minutos: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_MinutosImprimindo(Minutos: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VerificaModoOperacao(Modo: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VerificaEpromConectada(Flag: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_FlagsFiscais(var Flag: integer): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_ValorPagoUltimoCupom(ValorCupom: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_DataHoraImpressora(Data: string; Hora: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_ContadoresTotalizadoresNaoFiscais(Contadores: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresNaoFiscais(Totalizadores: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_DataHoraReducao(Data: string; Hora: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_DataMovimento(Data: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VerificaTruncamento(Flag: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_Acrescimos(ValorAcrescimos: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_ContadorBilhetePassagem(ContadorPassagem: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VerificaAliquotasIss(Flag: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamento(Formas: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VerificaRecebimentoNaoFiscal(Recebimentos: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VerificaDepartamentos(Departamentos: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VerificaTipoImpressora(var TipoImpressora: integer): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresParciais(Totalizadores: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_RetornoAliquotas(Aliquotas: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducao(DadosReducao: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_MonitoramentoPapel(var Linhas: integer): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VerificaIndiceAliquotasIss(Flag: string): integer; stdcall; external 'BEMAFI32.DLL';

//--- Funções para a Impressora Restaurante ---
function Bematech_FIR_AbreCupomRestaurante(Mesa: string; CGC_CPF: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_RegistraVenda(Mesa: string; Codigo: string;
 Descricao: string; Aliquota: string; Quantidade: string; ValorUnitario: string;
 FlagAcrescimoDesconto: string; ValorAcrescimoDesconto: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_CancelaVenda(Mesa: string; Codigo: string;
 Descricao: string; Aliquota: string; Quantidade: string; ValorUnitario: string;
 FlagAcrescimoDesconto: string; ValorAcrescimoDesconto: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_ConferenciaMesa(Mesa: string; FlagAcrescimoDesconto: string;
 TipoAcrescimoDesconto: string; ValorAcrescimoDesconto: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_AbreConferenciaMesa(Mesa: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_FechaConferenciaMesa(FlagAcrescimoDesconto: string;
 TipoAcrescimoDesconto: string; ValorAcrescimoDesconto: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_TransferenciaMesa(MesaOrigem: string; MesaDestino: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_ContaDividida(NumeroCupons: string;
 ValorPago: string; CGC_CPF: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_FechaCupomContaDividida(NumeroCupons: string;
 FlagAcrescimoDesconto: string; TipoAcrescimoDesconto: string;
 ValorAcrescimoDesconto: string; FormasPagamento: string;
 ValorFormasPagamento: string; ValorPagoCliente: string; CGC_CPF: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_TransferenciaItem(MesaOrigem: string; Codigo: string;
 Descricao: string; Aliquota: string; Quantidade: string; ValorUnitario: string;
 FlagAcrescimoDesconto: string; ValorAcrescimoDesconto: string;
 MesaDestino: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_RelatorioMesasAbertas(TipoRelatorio: integer): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_ImprimeCardapio: integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_RelatorioMesasAbertasSerial: integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_CardapioPelaSerial: integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_RegistroVendaSerial(Mesa: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_VerificaMemoriaLivre(Bytes: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_FechaCupomRestaurante(FormaPagamento: string;
 FlagAcrescimoDesconto: string; TipoAcrescimoDesconto: string;
 ValorAcrescimoDesconto: string; ValorFormaPagto: string; Mensagem: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FIR_FechaCupomResumidoRestaurante(FormaPagamento: string; Mensagem: string): integer; stdcall; external 'BEMAFI32.DLL';

//--- Função para a Impressora Bilhete de Passagem ---
function Bematech_FI_AbreBilhetePassagem(ImprimeValorFinal: string; ImprimeEnfatizado: string;
 Embarque: string; Destino: string; Linha: string; Prefixo: string; Agente: string;
 Agencia: string; Data: string; Hora: string; Poltrona: string; Plataforma: string): integer; stdcall; external 'BEMAFI32.DLL';

//--- Funções de Impressão de Cheques ---
function Bematech_FI_ProgramaMoedaSingular(MoedaSingular: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_ProgramaMoedaPlural(MoedaPlural: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_CancelaImpressaoCheque: integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VerificaStatusCheque(var StatusCheque: integer): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_ImprimeCheque(Banco: string; Valor: string;
 Favorecido: string; Cidade: string; Data: string; Mensagem: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_IncluiCidadeFavorecido(Cidade: string; Favorecido: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_ImprimeCopiaCheque: integer; stdcall; external 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeCopiaCheque';

//--- Funções para o TEF ---
function Bematech_FITEF_Status(Identificacao: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FITEF_VendaCartao(Identificacao: string; ValorCompra: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FITEF_ConfirmaVenda(Identificacao: string;
 ValorCompra: string; Header: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FITEF_NaoConfirmaVendaImpressao(Identificacao: string;
 ValorCompra: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FITEF_CancelaVendaCartao(Identificacao: string;
 ValorCompra: string; Nsu: string; NumeroCupom: string; Hora: string;
 Data: string; Rede: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FITEF_ImprimeTEF(Identificacao: string;
 FormaPagamento: string; ValorCompra: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FITEF_ImprimeRelatorio: integer; stdcall; external 'BEMAFI32.DLL' Name 'Bematech_FITEF_ImprimeRelatorio';
function Bematech_FITEF_ADM(Identificacao: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FITEF_VendaCompleta(Identificacao: string;
 ValorCompra: string; FormaPagamento: string; Texto: string): integer; stdcall; external 'BEMAFI32.DLL';

//--- Outras Funções ---
function Bematech_FI_AbrePortaSerial: integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressora(var ACK: integer; var ST1: integer; var ST2: integer): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_FechaPortaSerial: integer; stdcall; external 'BEMAFI32.DLL' Name 'Bematech_FI_FechaPortaSerial';
function Bematech_FI_MapaResumo: integer; stdcall; external 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumo';
function Bematech_FI_AberturaDoDia(ValorCompra: string; FormaPagamento: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_FechamentoDoDia: integer; stdcall; external 'BEMAFI32.DLL' Name 'Bematech_FI_FechamentoDoDia';
function Bematech_FI_ImprimeConfiguracoesImpressora: integer; stdcall; external 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeConfiguracoesImpressora';
function Bematech_FI_ImprimeDepartamentos: integer; stdcall; external 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeDepartamentos';
function Bematech_FI_RelatorioTipo60Analitico: integer; stdcall; external 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Analitico';
function Bematech_FI_RelatorioTipo60Mestre: integer; stdcall; external 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Mestre';
function Bematech_FI_VerificaImpressoraLigada: integer; stdcall; external 'BEMAFI32.DLL' Name 'Bematech_FI_VerificaImpressoraLigada';

 procedure Error_Dump_Bematech_Fi2;
 function Carrega_DLL_Bematech_Fi2: boolean;
 function Descarrega_DLL_Bematech_Fi2: boolean;

 function Horario_Verao_Bematech_Fi2: boolean;
 function Estado_ECF_Bematech_Fi2: boolean;
 function Sangria_Bematech_Fi2(Valor: string): boolean;
 function Reforco_Bematech_Fi2(Valor: string): boolean;
 function R60M_Bematech_Fi2: boolean;
 function R60A_Bematech_Fi2: boolean;
 function Abre_Dia_Bematech_Fi2: boolean;
 function Cancela_Cupom_Bematech_Fi2: boolean;
 function Reducao_Z_Bematech_Fi2: boolean;
 function Leitura_X_Bematech_Fi2: boolean;
 function GavetaECFAberta: boolean;
 function Abre_Gaveta_Bematech_Fi2(Teste_Gaveta_Aberta: boolean): boolean;
 function Abre_Cupom_Bematech_Fi2(CGC_CPF: string): boolean;
 function Vende_Item_Bematech_Fi2(Codigo, Descricao, Aliquota, Tipo_Qnt, Qnt: string;
  Casas_Decimais: integer;
  Valor, Tipo_Desconto, Valor_Desconto: string): boolean;
 function Fecha_Cupom_Bematech_Fi2(Forma_Pgt, Acre_Desc, Tipo_Acrec_Desc,
  Valor_Acrec_Desc,
  Valor_Pago, Nome, Endereco, Referencia,
  Bairro, Vendedor,
  Msg_P: string): boolean;
 function Verifica_Estado_ECF_Bematech_Fi2(numestado: integer): integer;
 function Retorno_Impressora_Bematech_Fi2(numestado: integer;
  Mensagem: string = ''): integer;
 procedure Analisa_iRetorno_Bematech_Fi2();

 //--- Var declarations ---
var
 iRetorno: integer;                                 // Variável com o retorno da função
 iControle: integer;
 iACK, iST1, iST2: integer;                         // Variáveis com o retorno do Status da Impressora}

 df_Tipo_Qnt_Fi2: string = 'f';
 df_Decimal: integer = 2;
 df_Tipo_Acre_Desc: string = '$';
 df_Acre_Desc: string = 'D';

 Log_Str_Bematech_Fi2: TStrings;

implementation

uses UnitFuncoes, Unit_ECF_Global;

function Carrega_DLL_Bematech_Fi2: boolean;
begin
 Result := True;
 Log_Str_Bematech_Fi2 := TStringList.Create; // Cria StringList de Log de Erros
end;

function Descarrega_DLL_Bematech_Fi2: boolean;
begin
 Result := True;
 Log_Str_Bematech_Fi2.Free; //Destroi StringList
end;

//Faz o log de todos os valores do cupom fiscal em caso de erro na impressão
procedure Error_Dump_Bematech_Fi2;
var
 x: Integer;
begin
 if Log_Str_Bematech_Fi2.Count > 0 then
  begin
   LogToFile(Format('ERRO NA IMPRESSAO DE CUPOM FISCAL - %d Linhas de Log de Erro', [Log_Str_Bematech_Fi2.Count]), True);
   for x := 0 to Log_Str_Bematech_Fi2.Count - 1 do
    LogToFile(Log_Str_Bematech_Fi2[x], True);
  end;            
end;

//--- Verifica estado da Impressora ---
function Verifica_Estado_ECF_Bematech_Fi2(numestado: integer): integer;
var
 estado01, estado02, estado03, estado04, estado05, estado06, estado07,
 estado08, estado09, estado10, estado11, estado12, estado13, estado14,
 estado15, estado16: integer;
begin
 estado01 := 0;
 estado02 := 0; 
 estado03 := 0; 
 estado04 := 0; 
 estado05 := 0; 
 estado06 := 0;
 estado07 := 0; 
 estado08 := 0; 
 estado09 := 0; 
 estado10 := 0; 
 estado11 := 0; 
 estado12 := 0;
 estado13 := 0; 
 estado14 := 0; 
 estado15 := 0; 
 estado16 := 0;

 iACK := 0; 
 iST1 := 0; 
 iST2 := 0;

 Result := -1;
 iRetorno := Bematech_FI_VerificaEstadoImpressora(iAck, iSt1, iSt2);
 if iRetorno = 1 then
  begin
   if iACK = 6 then                      //se recebimento foi correto...
    begin
     // Verifica ST1
     if iST1 >= 128 then 
      begin 
       iST1 := iST1 - 128; 
       estado01 := 1; 
      end;
     if iST1 >= 64 then 
      begin 
       iST1 := iST1 - 64;  
       estado02 := 1; 
      end;
     if iST1 >= 32 then 
      begin 
       iST1 := iST1 - 32;  
       estado03 := 1; 
      end;
     if iST1 >= 16 then 
      begin 
       iST1 := iST1 - 16;  
       estado04 := 1; 
      end;
     if iST1 >= 8 then 
      begin 
       iST1 := iST1 - 8;   
       estado05 := 1; 
      end;
     if iST1 >= 4 then 
      begin 
       iST1 := iST1 - 4;   
       estado06 := 1; 
      end;
     if iST1 >= 2 then 
      begin 
       iST1 := iST1 - 2;   
       estado07 := 1; 
      end;
     if iST1 >= 1 then 
      begin 
       iST1 := iST1 - 1;   
       estado08 := 1; 
      end;
     // Verifica ST2
     if iST2 >= 128 then 
      begin 
       iST2 := iST2 - 128; 
       estado09 := 1; 
      end;
     if iST2 >= 64 then 
      begin 
       iST2 := iST2 - 64;  
       estado10 := 1; 
      end;
     if iST2 >= 32 then 
      begin 
       iST2 := iST2 - 32;  
       estado11 := 1; 
      end;
     if iST2 >= 16 then 
      begin 
       iST2 := iST2 - 16;  
       estado12 := 1; 
      end;
     if iST2 >= 8 then 
      begin 
       iST2 := iST2 - 8;   
       estado13 := 1; 
      end;
     if iST2 >= 4 then 
      begin 
       iST2 := iST2 - 4;   
       estado14 := 1; 
      end;
     if iST2 >= 2 then 
      begin 
       iST2 := iST2 - 2;   
       estado15 := 1; 
      end;
     if iST2 >= 1 then 
      begin 
       iST2 := iST2 - 1;   
       estado16 := 1; 
      end;

     case numestado of
       1: Result := estado01; //FIM DE PAPEL
       2: Result := estado02; //POUCO PAPEL
       3: Result := estado03; //ERRO NO RELOGIO
       4: Result := estado04; //IMPRESSORA EM ERRO
       5: Result := estado05; //CMD NAO INICIADO COM ESC
       6: Result := estado06; //COMANDO INEXISTENTE
       7: Result := estado07; //CUPOM ABERTO
       8: Result := estado08; //NUMERO DE PARAMETROS INVALIDO
       9: Result := estado09; //TIPO DE PARAMETRO INVALIDO
       10: Result := estado10; //MEMORIA FISCAL LOTADA
       11: Result := estado11; //CMOS NAO VOLATIL
       12: Result := estado12; //ALIQUOTA NAO PROGRAMADA
       13: Result := estado13; //ALIQUOTAS LOTADAS
       14: Result := estado14; //CANCELAMENTO NAO PERMITIDO
       15: Result := estado15; //CGC/IE NAO PROGRAMADOS
       16: Result := estado16; //COMANDO NAO EXECUTADO
      end;
    end
   else if iACK = 21 then //se recebimento foi incorreto...
    begin
     LogToFile('Problemas na Recepção de dados pelo ECF', True);
     application.MessageBox('Problemas na Recepção de dados pelo ECF.' + #13 +
       'Possíveis Erros:'#13#13 +
       ' - "Timeout" na recepção de dados pela impressora;' + #13 +
       ' - Seqüência de dados enviados estão incorretos.' +
       #13#13 +
       'Verifique o ECF e tente novamente', 'Atenção',
       mb_ok + mb_iconerror);
    end;
  end
 else
   Analisa_iRetorno_Bematech_Fi2();
end;

//--- Testa se Gaveta Acoplada ao ECF Aberta---
function GavetaECFAberta: boolean;
var
 EstadoGaveta: integer;
begin
 EstadoGaveta := 1;
 Result := True;
 iRetorno := Bematech_FI_VerificaEstadoGaveta(EstadoGaveta);
 if iRetorno = 1 then
  begin
   if EstadoGaveta = 0 then // Se Gaveta Fechada...
     Result := False;
  end
 else
   Analisa_iRetorno_Bematech_Fi2();
end;

//--- Abre Gaveta Acoplada ao ECF ---
function Abre_Gaveta_Bematech_Fi2(Teste_Gaveta_Aberta: boolean): boolean;
begin
 Result := False;

 if not GavetaECFAberta then
  begin
   iRetorno := Bematech_FI_AcionaGaveta(); //Abre gaveta!
   if iretorno = 1 then
    begin
     Result := True;
    end
   else
     Analisa_iRetorno_Bematech_Fi2();
  end;

 if Teste_Gaveta_Aberta then
   while GavetaECFAberta do
     application.MessageBox('Feche a Gaveta e clique OK para continuar...',
       'Gaveta Aberta', mb_ok + mb_iconexclamation);
end;

//--- Cancela Cupom Fiscal ---
function Cancela_Cupom_Bematech_Fi2: boolean;
var
 retorno: integer;
begin
 Result := False;
 if Bematech_FI_VerificaImpressoraLigada() = 1 then
  begin
   if Verifica_Estado_ECF_Bematech_Fi2(7) = 0 then //se CUPOM FECHADO
    begin
     iRetorno := Bematech_FI_CancelaCupom();
     if iRetorno = 1 then
      begin
       retorno := Retorno_Impressora_Bematech_Fi2(16);
       case retorno of
         1:
          begin
           LogToFile('Cancela_Cupom_Bematech_Fi2: ERRO: Não foi possível realizar cancelamento de Cupom Fiscal.', True);
           Retorno_Impressora_Bematech_Fi2(-1,'ERRO: Não foi possível realizar cancelamento de Cupom Fiscal.'#13#10 +
             'Verifique mensagens do ECF:'#13#10);
          end;
         -2:
            begin
             LogToFile('Cancela_Cupom_Bematech_Fi2: Último Cupom Fiscal Cancelado com sucesso.', True);
             Application.MessageBox('Último Cupom Fiscal Cancelado com sucesso!',
               'Confirmação', mb_ok + mb_iconinformation);
             Result := True;
            end;
         -1:
          begin
           LogToFile('Cancela_Cupom_Bematech_Fi2: Não foi possível cancelar cupom fiscal.', True);
           Application.MessageBox('Não foi possível cancelar cupom fiscal',
              'ERRO', mb_iconERROR + mb_ok);
          end;
        end;
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
         case retorno of
           1: //comando nao executado -> vende item e cancela depois
              begin
               LogToFile('Cancela_Cupom_Bematech_Fi2: Comando nao executado -> Executando venda de item TESTE para posterior cancelamento', True);
               iRetorno := Bematech_FI_VendeItem(StrPas(PChar('123')),
                 StrPas(PChar('Teste')),
                 StrPas(PChar('1700')),
                 StrPas(PChar(df_Tipo_Qnt_Fi2)),
                 StrPas(PChar('100')), df_Decimal,
                 StrPas(PChar('100')),
                 StrPas(PChar(df_Tipo_Acre_Desc)),
                 StrPas('0'));
               if iRetorno = 1 then
                begin
                 if Verifica_Estado_ECF_Bematech_Fi2(16) = 0 then //se item vendido
                  begin
                   iRetorno := Bematech_FI_CancelaCupom();
                   if iRetorno = 1 then
                    begin
                     if Verifica_Estado_ECF_Bematech_Fi2(16) = 1 then
                       Retorno_Impressora_Bematech_Fi2(-1,'ERRO: Não foi possível realizar cancelamento de Cupom Fiscal.'#13#10 +
                         'Verifique mensagens do ECF:'#13#10)
                     else
                      begin
                       LogToFile('Cancela_Cupom_Bematech_Fi2: Último Cupom Fiscal Cancelado com sucesso.', True);
                       application.MessageBox('Último Cupom Fiscal Cancelado com sucesso!',
                         'Confirmação', mb_ok + mb_iconinformation);
                       Result := True;
                      end;
                    end
                   else
                     Analisa_iRetorno_Bematech_Fi2;
                  end
                 else
                  begin
                   LogToFile('Cancela_Cupom_Bematech_Fi2: Não foi possível realizar cancelamento de Cupom Fiscal.', True);
                   Retorno_Impressora_Bematech_Fi2(-1,'ERRO: Não foi possível realizar cancelamento de Cupom Fiscal.'#13#10 +
                     'Verifique mensagens do ECF:'#13#10);
                  end
                end
               else
                 Analisa_iRetorno_Bematech_Fi2;
              end;
             -2: // nenhum estado retornado
              begin
               LogToFile('Cancela_Cupom_Bematech_Fi2: Último Cupom Fiscal Cancelado com sucesso.', True);
               application.MessageBox('Último Cupom Fiscal Cancelado com sucesso!',
                 'Confirmação', mb_ok + mb_iconinformation);
               Result := True;
              end;
             -1:
              begin
               LogToFile('Cancela_Cupom_Bematech_Fi2: Não foi possível cancelar cupom fiscal', True);
               application.MessageBox('Não foi possível cancelar cupom fiscal',
                'Atenção', mb_iconERROR + mb_ok);
              end;
          end;
        end
       else
         Analisa_iRetorno_Bematech_Fi2();
      end;
    end;
  end
 else
  begin
   LogToFile('Cancela_Cupom_Bematech_Fi2: Problemas na Recepção de dados pelo ECF, Não foi possível cancelar Cupom Fiscal', True);
   application.MessageBox('Problemas na Recepção de dados pelo ECF.' + #13 +
     'Possíveis Erros:'#13 +
     ' - "Timeout" na recepção de dados pela impressora;' + #13 +
     ' - Seqüência de dados enviados estão incorretos.' + #13#13 +
     'Verifique o ECF e tente novamente', 'Atenção',
     mb_ok + mb_iconerror);

   application.MessageBox('Não foi possível cancelar Cupom Fiscal.'#13#10 +
     'Possíveis Erros:' + #13 +
     ' - Impressora desligada/desconectada' + #13#13 +
     'Verifique o ECF e tente novamente',
     'Atenção', mb_iconexclamation + mb_ok);
  end;
end;

//--- Analisa o Retorno da Impressora ---
//retorna '-2' se nao retornar nenhum estado para ST1 ou ST2;
//retorna '-1' se houver algum erro de comunicacao ou execucao da funcao Bematech_FI_RetornoImpressora
//parametro de ENTRADA: numestado -> numero do estado que se deseja obter informacao
//                      digitar -1 se quiser obter status da impressora (todas informacoes)
//parametro de SAIDA: se estado ativo retorna 1 , se inativo retorna 0
function Retorno_Impressora_Bematech_Fi2(numestado: integer;
 Mensagem: string = ''): integer;
var
 est1, est2, Resposta: integer;
 estado01, estado02, estado03, estado04, estado05, estado06, estado07,
 estado08, estado09, estado10, estado11, estado12, estado13, estado14,
 estado15, estado16: integer;
 msg: TStringList;
begin
 estado01 := 0; 
 estado02 := 0; 
 estado03 := 0; 
 estado04 := 0; 
 estado05 := 0; 
 estado06 := 0;
 estado07 := 0; 
 estado08 := 0; 
 estado09 := 0; 
 estado10 := 0; 
 estado11 := 0; 
 estado12 := 0;
 estado13 := 0; 
 estado14 := 0; 
 estado15 := 0; 
 estado16 := 0;

 iACK := 0; 
 iST1 := 0; 
 iST2 := 0;

 Result := -1;               // houve algum erro de comunicacao ou execucao da funcao
 Resposta := Bematech_FI_RetornoImpressora(iACK, iST1, iST2);
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
       if iST1 >= 128 then 
        begin 
         iST1 := iST1 - 128; 
         estado01 := 1; 
        end;
       if iST1 >= 64 then 
        begin 
         iST1 := iST1 - 64;  
         estado02 := 1; 
        end;
       if iST1 >= 32 then 
        begin 
         iST1 := iST1 - 32;  
         estado03 := 1; 
        end;
       if iST1 >= 16 then 
        begin 
         iST1 := iST1 - 16;  
         estado04 := 1; 
        end;
       if iST1 >= 8 then 
        begin 
         iST1 := iST1 - 8;   
         estado05 := 1; 
        end;
       if iST1 >= 4 then 
        begin 
         iST1 := iST1 - 4;   
         estado06 := 1; 
        end;
       if iST1 >= 2 then 
        begin 
         iST1 := iST1 - 2;   
         estado07 := 1; 
        end;
       if iST1 >= 1 then 
        begin 
         iST1 := iST1 - 1;   
         estado08 := 1; 
        end;
       // Verifica ST2
       if iST2 >= 128 then 
        begin 
         iST2 := iST2 - 128; 
         estado09 := 1; 
        end;
       if iST2 >= 64 then 
        begin 
         iST2 := iST2 - 64;  
         estado10 := 1; 
        end;
       if iST2 >= 32 then 
        begin 
         iST2 := iST2 - 32;  
         estado11 := 1; 
        end;
       if iST2 >= 16 then 
        begin 
         iST2 := iST2 - 16;  
         estado12 := 1; 
        end;
       if iST2 >= 8 then 
        begin 
         iST2 := iST2 - 8;   
         estado13 := 1; 
        end;
       if iST2 >= 4 then 
        begin 
         iST2 := iST2 - 4;   
         estado14 := 1; 
        end;
       if iST2 >= 2 then 
        begin 
         iST2 := iST2 - 2;   
         estado15 := 1; 
        end;
       if iST2 >= 1 then 
        begin 
         iST2 := iST2 - 1;   
         estado16 := 1; 
        end;

       case numestado of -1: // STATUS DA IMPRESSORA
            begin
             msg := TStringList.Create;
             msg.add(Mensagem);
             //mensagem passada como parametro de entrada da funcao Retorno_Impressora
             msg.add('Resposta:');
             msg.Add('-> ACK = 6  ..........  OK');
             if est1 = 0 then
               msg.add('-> iST1 = 0  ..........  OK')
             else 
               msg.add('-> iST1 = ' + IntToStr(est1));
             if est2 = 0 then
               msg.add('-> iST2 = 0  ..........  OK')
             else 
               msg.add('-> iST2 = ' + IntToStr(est2));

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

             application.MessageBox(PChar(msg.Text), 'Resposta da Impressora',
               mb_iconinformation + mb_ok);
             msg.Free;
            end;

         1: Result := estado01; //FIM DE PAPEL
         2: Result := estado02; //POUCO PAPEL
         3: Result := estado03; //ERRO NO RELOGIO
         4: Result := estado04; //IMPRESSORA EM ERRO
         5: Result := estado05; //CMD NAO INICIADO COM ESC
         6: Result := estado06; //COMANDO INEXISTENTE
         7: 
            begin 
             Result := estado07; 
             ShowMessage(IntToStr(estado07)); 
            end; // CUPOM ABERTO
         8: Result := estado08; //NUMERO DE PARAMETROS INVALIDO
         9: Result := estado09; //TIPO DE PARAMETRO INVALIDO
         10: Result := estado10; //MEMORIA FISCAL LOTADA
         11: Result := estado11; //CMOS NAO VOLATIL
         12: Result := estado12; //ALIQUOTA NAO PROGRAMADA
         13: Result := estado13; //ALIQUOTAS LOTADAS
         14: Result := estado14; //CANCELAMENTO NAO PERMITIDO
         15: Result := estado15; //CGC/IE NAO PROGRAMADOS
         16: Result := estado16; //COMANDO NAO EXECUTADO
        end;
      end;
    end
   else if iACK = 21 then //se recebimento foi incorreto...
    begin
     LogToFile('Retorno_Impressora_Bematech_Fi2: Problemas na Recepção de dados pelo ECF', True);
     application.MessageBox('Problemas na Recepção de dados pelo ECF.' + #13 +
       'Possíveis Erros:'#13#13 +
       ' - "Timeout" na recepção de dados pela impressora;' + #13 +
       ' - Seqüência de dados enviados estão incorretos.' +
       #13#13 +
       'Verifique o ECF e tente novamente', 'Atenção',
       mb_ok + mb_iconerror);
    end;
  end
 else if Resposta = 0 then
  begin
   LogToFile('Retorno_Impressora_Bematech_Fi2: Erro de Comunicação com o ECF.', True);
   application.MessageBox('Erro de Comunicação com o ECF. Verifique!' + #13 +
     'Verifique o ECF e tente novamente', 'Atenção',
     mb_ok + mb_iconerror)
  end
 else if Resposta = -1 then
  begin
   LogToFile('Retorno_Impressora_Bematech_Fi2: Erro de Execução da Função.', True);
   application.MessageBox('Erro de Execução da Função. Verifique!' + #13 +
     'Verifique o ECF e tente novamente', 'Atenção',
     mb_ok + mb_iconerror);
  end;
end;

//--- Analisa a Variável iRetorno ---
procedure Analisa_iRetorno_Bematech_Fi2();
begin
 if iRetorno = 0 then
  begin
   LogToFile('Analisa_iRetorno_Bematech_Fi2: Erro de Comunicação.', True);
   application.MessageBox('Erro de Comunicação. Verifique!', 'Atenção',
     mb_ok + mb_iconerror)
  end
 else if iRetorno = -1 then
  begin
   LogToFile('Analisa_iRetorno_Bematech_Fi2: Erro de Execução na Função.', True);
   application.MessageBox('Erro de Execução na Função. Verifique!',
     'Atenção', mb_ok + mb_iconerror)
  end
 else if iRetorno = -2 then
  begin
   LogToFile('Analisa_iRetorno_Bematech_Fi2: Parâmetro de Comando Inválido.', True);
   application.MessageBox('Parâmetro de Comando Inválido. Verifique!',
     'Atenção', mb_ok + mb_iconerror)
  end
 else if iRetorno = -3 then
  begin
   LogToFile('Analisa_iRetorno_Bematech_Fi2: Alíquota não programada.', True);
   application.MessageBox('Alíquota não programada. Verifique!', 'Atenção',
     mb_ok + mb_iconerror)
  end
 else if iRetorno = -4 then
  begin
   LogToFile('Analisa_iRetorno_Bematech_Fi2: Arquivo BEMAFI32.INI não encontrado.', True);
   application.MessageBox('Arquivo BEMAFI32.INI não encontrado. Verifique!',
     'Atenção', mb_ok + mb_iconerror)
  end
 else if iRetorno = -5 then
  begin
   LogToFile('Analisa_iRetorno_Bematech_Fi2: Erro ao abrir a porta de comunicação.', True);
   application.MessageBox('Erro ao abrir a porta de comunicação. Verifique!',
     'Atenção', mb_ok + mb_iconerror)
  end
 else
  begin
   LogToFile('Analisa_iRetorno_Bematech_Fi2: Erro Desconhecido.', True);
   application.MessageBox('Erro Desconhecido. Verifique!', 'Atenção', mb_ok + mb_iconerror);
  end;
end;

//--- Leitura X ---
function Leitura_X_Bematech_Fi2: boolean;
begin
 Result := False;

 iRetorno := Bematech_FI_LeituraX();
 if iRetorno = 1 then
  begin
   if Retorno_Impressora_Bematech_Fi2(16) = 1 then  //se COMANDO NAO EXECUTADO...
    begin
     LogToFile('Leitura_X_Bematech_Fi2: Não foi possível realizar Leitura X', True);
     Retorno_Impressora_Bematech_Fi2(-1,'Não foi possível realizar Leitura X.'#13#10 +
       'Verifique mensagens do ECF:'#13#10)
    end
   else
     Retorno_Impressora_Bematech_Fi2(-1);
   exit;
  end
 else
   Analisa_iRetorno_Bematech_Fi2();

 Result := True; 
end;

//--- Redução Z ---
function Reducao_Z_Bematech_Fi2: boolean;
begin
 Result := False;

 if application.messagebox('Executar Redução Z ?', 'Atenção',
   Mb_YesNo + mb_defbutton2 + mb_iconquestion) = idYes then
  begin
   iRetorno := Bematech_FI_ReducaoZ('', '');
   if iRetorno = 1 then
    begin
     if Retorno_Impressora_Bematech_Fi2(16) = 1 then
      begin
       LogToFile('Reducao_Z_Bematech_Fi2: Não foi possível executar Redução Z.', True);
       Retorno_Impressora_Bematech_Fi2(-1,'ERRO: Não foi possível executar Redução Z.'#13#10 +
         'Verifique mensagens do ECF:'#13#10)
      end
     else
       Retorno_Impressora_Bematech_Fi2(-1);
     exit;
    end
   else
     Analisa_iRetorno_Bematech_Fi2();
  end;

 Result := True;
end;

//--- Estado do ECF ---
function Estado_ECF_Bematech_Fi2: boolean;
var
 iAck, iSt1, iSt2: integer;
 Msg: TStringList;
begin
 Result := True;
 if Bematech_FI_VerificaImpressoraLigada() = 1 then
 //verifica se impressora está ligada e conectada
  begin
   Msg := TStringList.Create;
   iRetorno := Bematech_FI_VerificaEstadoImpressora(iAck, iSt1, iSt2);
   if iRetorno = 1 then
    begin
     msg.add('Resposta do ECF:');
     msg.add('-> ACK = ' + IntToStr(iACK));
     msg.add('-> ST1 = ' + IntToStr(iST1));
     msg.add('-> ST2 = ' + IntToStr(iST2));

     if iACK = 6 then
      begin
       // Verifica ST1
       msg.Strings[1] := msg.strings[1] + '  .......... OK';
       if iST1 = 0 then 
        begin 
         msg.Strings[2] := msg.strings[2] + '  .......... OK'; 
        end;
       if iST2 = 0 then 
        begin 
         msg.Strings[3] := msg.strings[3] + '  .......... OK'; 
        end;

       msg.add('');
       if (iST1 <> 0) or (iST2 <> 0) then
         msg.add('Mensagens da impressora:');

       //Verifica iST1
       if iST1 >= 128 then 
        begin 
         iST1 := iST1 - 128; 
         msg.add('- Fim de papel')
        end;
       if iST1 >= 64 then 
        begin 
         iST1 := iST1 - 64;  
         msg.add('- Pouco Papel')
        end;
       if iST1 >= 32 then 
        begin 
         iST1 := iST1 - 32;  
         msg.add('- Erro no Relogio')
        end;
       if iST1 >= 16 then 
        begin 
         iST1 := iST1 - 16;  
         msg.add('- Impressora em Erro')
        end;
       if iST1 >= 8 then 
        begin 
         iST1 := iST1 - 8;   
         msg.add('- CMD nao iniciado com ESC')
        end;
       if iST1 >= 4 then 
        begin 
         iST1 := iST1 - 4;   
         msg.add('- Comando inexistente')
        end;
       if iST1 >= 2 then 
        begin 
         iST1 := iST1 - 2;   
         msg.add('- Cupom Aberto')
        end;
       if iST1 >= 1 then 
        begin 
         iST1 := iST1 - 1;   
         msg.add('- Número de parametros inválido')
        end;
       // Verifica ST2
       if iST2 >= 128 then 
        begin 
         iST2 := iST2 - 128; 
         msg.add('- Tipo de Parametro inválido')
        end;
       if iST2 >= 64 then 
        begin 
         iST2 := iST2 - 64;  
         msg.add('- Memória Fiscal Lotada')
        end;
       if iST2 >= 32 then 
        begin 
         iST2 := iST2 - 32;  
         msg.add('- CMOS não Volátil')
        end;
       if iST2 >= 16 then 
        begin 
         iST2 := iST2 - 16;  
         msg.add('- Alíquota não programada')
        end;
       if iST2 >= 8 then 
        begin 
         iST2 := iST2 - 8;   
         msg.add('- Aliquotas lotadas')
        end;
       if iST2 >= 4 then 
        begin 
         iST2 := iST2 - 4;   
         msg.add('- Cancelamento não permitido')
        end;
       if iST2 >= 2 then 
        begin 
         iST2 := iST2 - 2;   
         msg.add('- CGC/IE não programados') 
        end;
       if iST2 >= 1 then 
        begin 
         iST2 := iST2 - 1;   
         msg.add('- Comando não executado') 
        end;
      end
     else
      begin
       if iACK = 21 then
        begin
         msg.add('Houve um problema na recepção de dados pela impressora!');
         msg.Add('Abaixo estão listados os possíveis erros:' + #13#10);
         msg.add(' - "Timeout" na recepção de dados pela impressora;');
         msg.add(' - Seqüência de dados enviados estão incorretos.');
        end
       else if iACK = 0 then
        begin
         LogToFile('Estado_ECF_Bematech_Fi2: Erro Desconhecido.', True);
         application.messagebox('ECF parece estar desligado. Verifique!',
           'Atenção', mb_ok + mb_iconexclamation);
        end;

       Result := False;
      end;

     Application.messagebox(PChar(msg.Text), 'Estado da Impressora',
       mb_OK + mb_iconinformation);
     msg.Free;
    end
   else
     Analisa_iRetorno_Bematech_Fi2();
  end
 else //impressora está desligada ou desconectada.
  begin
   LogToFile('Estado_ECF_Bematech_Fi2: Não é possível obter status, Verifique se o ECF está ligado e conectado.', True);
   application.MessageBox(PChar('Não é possível obter status.'#13#10 +
     'Verifique se o ECF está ligado e conectado.'#13#10 +
     'Depois tente novamente.'),
     'ERRO: Impressora desligada/desconectada',
     mb_iconexclamation + mb_ok);
   Result := False;
  end;
end;

//--- Sangria ---
function Sangria_Bematech_Fi2(Valor: string): boolean;
begin
 Result := False;

 iRetorno := Bematech_FI_Sangria(PChar(Valor));
 if iRetorno = 1 then
  begin
   if Retorno_Impressora_Bematech_Fi2(16) = 1 then  //se COMANDO NAO EXECUTADO...
    begin
     LogToFile('Sangria_Bematech_Fi2: Não foi possível realizar Sangria de Caixa.', True);
     Retorno_Impressora_Bematech_Fi2(-1,'Não foi possível realizar Sangria de Caixa.' +
       #13 +
       'Verifique mensagens do ECF:' + #13)
    end
   else
     Retorno_Impressora_Bematech_Fi2(-1);
   exit;
  end
 else
   Analisa_iRetorno_Bematech_Fi2();

 Result := True;
end;

//--- Reforço de Caixa ---
function Reforco_Bematech_Fi2(Valor: string): boolean;
begin
 Result := False;

 iRetorno := Bematech_FI_Suprimento(PChar(Valor), '');
 if iRetorno = 1 then
  begin
   if Retorno_Impressora_Bematech_Fi2(16) = 1 then  //se COMANDO NAO EXECUTADO...
    begin
     LogToFile('Reforco_Bematech_Fi2: Não foi possível realizar Reforço de Caixa.', True);
     Retorno_Impressora_Bematech_Fi2(-1,'Não foi possível realizar Reforço de Caixa.' +
       #13 +
       'Verifique mensagens do ECF:' + #13)
    end
   else
     Retorno_Impressora_Bematech_Fi2(-1);
   exit;
  end
 else
   Analisa_iRetorno_Bematech_Fi2();

 Result := True;
end;

//--- Gera Relatorio 60 Mestre ---
//Arquivo retorno.txt no diretorio configurado no parametro path do .ini
function R60M_Bematech_Fi2: boolean;
begin
 Result := False;

 iRetorno := Bematech_FI_RelatorioTipo60Mestre;
 if iRetorno = 1 then
  begin
   if Retorno_Impressora_Bematech_Fi2(16) = 1 then  //se COMANDO NAO EXECUTADO...
    begin
     LogToFile('R60M_Bematech_Fi2: Não foi possível requisitar Relatorio Tipo 60 Mestre do ECF', True);
     Retorno_Impressora_Bematech_Fi2(-1,'Não foi possível requisitar Relatorio Tipo 60 Mestre do ECF'
       + #13 +
       'Verifique mensagens do ECF:' + #13)
    end
   else
     Retorno_Impressora_Bematech_Fi2(-1);
   exit;
  end
 else
   Analisa_iRetorno_Bematech_Fi2();

 Result := True;
end;

//--- Gera Relatorio 60 Analitico ---
//Arquivo retorno.txt no diretorio configurado no parametro path do .ini
function R60A_Bematech_Fi2: boolean;
begin
 Result := False;

 iRetorno := Bematech_FI_RelatorioTipo60Analitico;
 if iRetorno = 1 then
  begin
   if Retorno_Impressora_Bematech_Fi2(16) = 1 then  //se COMANDO NAO EXECUTADO...
    begin
     LogToFile('R60A_Bematech_Fi2: Não foi possível requisitar Relatorio Tipo 60 Analítico do ECF', True);
     Retorno_Impressora_Bematech_Fi2(-1,'Não foi possível requisitar Relatorio Tipo 60 Analítico do ECF'
       + #13 +
       'Verifique mensagens do ECF:' + #13)
    end
   else
     Retorno_Impressora_Bematech_Fi2(-1);
   exit;
  end
 else
   Analisa_iRetorno_Bematech_Fi2();

 Result := True;
end;

//--- Abertuda de Dia ---
function Abre_Dia_Bematech_Fi2: boolean;
begin
 Result := False;

 iRetorno := Bematech_FI_AberturaDoDia('0', '');
 //Valor do Suprimento (0), FormaPagamento (Dinheiro)
 if iRetorno = 1 then
  begin
   if Retorno_Impressora_Bematech_Fi2(16) = 1 then  //se COMANDO NAO EXECUTADO...
    begin
     LogToFile('Abre_Dia_Bematech_Fi2: Não foi possível realizar Abertura do Dia', True);
     Retorno_Impressora_Bematech_Fi2(-1,'Não foi possível realizar Abertura do Dia' +
       #13 +
       'Verifique mensagens do ECF:' + #13)
    end
   else
     Retorno_Impressora_Bematech_Fi2(-1);
   exit;
  end
 else
   Analisa_iRetorno_Bematech_Fi2();

 Result := True;
end;

//--- Programa Horário de Verão ---
function Horario_Verao_Bematech_Fi2: boolean;
begin
 Result := False;
 iRetorno := Bematech_FI_ProgramaHorarioVerao;
 if iRetorno = 1 then
  begin
   if Retorno_Impressora_Bematech_Fi2(16) = 1 then
    begin
     LogToFile('Horario_Verao_Bematech_Fi2: ERRO: Não é possível programar/desprogramar horário de verão.', True);
     Retorno_Impressora_Bematech_Fi2(-1,'ERRO: Não é possível programar/desprogramar horário de verão.'#13#10#13#10 +
       'Importante:'#13#10 +
       'Para Programar o horário de verão é necessário:'#13#10 +
       '- Ter realizado uma redução Z, sem movimento no dia;'#13#10 +
       'Para Desprogramar o horário de verão:'#13#10 +
       '- Somente 1 hora após a redução Z, sem movimento no dia.'#13#10)
    end
   else
    begin
     LogToFile('Horario_Verao_Bematech_Fi2: Horário de verão programado/desprogramado com sucesso.', True);
     application.MessageBox('Horário de verão programado/desprogramado com sucesso!',
       'Confirmação', mb_ok + mb_iconinformation);
     Result := True;
    end;
  end
 else
   Analisa_iRetorno_Bematech_Fi2();
end;

//--- Abre Cupom fiscal ---
function Abre_Cupom_Bematech_Fi2(CGC_CPF: string): boolean;
begin
 Result := False;

 Log_Str_Bematech_Fi2.Clear;
 Log_Str_Bematech_Fi2.Append(Format('Abertura de Cupom - Bematech Fi2 - *CGC_CPF: %s', [CGC_CPF]));

 iRetorno := Bematech_FI_AbreCupom(PChar(CGC_CPF));

 if iRetorno = 1 then
  begin
   if (Retorno_Impressora_Bematech_Fi2(1) = 1) or
     (Retorno_Impressora_Bematech_Fi2(4) = 1) or
     (Retorno_Impressora_Bematech_Fi2(12) = 1) then
   //Estados não permitidos? Fim de Papel; ECF em erro; Sem Aliquota
    begin
     Error_Dump_Bematech_Fi2;
     Retorno_Impressora_Bematech_Fi2(-1,'ERRO: Abertura de Cupom Fiscal'#13#10 +
       'Não foi possível realizar abertura de cupom fiscal.'#13#10 +
       'Redução Z já foi realizada ou ocorreu um erro durante'#13#10 +
       'a abertura do cupom fiscal. Verifique!'#13#10#13#10);
     Cancela_Cupom_Bematech_Fi2;
     exit;
    end
  end
 else
  begin
   Analisa_iRetorno_Bematech_Fi2();
   Error_Dump_Bematech_Fi2;
   Application.MessageBox('Erro durante Abertura de Cupom Fiscal...'#13 +
                          'Verifique: Não foi possível realizar abertura de cupom fiscal.',
                          'Atenção',
                          mb_ok + mb_iconerror);
   Cancela_Cupom_Bematech_Fi2;
   exit;
  end;

 Result := True;
end;

//--- Vende Item ---
function Vende_Item_Bematech_Fi2(Codigo, Descricao, Aliquota, Tipo_Qnt, Qnt: string;
 Casas_Decimais: integer;
 Valor, Tipo_Desconto, Valor_Desconto: string): boolean;
begin
 Result := False;

 Codigo := alfastuff(Codigo, 13, False);
 Descricao := alfastuff(Descricao, 29, False);

 if Tipo_Qnt = 'f' then
   Qnt := FormatoNum(Qnt + '0', 7, True)
 else
   Qnt := FormatoNum(Qnt, 4, True);

 iRetorno := Bematech_FI_VendeItem(StrPas(PChar(Codigo)), StrPas(PChar(Descricao)),
   StrPas(PChar(Aliquota)),
   StrPas(PChar(Tipo_Qnt)),
   StrPas(PChar(Qnt)), Casas_Decimais, StrPas(PChar(Valor)),
   StrPas(PChar(Tipo_Desconto)),
   StrPas(PChar(Valor_Desconto)));

 Log_Str_Bematech_Fi2.Append(Format('Vende Item - Bematech Fi2 - *Codigo: %s *Descricao: %s *Aliquota: %s *Tipo_Qnt: %s *Qnt: %s *Casas_Decimais: %d *Valor: %s *Tipo_Desconto: %s *Desconto: %s',
                       [Codigo, Descricao, Aliquota, Tipo_Qnt, Qnt, Casas_Decimais,
                       Valor, Tipo_Desconto, Valor_Desconto]));

 if iRetorno = 1 then  //se retorno foi OK
  begin
   if Retorno_Impressora_Bematech_Fi2(16) = 1 then // COMANDO EXECUTADO?
    begin
     Error_Dump_Bematech_Fi2;
     Retorno_Impressora_Bematech_Fi2(-1,'ERRO: Registro de Venda de Item'#13#10 +
       'Ocorreu um erro durante o registro da venda de um item:'#13#10 +
       'Verifique!'#13#10#13#10);
     Cancela_Cupom_Bematech_Fi2;
     exit;
    end;
  end
 else
  begin
   Analisa_iRetorno_Bematech_Fi2;
   Error_Dump_Bematech_Fi2;
   Application.MessageBox('Erro durante Registro de Venda de Item...'#13 +
                          'Verifique: Ocorreu um erro durante o registro da venda dos itens.',
                          'Atenção',
                          mb_ok + mb_iconerror);
   Cancela_Cupom_Bematech_Fi2;
   exit;
  end;

 Result := True;
end;

//--- Fecha Cupom Fiscal ---
function Fecha_Cupom_Bematech_Fi2(Forma_Pgt, Acre_Desc, Tipo_Acrec_Desc,
 Valor_Acrec_Desc, Valor_Pago, Nome, Endereco, Referencia, Bairro, Vendedor,
 Msg_P: string): boolean;
begin
 Result := False;

 if trim(Nome) <> '' then
   Nome := alfastuff('Nome: ' + Nome, 48, True);
 if trim(Endereco) <> '' then
   Endereco := alfastuff('End.: ' + Endereco, 48, True);
 if trim(Referencia) <> '' then
   Referencia := alfastuff('Ref.: ' + Referencia, 48, True);
 if trim(Bairro) <> '' then
   Bairro := alfastuff('Bairro: ' + Bairro, 48, True);
 if trim(Vendedor) <> '' then
   Vendedor := alfastuff('Vendedor: ' + Vendedor, 48, True);
 if trim(Msg_P) <> '' then
   Msg_P := alfastuff(Msg_P, 48, True);


 iRetorno := Bematech_FI_FechaCupom(PChar(Forma_Pgt),
   Acre_Desc,
   Tipo_Acrec_Desc,
   Valor_Acrec_Desc,
   StrPas(Pchar(Valor_Pago)),
   StrPas(Pchar(Nome +
                Endereco +
                Referencia +
                Bairro +
                Vendedor +
                Msg_P +
                df_Msg)));


 Log_Str_Bematech_Fi2.Append(Format('Fecha Cupom - Bematech Fi2 - *Forma_Pgt: %s *Acre_Desc: %s *Tipo_Acre_Desc: %s *Valor_Acre_Desc: %s *Valor_Pago: %s *Nome: %s *End: %s *Ref: %s *Bairro: %s *Vendedor: %s *Msg_P: %s',
                       [Forma_Pgt, Acre_Desc, Tipo_Acrec_Desc, Valor_Acrec_Desc,
                       Valor_Pago, Nome, Endereco, Referencia, Bairro, Vendedor, Msg_P]));

 if iretorno = 1 then
  begin
   if Retorno_Impressora_Bematech_Fi2(16) = 1 then // COMANDO EXECUTADO?
    begin
     Error_Dump_Bematech_Fi2;
     Retorno_Impressora_Bematech_Fi2(-1,'ERRO: Fechamento de Cupom Fiscal'#13#10 +
       'Ocorreu um erro durante o fechamento do cupom:'#13#10 +
       'Verifique!'#13#10#13#10);
     Cancela_Cupom_Bematech_Fi2;
     exit;
    end;
  end
 else
  begin
   Analisa_iRetorno_Bematech_Fi2;
   Error_Dump_Bematech_Fi2;
   Application.MessageBox('Erro durante Fechamento de Cupom Fiscal...'#13 +
                          'Verifique: Ocorreu um erro durante o fechamento do cupom.',
                          'Atenção',
                          mb_ok + mb_iconerror);
   Cancela_Cupom_Bematech_Fi2;
   exit;
  end;

 Result := True;
end;

end.
