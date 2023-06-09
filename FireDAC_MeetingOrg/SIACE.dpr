program SIACE;

uses
  Forms,
  Windows,
  Dialogs,
  SysUtils,
  Controls,
  ShellAPI,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Principal in 'Principal.pas' {FormPrincipal},
  Clientes in 'Clientes.pas' {FormClientes},
  ModulodeDados in 'ModulodeDados.pas' {DM: TDataModule},
  Formata_CPF_CNPJ in 'Formata_CPF_CNPJ.pas',
  Defs in 'Defs.pas',
  Acesso in 'Acesso.pas' {Form_Usuario},
  ConsClientes in 'ConsClientes.pas' {FormConsClientes},
  Unidades in 'Unidades.pas' {FormUnidades},
  ConsUnidades in 'ConsUnidades.pas' {FormConsUnidades},
  Marcas in 'Marcas.pas' {FormMarcas},
  ConsMarcas in 'ConsMarcas.pas' {FormConsMarcas},
  ConsGrupos in 'ConsGrupos.pas' {FormConsGrupos},
  Grupos in 'Grupos.pas' {FormGrupos},
  Fornecedores in 'Fornecedores.pas' {FormFornecedores},
  Produtos in 'Produtos.pas' {FormProdutos},
  Bancos in 'Bancos.pas' {FormBancos},
  Agencias in 'Agencias.pas' {FormAgencias},
  ConsBancos in 'ConsBancos.pas' {FormConsBancos},
  ConsAgencias in 'ConsAgencias.pas' {FormConsAgencias},
  ConsSubGrupos in 'ConsSubGrupos.pas' {FormConsSubGrupos},
  SubGrupos in 'SubGrupos.pas' {FormSubGrupos},
  ConsProdutos in 'ConsProdutos.pas' {FormConsProdutos},
  ModulodeDadosConsultas in 'ModulodeDadosConsultas.pas' {DMC: TDataModule},
  MotivoRetorno in 'MotivoRetorno.pas' {FormMotivoRetorno},
  ConsRetorno in 'ConsRetorno.pas' {FormConsRetorno},
  Z_RotinasGerais in 'Z_RotinasGerais.pas',
  Sobre in 'Sobre.pas' {Formsobre},
  RelatorioEstoque in 'RelatorioEstoque.pas' {FormRelatorioEstoqueAtual},
  ModulodeDadosRelatorios in 'ModulodeDadosRelatorios.pas' {DMR: TDataModule},
  ConsContasPagar in 'ConsContasPagar.pas' {FormConsContasPagar},
  ConsultaContasPagar in 'ConsultaContasPagar.pas' {FormConsultaContasPagar},
  ModulodeDadosConsultas2 in 'ModulodeDadosConsultas2.pas' {DMC2: TDataModule},
  ModulodeDadosBaixas in 'ModulodeDadosBaixas.pas' {DMB: TDataModule},
  ContaBancaria in 'ContaBancaria.pas' {FormContaBancaria},
  ConsContaBancariapas in 'ConsContaBancariapas.pas' {FormConsContaBancaria},
  RecebeCheque in 'RecebeCheque.pas' {FormRecebeCheque},
  ConfBaixaCheque in 'ConfBaixaCheque.pas' {FormConfBaixaCheque},
  CaixaAnalitico in 'CaixaAnalitico.pas' {FormCaixaAnalitico},
  DetalhesCrediario in 'DetalhesCrediario.pas' {FormDetCrediario},
  ConsultaProdutos in 'ConsultaProdutos.pas' {FormConsultaProdutos},
  Usuarios in 'Usuarios.pas' {FormUsuarios},
  ConsUsuarios in 'ConsUsuarios.pas' {FormConsUsuarios},
  DepositosBanco in 'DepositosBanco.pas' {FormDepositos},
  RetornoCheques in 'RetornoCheques.pas' {FormRetornoCheques},
  BaixaChequesRetornados in 'BaixaChequesRetornados.pas' {FormBaixaChequeRetornado},
  LancamentosCaixa in 'LancamentosCaixa.pas' {FormLancamentosCaixa},
  LancamentosCaixaSaida in 'LancamentosCaixaSaida.pas' {FormLancamentosCaixaSaida},
  CaixaEspecifico in 'CaixaEspecifico.pas' {FormCaixaEspecifico},
  BancoEspecifico in 'BancoEspecifico.pas' {FormBancoEspecifico},
  RelatorioCaixa in 'RelatorioCaixa.pas' {FormRelatorioCaixa},
  ConsultaCrediario in 'ConsultaCrediario.pas' {FormConsultaCrediario},
  ConsultaCheques in 'ConsultaCheques.pas' {FormConsultaCheques},
  ConsultaChequesRetornados in 'ConsultaChequesRetornados.pas' {FormConsultaChequesRetornados},
  ConsultaChequesBaixados in 'ConsultaChequesBaixados.pas' {FormConsultaChequesBaixados},
  ConsultaPedidoDireto in 'ConsultaPedidoDireto.pas' {FormConsultaPedidoDireto},
  ModulodeDadosConsultas3 in 'ModulodeDadosConsultas3.pas' {DMC3: TDataModule},
  SaquesBanco in 'SaquesBanco.pas' {FormSaques},
  ConsultaOrcamentos in 'ConsultaOrcamentos.pas' {FormConsultaOrcamentos},
  Z_DeclaracoesBemaFi32 in 'Z_DeclaracoesBemaFi32.pas',
  BEMA_LeituraX in 'BEMA_LeituraX.pas' {Form_LeituraX},
  BEMA_ReducaoZ in 'BEMA_ReducaoZ.pas' {Form_ReducaoZ},
  ModulodeDadosConsultas4 in 'ModulodeDadosConsultas4.pas' {DMC4: TDataModule},
  Z_CriptDecript in 'Z_CriptDecript.pas',
  AlterarSenha in 'AlterarSenha.pas' {FormAlteraSenha},
  LiberarAcesso in 'LiberarAcesso.pas' {FormLibAcesso},
  MenuCadastros in 'MenuCadastros.pas' {FormCadastros},
  MenuCaixa in 'MenuCaixa.pas' {FormMenuCaixa},
  Splash in 'Splash.pas' {FormSplash},
  MenuBancos in 'MenuBancos.pas' {FormMenuBancos},
  MenuCR in 'MenuCR.pas' {FormMenuCR},
  Logoff in 'Logoff.pas' {FormLogoff},
  Configuracoes in 'Configuracoes.pas' {FormConfiguracoes},
  DetClientesPedidos in 'DetClientesPedidos.pas' {FormDetCli},
  DesbloquearCliente in 'DesbloquearCliente.pas' {FormDesbloquearCliente},
  ReemissaoPP in 'ReemissaoPP.pas' {FormReemissaoPP},
  ReemissaoO in 'ReemissaoO.pas' {FormReemissaoO},
  ConsultaComissaoPD in 'ConsultaComissaoPD.pas' {FormConsultaComissaoPD},
  CaixaRegistradora in 'CaixaRegistradora.pas' {FormCaixaRegistradora},
  EntregadePedidos in 'EntregadePedidos.pas' {FormEntregadePedidos},
  PlanoContas in 'PlanoContas.pas' {FormPlanoContas},
  ConsPlanoContas in 'ConsPlanoContas.pas' {FormConsPlanoContas},
  DevolucaoPedido in 'DevolucaoPedido.pas' {FormDevolucaoPedido},
  PagDevolucaoPedidos in 'PagDevolucaoPedidos.pas' {FormPagDevolucaoPedidos},
  PagDevDinheiro in 'PagDevDinheiro.pas' {FormPagDevDinheiro},
  PagDevCheque in 'PagDevCheque.pas' {FormPagDevcheque},
  PagDevCrediario in 'PagDevCrediario.pas' {FormPagDevCrediario},
  ConsultaChequesPag in 'ConsultaChequesPag.pas' {FormConsultaChequesPag},
  ConsultaExtornoComissao in 'ConsultaExtornoComissao.pas' {FormConsultaExtornoComissao},
  ConsultaContasPagarFor in 'ConsultaContasPagarFor.pas' {FormConsultaContasPagarFor},
  ConsultaContasPagarPLC in 'ConsultaContasPagarPLC.pas' {FormConsultaContasPagarPLC},
  ConsultaPedidoCancelado in 'ConsultaPedidoCancelado.pas' {FormConsultaPedidoCancelado},
  ModulodeDadosConsultas5 in 'ModulodeDadosConsultas5.pas' {DMC5: TDataModule},
  ReemissaoDuplicata in 'ReemissaoDuplicata.pas' {FormReemissaoDuplicata},
  MenuPesquisas in 'MenuPesquisas.pas' {FormMenuPesquisas},
  RelatorioBanco in 'RelatorioBanco.pas' {FormRelatorioBanco},
  CRCrediario in 'CRCrediario.pas' {FormCRCrediario},
  RCConta in 'RCConta.pas' {FormRCConta},
  RCParcial in 'RCParcial.pas' {FormRCParcial},
  HistoricoCliente in 'HistoricoCliente.pas' {FormHistoricoCliente},
  RelatorioCheques in 'RelatorioCheques.pas' {FormRelatorioCheques},
  RelatorioComissao in 'RelatorioComissao.pas' {FormRelatorioComissao},
  RelatorioCompras in 'RelatorioCompras.pas' {FormRelatorioCompras},
  CondicaoPagamento in 'CondicaoPagamento.pas' {FormCondPagamento},
  ConsCondPagamento in 'ConsCondPagamento.pas' {FormConsCondPagamento},
  PedidoParcela in 'PedidoParcela.pas' {FormPedidoParcela},
  RegPedido in 'RegPedido.pas' {FormCupomFiscal},
  PesquisaEstoqueRegPedidos in 'PesquisaEstoqueRegPedidos.pas' {FormPesquisaEstoqueRegPedidos},
  ConsultaCrediarioReceber in 'ConsultaCrediarioReceber.pas' {FormConsultaCrediarioReceber},
  DetalhesPesqCrediarioPeriodo in 'DetalhesPesqCrediarioPeriodo.pas' {FormDetPesCrediarioPeriodo},
  ConsultaCrediarioRecebido in 'ConsultaCrediarioRecebido.pas' {FormConsultaCrediarioRecebido},
  DetalhesPesqCreRecebidoCliente in 'DetalhesPesqCreRecebidoCliente.pas' {FormDetPesCreRecebidoCliente},
  ConsultaCrediarioRecebidoPeriodo in 'ConsultaCrediarioRecebidoPeriodo.pas' {FormConsultaCrediarioRecebidoPeriodo},
  DetalhesPesqCreRecebidoPeriodo in 'DetalhesPesqCreRecebidoPeriodo.pas' {FormDetPesCreRecebidoPeriodo},
  RelatorioContasReceber in 'RelatorioContasReceber.pas' {FormRelatorioContasReceber},
  Vendas in 'Vendas.pas' {formVendas},
  secoes in 'secoes.pas' {FormSeccao},
  ConsSeccao in 'ConsSeccao.pas' {FormConsSeccao},
  FormPadrai in 'FormPadrai.pas' {FormPadrao},
  categorias in 'categorias.pas' {FormCategorias},
  ConsCategoria in 'ConsCategoria.pas' {FormConsCategoria},
  SHHOTMODELO in 'SHHOTMODELO.pas' {FormPadraoShott},
  Agregados in 'Agregados.pas' {FormAgregados},
  Similares in 'Similares.pas' {FormSimilares},
  ConsProdSimilar in 'ConsProdSimilar.pas' {FormConsProdutos1},
  OsTipoBens in 'OsTipoBens.pas' {FormOsTpBens},
  DMOS1 in 'DMOS1.pas' {DMOS: TDataModule},
  OsBensMarca in 'OsBensMarca.pas' {FormOsMarca},
  osCores in 'osCores.pas' {FormOsCores},
  OSlocalizacao in 'OSlocalizacao.pas' {FormOSlocalizacao},
  OsBens in 'OsBens.pas' {FormOSBem},
  OStpatendimento in 'OStpatendimento.pas' {FormOSAtendimento},
  Uerros in 'Uerros.pas' {FormErros},
  OsPrioridades in 'OsPrioridades.pas' {FormOsPrioridades},
  OsStatus in 'OsStatus.pas' {FormOsStatus},
  OSLancamento in 'OSLancamento.pas' {FormOs},
  ConfBancos in 'ConfBancos.pas' {FormLyBancos},
  ConsLyBancos in 'ConsLyBancos.pas' {FormConsLyBancos},
  Titulos in 'Titulos.pas' {frmTitulos},
  TitulosLista in 'TitulosLista.pas' {frmTitulosLista},
  boletos in 'boletos.pas' {FormBoletosBanc},
  Udmcob in 'Udmcob.pas' {DMCOB: TDataModule},
  BoletosBanc in 'BoletosBanc.pas' {FormBoletos},
  Contrato in 'Contrato.pas' {FormContrato},
  printPedidos in 'printPedidos.pas' {ImprimirPedidos},
  inventarioEstoque in 'inventarioEstoque.pas' {FormInventarioEstoque},
  RelatorioVendas in 'RelatorioVendas.pas' {FormRelatorioVendas},
  ContratoVEnda in 'ContratoVEnda.pas' {FormContratoVenda},
  ECFTeste1 in 'ECFTeste1.pas' {formECF},
  ConfiguraSerial in 'ConfiguraSerial.pas' {frConfiguraSerial},
  VendeItem in 'VendeItem.pas' {frVendeItem},
  EfetuaPagamento in 'EfetuaPagamento.pas' {frPagamento},
  UBackup in 'UBackup.pas' {FormBackup},
  Calendario in 'Calendario.pas' {FormCalendario},
  ConsultaOs in 'ConsultaOs.pas' {FormConsOS},
  duplicata in 'duplicata.pas' {FormDuplicatas},
  relVendas in 'relVendas.pas' {FormRelVendas},
  Estenso in 'Estenso.pas',
  relVendasCliente in 'relVendasCliente.pas' {FormRelVdaCliente},
  EmiteEcf in 'EmiteEcf.pas' {FormEmEcf},
  cobranca in 'cobranca.pas' {FormCobranca},
  agrupamento_titulos in 'agrupamento_titulos.pas' {FormAgrupamento},
  Cidades in 'Cidades.pas' {FormCidades},
  ConsCidades in 'ConsCidades.pas' {FormConsCidades},
  Uerro in 'Uerro.pas' {ReconcileErrorForm},
  ConsBairros in 'ConsBairros.pas' {FormConsBairros},
  bairros in 'bairros.pas' {FormBairros},
  Estados in 'Estados.pas' {FormEstados},
  ArquivodeRetorno748 in 'ArquivodeRetorno748.pas' {FormArquivodeRetorno748},
  RelCobranca in 'RelCobranca.pas' {FormRelCobranca},
  RelCobrancaGeral in 'RelCobrancaGeral.pas' {FormCobrancaGeral},
  VendasParcelamento in 'VendasParcelamento.pas' {FormParcelamento},
  importacaoAbcFarma in 'importacaoAbcFarma.pas' {FormAbcFarma},
  RelatorioProducaoLaticinios in 'RelatorioProducaoLaticinios.pas' {FormRelProdLaticinios},
  RelatorioProdLaticinios in 'RelatorioProdLaticinios.pas' {FormPordLaticinios},
  Zonas in 'Zonas.pas' {FormZonas},
  ConsultaZonas in 'ConsultaZonas.pas' {FormConsZonas},
  RelLaticiniosFornecedor in 'RelLaticiniosFornecedor.pas' {FormRelLaticiniosLinhas},
  RelVendasProdutos in 'RelVendasProdutos.pas' {FormRelVendasProd},
  Rel_vendas_produtos in 'Rel_vendas_produtos.pas' {FormRel_vendas_produtos},
  ULaticinio in 'ULaticinio.pas' {FormLaticinio},
  temas in 'temas.pas' {Formtemas},
  RelatorioCaixaAnalitico in 'RelatorioCaixaAnalitico.pas' {FormRelCaixa},
  Relcomissao in 'Relcomissao.pas' {FormComissaoRel},
  CPLaticinio in 'CPLaticinio.pas' {FormContasPagarLaticinio},
  ConsProdutosVendas in 'ConsProdutosVendas.pas' {FormConsProdutosVendas},
  RelOrcamentos in 'RelOrcamentos.pas' {FormRelOrcamentos},
  LancCrediario in 'LancCrediario.pas' {FormLancCrediario},
  ConsCrediario in 'ConsCrediario.pas' {FormConsCrediario},
  ecfFrente in 'ecfFrente.pas' {FormCaixaEcf},
  ClientesAdd in 'ClientesAdd.pas' {FormClientesAdd},
  ajuda in 'ajuda.pas' {FormAjuda},
  cheque in 'cheque.pas' {FormCheque},
  Exporta_Balancas in 'Exporta_Balancas.pas' {FormExportaBalanca},
  relatorioaberturaos in 'relatorioaberturaos.pas' {FormRelAbertuaOs},
  Recibo in 'Recibo.pas' {FormRecibo},
  RRecibo in 'RRecibo.pas' {FormRelRecibo},
  clientesaddVendas in 'clientesaddVendas.pas' {FormClientesAddVendas},
  LancCheques in 'LancCheques.pas' {FormCheques},
  lecheque_frente_cx in 'lecheque_frente_cx.pas' {FormChequesFrente},
  Itensdavenda in 'Itensdavenda.pas' {FormItensVenda},
  UCustos in 'UCustos.pas' {FormCustos},
  ProdutosFalta in 'ProdutosFalta.pas' {FormProdutosFalta},
  ImpNotafiscal in 'ImpNotafiscal.pas' {FormImpNotafiscal},
  RelPedidoCompras in 'RelPedidoCompras.pas' {FormPedidoCompra},
  ImprimePedCompras in 'ImprimePedCompras.pas' {FormRelPedidocompra},
  ConsCst in 'ConsCst.pas' {FormConsCst},
  Libera_Venda in 'Libera_Venda.pas' {FormLiberaVenda},
  ConsultaContasReceber in 'ConsultaContasReceber.pas' {FormConsultaCR},
  autorizacao_liberacao in 'autorizacao_liberacao.pas' {FormAtutoriza},
  Partidas in 'Partidas.pas' {FormPartidas},
  lancNotasFiscais in 'lancNotasFiscais.pas' {FormLancNotasFiscais},
  relIndea in 'relIndea.pas' {FormRelIndea},
  indeaVacinas in 'indeaVacinas.pas' {FormIndeaVacinas},
  RelBrucelose in 'RelBrucelose.pas' {FormBrucelose},
  Grafico_vendas in 'Grafico_vendas.pas' {FormGraficoVendas},
  Graficos in 'Graficos.pas' {FormGraficos},
  graficomes in 'graficomes.pas' {FormGrafico_mes},
  Grafico_produtos in 'Grafico_produtos.pas' {FormGraficoProdutos},
  graficoquant in 'graficoquant.pas' {FormGrafico_quant},
  PEDIDO80COL in 'PEDIDO80COL.pas' {FormPedido40col},
  clientesaddorc in 'clientesaddorc.pas' {FormClientesaddorc},
  baixaCR in 'baixaCR.pas' {FormBaixas},
  RelatorioCaixaespecifico in 'RelatorioCaixaespecifico.pas' {FormRelCaixaEsp},
  etiquetas in 'etiquetas.pas' {FormEtiquetas},
  relvendasProdutos_clientes in 'relvendasProdutos_clientes.pas' {FormVendas_Produtos},
  ManFaltas in 'ManFaltas.pas' {FormManFaltas},
  Contratos in 'Contratos.pas' {FormContratos},
  ContratosBoletos in 'ContratosBoletos.pas' {FormContratosBoleto},
  ufrmStatus in 'ufrmStatus.pas' {frmStatus},
  custosvendas in 'custosvendas.pas' {FormCustosVendas},
  Nfe in 'Nfe.pas' {FormNfe},
  gerNFE in 'gerNFE.pas' {FormGefaNFe},
  Tranportador in 'Tranportador.pas' {FormTransportador},
  CrRecebido in 'CrRecebido.pas' {FormCrRecebido},
  LeitorSerial in 'LeitorSerial.pas' {FormLeitorSerial},
  debitos in 'debitos.pas' {FormDebitos},
  Otica in 'Otica.pas' {FormOtica},
  consotica in 'consotica.pas' {FormConsOtica},
  FichaCliente in 'FichaCliente.pas' {FormFichaCliente},
  horLabel in 'horLabel.pas' {FormEtqProdRel},
  HORMAIN in 'HORMAIN.pas' {FormEtqProdutos},
  CobrancaRazao in 'CobrancaRazao.pas' {FormCobRazao},
  Chequesavulso in 'Chequesavulso.pas' {FormChAvulso},
  ProdutosFaltaM in 'ProdutosFaltaM.pas' {FormProdutosFaltaM},
  duplicatasp in 'duplicatasp.pas' {Formdpl},
  EtiquetasFR in 'EtiquetasFR.pas' {FormEtiqueta},
  Comissaocobrador in 'Comissaocobrador.pas' {FormComCobrador},
  RelGraficas in 'RelGraficas.pas' {FormRelGrafica},
  FormGraficas in 'FormGraficas.pas' {FormGrafica},
  CobrancaCr in 'CobrancaCr.pas' {FormCobrancaCr},
  relvendas_for in 'relvendas_for.pas' {FormRel_vendas},
  RelVendasCustos in 'RelVendasCustos.pas' {FormVendas_Custos},
  Relvendas_custos in 'Relvendas_custos.pas' {FormRelVendas_custos},
  VendasCustos_p in 'VendasCustos_p.pas' {FormVendas_CustosP},
  recibo_cp in 'recibo_cp.pas' {FormReciboCP},
  etiquetas_barras in 'etiquetas_barras.pas' {FormEtiqBarras},
  cst in 'cst.pas' {FormCst},
  CFOP in 'CFOP.pas' {formcfop},
  aniversario in 'aniversario.pas' {FormAniversario},
  Aniversariantes in 'Aniversariantes.pas' {FormAniversariantes},
  RelOrca80col in 'RelOrca80col.pas' {FormORCA80COL},
  etiquetasPPLA in 'etiquetasPPLA.pas' {FormEtiquetasPPLA},
  CONSULTANCM in 'CONSULTANCM.pas' {FormConsNcm},
  Frm_SPEDFiscal in 'Frm_SPEDFiscal.pas' {FormSPEDFiscal},
  DocsFiscais in 'DocsFiscais.pas' {FormDocsFiscais},
  Bens in 'Bens.pas' {FormBens},
  ModuleDados1 in 'ModuleDados1.pas' {DM1: TDataModule},
  Bens_utilizacao in 'Bens_utilizacao.pas' {FormBensUtilizacao},
  Centro_Custo in 'Centro_Custo.pas' {FormCentroCusto},
  DadosZ in 'DadosZ.pas' {FormDadosZ},
  DadosTotZ in 'DadosTotZ.pas' {FormTotalizadorZ},
  Inventario in 'Inventario.pas' {Forminventario},
  RelSolucaoOs in 'RelSolucaoOs.pas' {FormSolucaoOS},
  monitorOS in 'monitorOS.pas' {FormMonitorOS},
  Nfe_Conf in 'Nfe_Conf.pas' {FormNfe_Conf},
  Resumo_Venda_Produtos in 'Resumo_Venda_Produtos.pas' {FormResumovendas},
  Rel_resumo_Produtos in 'Rel_resumo_Produtos.pas' {Form_Res_produtos},
  RelClientes in 'RelClientes.pas' {FormRelClientes},
  RelatorioClientes in 'RelatorioClientes.pas' {FormRelatorioClientes},
  ComissaoRec in 'ComissaoRec.pas' {FormComissaoRecebida},
  RelClientesSped in 'RelClientesSped.pas' {FormRelClientesVendasMes},
  relclientesmovmes in 'relclientesmovmes.pas' {FormRelClientesMovMes},
  libera_desconto in 'libera_desconto.pas' {FormLiberaDesconto},
  BEMA_Aliquota in 'BEMA_Aliquota.pas' {FormAliquota},
  BEMA_HorarioVerao in 'BEMA_HorarioVerao.pas' {FormHorarioVerao},
  BEMA_ImpactoAgulhas in 'BEMA_ImpactoAgulhas.pas' {FormImpactoAgulhas},
  BEMA_LinhasCupons in 'BEMA_LinhasCupons.pas' {FormLinhasCupons},
  BEMA_MemFiscalData in 'BEMA_MemFiscalData.pas' {FormMemFiscalData},
  BEMA_MemFiscalRed in 'BEMA_MemFiscalRed.pas' {FormMemFiscalRed},
  BEMA_SimboloMoeda in 'BEMA_SimboloMoeda.pas' {FormSimboloMoeda},
  UAcertoEstoque in 'UAcertoEstoque.pas' {FormAcertoEstoque},
  UCadNovo in 'UCadNovo.pas' {FrmCadastroNovo},
  UConsNovo in 'UConsNovo.pas' {FrmConsNovo},
  UCadLocaisEstoque in 'UCadLocaisEstoque.pas' {FrmCadLocaisEstoque},
  UConsLocaisEstoque in 'UConsLocaisEstoque.pas' {FrmConsLocaisEstoque},
  UCadMotivo in 'UCadMotivo.pas' {FrmCadMotivo},
  UConsMotivo in 'UConsMotivo.pas' {FrmConsMotivo},
  UConsAcertoEstoque in 'UConsAcertoEstoque.pas' {FrmConsAcertoEstoque},
  UTransfLocaisEstoque in 'UTransfLocaisEstoque.pas' {FrmTransfLocaisEstoque},
  Ubibli1 in 'Ubibli1.pas',
  ULMFData in 'ULMFData.pas' {FrmLMFData},
  UdownloadMdf in 'UdownloadMdf.pas' {FormDownloadaMFD},
  UGeraMdb in 'UGeraMdb.pas' {FormGeraMdb},
  UResumoVdia in 'UResumoVdia.pas' {FormResumoVdia},
  UInventario in 'UInventario.pas' {FormRELinventario},
  UINVENTARIOABERT in 'UINVENTARIOABERT.pas' {FormAberturaLivro},
  UGerenciamentoNFe in 'UGerenciamentoNFe.pas' {FrmGerenciamentoNFe},
  UInventario_custo in 'UInventario_custo.pas' {FormInventario_Custo},
  Uinventario_rel in 'Uinventario_rel.pas' {FormInv},
  URelPisCofins in 'URelPisCofins.pas' {FormRelPisCofins},
  Upiscofins in 'Upiscofins.pas' {FormPisCofins},
  UGrupoTributacao in 'UGrupoTributacao.pas' {FormTributacao},
  UConsGRP in 'UConsGRP.pas' {FormConsGrupoT},
  ConferenciaEstoque in 'ConferenciaEstoque.pas' {FormConfEstoque},
  UConferenciaEstoque in 'UConferenciaEstoque.pas' {FormRelConfEstoque},
  UAlteraPreco in 'UAlteraPreco.pas' {FrmAlteraPreco},
  UAltPreco in 'UAltPreco.pas' {FrmAltPreco},
  UUltimaCompra in 'UUltimaCompra.pas' {FrmUltimaCompra},
  UAlterarSecaoGrupo in 'UAlterarSecaoGrupo.pas' {FrmAlterarSecao},
  UProdutosComposicao in 'UProdutosComposicao.pas' {FrmProdutosComposicao},
  UFormacaoPreco in 'UFormacaoPreco.pas' {FrmFormacaoPreco},
  UConsLab in 'UConsLab.pas' {FrmConsLab},
  UCadLab in 'UCadLab.pas' {FrmCadLab},
  UAfeicao in 'UAfeicao.pas' {FormAfericao},
  consAfericao in 'consAfericao.pas' {FormConsAfericao},
  ValeTroco in 'ValeTroco.pas' {FormValeTroco},
  consValeTroco in 'consValeTroco.pas' {FormConsValetroco},
  RelValeTroco in 'RelValeTroco.pas' {FormRelValeTroco},
  UDadosAdm in 'UDadosAdm.pas' {FrmDadosAdm},
  UConsAdmCartaoCredito in 'UConsAdmCartaoCredito.pas' {FrmConsAdmCartaoCredito},
  URelContasReceberCartao in 'URelContasReceberCartao.pas' {FrmRelContasReceberCartao},
  UQRelCTRAdm in 'UQRelCTRAdm.pas' {FrmQRelCTRAdm},
  UAlteraParcelaCTR in 'UAlteraParcelaCTR.pas' {FrmAlteraParcelaADM},
  UDuplicataADM in 'UDuplicataADM.pas' {FrmDuplicataADM},
  UCadAdmCartaoCredito in 'UCadAdmCartaoCredito.pas' {FrmCadAdmCartaoCredito},
  ULancCTRADM in 'ULancCTRADM.pas' {FrmLancCTRADM},
  URecAdm in 'URecAdm.pas' {FrmRECADM},
  UCtrAdmRec in 'UCtrAdmRec.pas' {FrmCtrAdmRec},
  UConsCTRAdm in 'UConsCTRAdm.pas' {FrmConsCTRAdm},
  UConsBandeiraCartao in 'UConsBandeiraCartao.pas' {FrmConsBandeiraCartao},
  chequesTroco in 'chequesTroco.pas' {FormCheques_troco},
  Utroco in 'Utroco.pas' {FormTroco},
  UaltPrecos in 'UaltPrecos.pas' {FormAltPreco},
  Cheques_emitidos in 'Cheques_emitidos.pas' {Form_Cheques},
  ModuledadosPostos in 'ModuledadosPostos.pas' {DMP: TDataModule},
  frentistas in 'frentistas.pas' {FormFrentista},
  Consfrentistas in 'Consfrentistas.pas' {FormConsFrentista},
  tanques in 'tanques.pas' {FormTanques},
  ConsTanques in 'ConsTanques.pas' {FormConstanques},
  bombas in 'bombas.pas' {FormBombas},
  consBomba in 'consBomba.pas' {FormConsBomba},
  consbicos in 'consbicos.pas' {FormConsBicos},
  bicos in 'bicos.pas' {FormBicos},
  UConsCheque in 'UConsCheque.pas' {FrmConsCheque},
  RelRecibo40 in 'RelRecibo40.pas' {FormRelRecibo40},
  Autorizacao in 'Autorizacao.pas' {FormAutorizacao},
  uFarmaciaPopular2 in 'uFarmaciaPopular2.pas' {frmFarmaciaPopular},
  ServicoSolicitacaoWS2 in 'ServicoSolicitacaoWS2.pas',
  etiquetas_6col in 'etiquetas_6col.pas' {FormEtiquetas6},
  RelCaixa in 'RelCaixa.pas' {FormRelCaixa1},
  ServicoSolicitacaoWS1 in 'ServicoSolicitacaoWS1.pas',
  FichaClientes in 'FichaClientes.pas' {FormFichaClie},
  UnitProcBicoEnc_Temp in 'UnitProcBicoEnc_Temp.pas' {VendaBicoEnc_TempListFrm},
  VMXCCePrint in 'VMXCCePrint.pas',
  caixa_indisponivel in 'caixa_indisponivel.pas' {FRMCAIXA_INDISPONIVEL},
  relvendaspgto in 'relvendaspgto.pas' {FormVendasPagto},
  RelVendasPagto in 'RelVendasPagto.pas' {FormRelVendasPagto},
  ClientesaddPedido in 'ClientesaddPedido.pas' {FormAddClientesPedido},
  UResumo in 'UResumo.pas' {frmResumo},
  UCadConvenio in 'UCadConvenio.pas' {FrmCadConvenio},
  URelConv in 'URelConv.pas' {FrmRelConv},
  UQRelConvDet in 'UQRelConvDet.pas' {FrmQRelConvDetalhado},
  UQrelConvRes in 'UQrelConvRes.pas' {FrmQRelConvRes},
  URecConvenio in 'URecConvenio.pas' {FrmRecConvenio},
  URelRecebimento in 'URelRecebimento.pas' {FrmRelRecebimento},
  UConsConvenio in 'UConsConvenio.pas' {FrmConsConvenio},
  webcam2 in 'webcam2.pas' {frmwebcam2},
  atualizaimpostos in 'atualizaimpostos.pas' {FormImpostos},
  statusImpostos in 'statusImpostos.pas' {FormStatusI},
  fApartamento in 'fApartamento.pas' {F_Apartamento},
  fEntraHospede in 'fEntraHospede.pas' {F_EntraHospede},
  fFechamento in 'fFechamento.pas' {F_Fechamento},
  fLigacao in 'fLigacao.pas' {F_Ligacao},
  fListApartamento in 'fListApartamento.pas' {F_ListApartamento},
  fR3 in 'fR3.pas' {F_R3},
  FrFNRH in 'FrFNRH.pas' {F_rFNRH},
  fCategoria in 'fCategoria.pas' {F_Categoria},
  FpCategoria in 'FpCategoria.pas' {F_pCategoria},
  fListMovDia in 'fListMovDia.pas' {F_ListMovDia},
  fListControleDiario in 'fListControleDiario.pas' {F_ListControleDiario},
  fR1 in 'fR1.pas' {F_R1},
  fR2 in 'fR2.pas' {F_R2},
  fR4 in 'fR4.pas' {F_R4},
  fR5 in 'fR5.pas' {f_R5},
  fListApartOcupado in 'fListApartOcupado.pas' {F_ListApartOcupado},
  fListProduto in 'fListProduto.pas' {F_ListProduto},
  fListCategoria in 'fListCategoria.pas' {F_ListCategoria},
  FpApartamento in 'FpApartamento.pas' {F_pApartamento},
  fBar in 'fBar.pas' {F_Bar},
  caixa in 'caixa.pas' {frmcaixa},
  caixa_abertura in 'caixa_abertura.pas' {frmcaixa_abertura},
  caixa_fechamento in 'caixa_fechamento.pas' {frmcaixa_fechamento},
  caixa_ficha in 'caixa_ficha.pas' {frmcaixa_ficha},
  lista_caixa1 in 'lista_caixa1.pas' {frmlista_caixa1},
  caixa_abertura_individual in 'caixa_abertura_individual.pas' {frmcaixa_abertura_individual},
  usuario_log in 'usuario_log.pas' {frmusuario_log},
  afericao_rel in 'afericao_rel.pas' {FormRelAfercao},
  Relatorio_afericoes in 'Relatorio_afericoes.pas' {FormRelAfericoes},
  fLavagen in 'fLavagen.pas' {F_Lavagen},
  Agendamento in 'Agendamento.pas' {FormAgendamento},
  Relatriolmc in 'Relatriolmc.pas' {FormrelatLmc},
  ConsultaHospedagens in 'ConsultaHospedagens.pas' {FormConsHospedagens},
  venda_contasreceber in 'venda_contasreceber.pas' {frmHotel_contasreceber},
  hotel_tranferencias in 'hotel_tranferencias.pas' {FormTransfapto},
  UCartaCorrecao in 'UCartaCorrecao.pas' {frmCadCartaCorrecao},
  UCompensacao in 'UCompensacao.pas' {FormCompensacao},
  UGerenciamentoNFce in 'UGerenciamentoNFce.pas' {FrmGerenciamentoNFce},
  gerNFCe in 'gerNFCe.pas' {FormGeraNFCe},
  veiculo in 'veiculo.pas' {frmveiculo},
  xloc_veiculo in 'xloc_veiculo.pas' {frmxloc_veiculo},
  relveiculos in 'relveiculos.pas' {FormRelVeiculos},
  relatorioVeiculos in 'relatorioVeiculos.pas' {FormRelatoriosVeic},
  UmovAbastecidas in 'UmovAbastecidas.pas' {FormMovComb},
  URelAbastecimentos in 'URelAbastecimentos.pas' {FormRelAbastecimentos},
  URelatorioAbast in 'URelatorioAbast.pas' {FormRelatorioAbast},
  Urelboletos in 'Urelboletos.pas' {FormRelBoletos},
  lmc in 'lmc.pas' {frmLMC},
  xloc_LMC in 'xloc_LMC.pas' {frmxloc_LMC},
  xloc_combustivel in 'xloc_combustivel.pas' {frmxloc_combustivel},
  LMCImpressao in 'LMCImpressao.pas' {frmLMCImpressao},
  RelLMC in 'RelLMC.pas' {frmRelLmc},
  AberFechLMC in 'AberFechLMC.pas' {frmLivroLMC},
  TermoLMC in 'TermoLMC.pas' {frmTermoLMC},
  FRelChequesEmitidosporPeriodo_u in 'FRelChequesEmitidosporPeriodo_u.pas' {FRelChequesEmitidosporPeriodo},
  Urelcheques in 'Urelcheques.pas' {FormRelcheques},
  fListApartamento1 in 'fListApartamento1.pas' {F_ListApartamento1},
  troco in 'troco.pas' {frmvenda_troco},
  extenso1 in 'extenso1.pas',
  DUPLICATA80COL in 'DUPLICATA80COL.pas' {Formduplicata40col},
  UImportXML in 'UImportXML.pas' {ImportXML},
  UDialog in 'UDialog.pas' {frmDialog},
  Func in 'Func.pas',
  U_Principal in 'BaixarXMLNFeDLL\C�digo Fonte do Exemplo de Uso\U_Principal.pas' {F_downloadnfe},
  U_Carregando in 'BaixarXMLNFeDLL\C�digo Fonte do Exemplo de Uso\U_Carregando.pas' {F_Carregando},
  UDownloadXMLNFeDLL in 'BaixarXMLNFeDLL\C�digo Fonte do Exemplo de Uso\UDownloadXMLNFeDLL.pas',
  UTDownloadXMLNFeDLL in 'BaixarXMLNFeDLL\C�digo Fonte do Exemplo de Uso\UTDownloadXMLNFeDLL.pas',
  utils in 'BaixarXMLNFeDLL\C�digo Fonte do Exemplo de Uso\utils.pas',
  EditTranparente in '..\Componentes\editTransp\EditTranparente.pas',
  produto_serial_ficha in 'produto_serial_ficha.pas' {frmProduto_serial_ficha},
  Produtos_grade in 'Produtos_grade.pas' {FormGrade},
  gerNFSe in 'gerNFSe.pas' {FormGeraNFSe},
  Urelgrupotrib in 'Urelgrupotrib.pas' {FormRelGrupoT},
  URelatorioGtrib in 'URelatorioGtrib.pas' {FormRelatorioGtrib},
  Uextratoestoque in 'Uextratoestoque.pas' {FormLogEstoque},
  Uextratoproduto in 'Uextratoproduto.pas' {FormLogProduto},
  contasreceber_ficha_varios in 'contasreceber_ficha_varios.pas' {frmcontasreceber_ficha_varios},
  UrelInventarioCusto in 'UrelInventarioCusto.pas' {FormRel_custoMedio},
  Urecebidas in 'Urecebidas.pas' {FormRecebido},
  Ufretes in 'Ufretes.pas' {FormFretes},
  UminutaFrete in 'UminutaFrete.pas' {FormMinutaFrete},
  UpagarFretes in 'UpagarFretes.pas' {FormPagarFretes},
  fretes_pgto in 'fretes_pgto.pas' {FormFretes_pgto},
  fretes_cheque in 'fretes_cheque.pas' {FormFretes_cheque},
  chequefrete in 'chequefrete.pas' {FormChequeFrete},
  contaspagar in 'contaspagar.pas' {frmcontaspagar},
  contaspagar_cheque in 'contaspagar_cheque.pas' {frmcontaspagar_cheque},
  contaspagar_data in 'contaspagar_data.pas' {frmcontaspagar_data},
  contaspagar_ficha in 'contaspagar_ficha.pas' {frmcontaspagar_ficha},
  contaspagar_pgto in 'contaspagar_pgto.pas' {frmcontaspagar_pgto},
  contaspagar_nf in 'contaspagar_nf.pas' {frmcontaspagar_nf},
  lista_pagar2 in 'lista_pagar2.pas' {frmlista_pagar2},
  contaspagar_fichaalteracao in 'contaspagar_fichaalteracao.pas' {frmcontaspagar_fichaAlteracao},
  lista_funcionario2 in 'lista_funcionario2.pas' {frmlista_funcionario2},
  xloc_funcionario in 'xloc_funcionario.pas' {frmxloc_Funcionario},
  lista_frete2 in 'lista_frete2.pas' {formlista_frete},
  lista_frete3 in 'lista_frete3.pas' {formlista_acertos},
  Constransportador in 'Constransportador.pas' {FormConsTransp},
  Uchequeavu in 'Uchequeavu.pas' {FormChequeAvu},
  Lista_comissao in 'Lista_comissao.pas' {FormComissaoCategoria},
  Uincplcontas in 'Uincplcontas.pas' {FormLancPlcontas},
  UMesas in 'UMesas.pas' {FrmMesas},
  UGrupoTeclas in 'UGrupoTeclas.pas' {frmGrupoTeclas},
  UConsMesasAbertas in 'UConsMesasAbertas.pas' {FrmConsMesasAbertas},
  UTransfMesa in 'UTransfMesa.pas' {FrmTransfMesa},
  UAdiantamentoMesas in 'UAdiantamentoMesas.pas' {frmAdiantamentosMesa},
  UFBalanca in 'UFBalanca.pas' {frmBalanca},
  Uextornofretes in 'Uextornofretes.pas' {FormExtornoFretes},
  Valecomb in 'Valecomb.pas' {FormValeComb},
  xloc_caixa in 'xloc_caixa.pas' {FormConsfechamento},
  Urlelaboletos in 'Urlelaboletos.pas' {FormRelaBoletos},
  CRCrediarioconv in 'CRCrediarioconv.pas' {FormCRCrediarioConv},
  compra_menu in 'compra_menu.pas' {frmcompra_menu},
  compra in 'compra.pas' {frmcompra},
  xloc_empresa in 'xloc_empresa.pas' {frmxloc_empresa},
  xloc_fornecedor in 'xloc_fornecedor.pas' {frmxloc_fornecedor},
  xloc_cfop in 'xloc_cfop.pas' {frmxloc_cfop},
  xloc_cst in 'xloc_cst.pas' {frmxloc_cst},
  produto_preco in 'produto_preco.pas' {frmproduto_preco},
  produto_gradeF in 'produto_gradeF.pas' {frmproduto_gradeF},
  produto_rentabilidade in 'produto_rentabilidade.pas' {frmproduto_rentabilidade},
  produto_serial_entrada in 'produto_serial_entrada.pas' {frmproduto_serial_entrada},
  lista_notaentrada in 'lista_notaentrada.pas' {frmlista_notaentrada},
  compra_item in 'compra_item.pas' {frmcompra_item},
  produto_serial in 'produto_serial.pas' {frmproduto_serial},
  importa_nfe in 'importa_nfe.pas' {frmimporta_nfe},
  UFuncoes in 'UFuncoes.pas',
  lista_notacompra in 'lista_notacompra.pas' {frmlista_notacompra},
  fornecedor_codigo in 'fornecedor_codigo.pas' {frmfornecedor_codigo},
  os_impressao in 'os_impressao.pas' {frmos_impressao},
  SelecTanques in 'SelecTanques.pas' {FormSelectanques},
  Uaniversariantes in 'Uaniversariantes.pas' {FormAniver},
  contaspagar_Ext in 'contaspagar_Ext.pas' {FormContasPagar_ext},
  UInventario_farma in 'UInventario_farma.pas' {FormInventario_farma},
  UrelNcmInvalidos in 'UrelNcmInvalidos.pas' {FormNcmInv},
  URelatorioNotas in 'URelatorioNotas.pas' {FormRel_VendasNotas},
  Urelvendasnotas in 'Urelvendasnotas.pas' {FormRelVendaNotas},
  Urelvendasresumo in 'Urelvendasresumo.pas' {FormRelVendaResumo},
  UrelVendas_Resumo in 'UrelVendas_Resumo.pas' {FormRel_vendasResumo},
  Ucomissao_resumo in 'Ucomissao_resumo.pas' {FormRel_Comissao_resumo},
  ClientesContato in 'ClientesContato.pas' {FormClientesContato},
  ClientesDocumento in 'ClientesDocumento.pas' {FormClientesDocumento},
  ClientesReferencia in 'ClientesReferencia.pas' {FormClientesReferencia},
  ClientesProfissao in 'ClientesProfissao.pas' {FormClienteProfissao},
  lista_planocontas2 in 'lista_planocontas2.pas' {frmlista_planocontas2},
  lista_imovel in 'lista_imovel.pas' {frmlista_imovel},
  uDMMovimentacao in 'uDMMovimentacao.pas' {DMMovimentacao: TDataModule},
  LancamentoContrato in 'LancamentoContrato.pas' {FrmLancamentoContrato},
  TitulosBancarios in 'TitulosBancarios.pas' {FrmTitulosBancarios},
  UProdutosCaixa in 'UProdutosCaixa.pas' {FormProdutosCaixa},
  ValeFuncionario in 'ValeFuncionario.pas' {FrmValeFuncionario},
  CONSULTACEST in 'CONSULTACEST.pas' {FormConsCest},
  UrelCestInvalidos in 'UrelCestInvalidos.pas' {FormCestInv},
  lista_contabil in 'lista_contabil.pas' {frmlista_Contabil},
  loc_centrocusto in 'loc_centrocusto.pas' {frmloc_centro},
  PesquisaImoveis in 'PesquisaImoveis.pas' {FPesquisaImovel},
  urelextrato in 'urelextrato.pas' {FormExtImovel},
  FormConsultaCPF_CNPJ in 'FormConsultaCPF_CNPJ.pas' {FConsultaCPF_CNPJ},
  FormRelatorioProduto in 'FormRelatorioProduto.pas' {FRelatorioProduto},
  UConsDiferencas in 'UConsDiferencas.pas' {FormConsDiferencas},
  FrmOS_AUTO in 'FrmOS_AUTO.pas' {FOS_AUTO},
  contacorrente_lancamento in 'contacorrente_lancamento.pas' {frmcontacorrente_lancamento},
  FrmComposicao in 'FrmComposicao.pas' {FComposicao},
  FrmComposicaoItens in 'FrmComposicaoItens.pas' {FComposicaoItens},
  FrmAgendaOdonto in 'FrmAgendaOdonto.pas' {FAgendaOdonto},
  FrmBaixaPlaquetasMadeireira in 'FrmBaixaPlaquetasMadeireira.pas' {FBaixaPlaquetasMadeireira},
  FrmPatioMadeireira in 'FrmPatioMadeireira.pas' {FPatioMadeireira},
  FrmEntradaTorasMadeireira in 'FrmEntradaTorasMadeireira.pas' {FEntradaTorasMadeireira},
  FrmCadastroSNRHOS in 'FrmCadastroSNRHOS.pas' {FCadastroSNRHOS},
  UntHotelUp in 'UntHotelUp.pas',
  FrmConsultaPreVenda in 'FrmConsultaPreVenda.pas' {FConsultaPreVenda},
  FrmApagarOrcamentoCondicional in 'FrmApagarOrcamentoCondicional.pas' {FApagaOrcamentoCondicional},
  FrmRelContasPagarPorCliente in 'FrmRelContasPagarPorCliente.pas' {FRelContasPagarPorCliente},
  FrmRelNotaFiscal in 'FrmRelNotaFiscal.pas' {FRelNotaFiscal},
  ThreadEnviarVendaEmail in 'ThreadEnviarVendaEmail.pas',
  FrmEnviaParaEmail in 'FrmEnviaParaEmail.pas' {FEnviaParaEmail},
  FormRelatorioEstoqueProduto in 'FormRelatorioEstoqueProduto.pas' {FRelatorioEstoqueProduto},
  FrmRelatorioEstoque in 'FrmRelatorioEstoque.pas' {FRelatorioEstoque},
  frmRelatorioValeFuncionario in 'frmRelatorioValeFuncionario.pas' {FRelatorioValeFuncionario},
  FrmNCM in 'FrmNCM.pas' {FNCM},
  FrmProdutosReferenciaFornecedores in 'FrmProdutosReferenciaFornecedores.pas' {FProdutosReferenciaFornecedores},
  frmCompraMadeira in 'frmCompraMadeira.pas' {FCompraMadeira},
  frmCadastroAlteracaoComprasMadeira in 'frmCadastroAlteracaoComprasMadeira.pas' {FCadastroAlteracaoComprasMadeiras},
  frmOrigemFlorestal in 'frmOrigemFlorestal.pas' {FOrigemFlorestal},
  frmPatios in 'frmPatios.pas' {FPatios},
  frmRelatorioInventarioCategoriaDiversas in 'frmRelatorioInventarioCategoriaDiversas.pas' {FRelatorioInventarioCategoriaDiversas},
  frmRelatorioInventarioGruposDiversos in 'frmRelatorioInventarioGruposDiversos.pas' {FRelatorioInventarioGruposDiversos},
  Empresa in 'Empresa.pas' {FormEmpresa},
  Biblioteca in 'Biblioteca.pas',
  ufrmNfeImportar in 'ufrmNfeImportar.pas' {frmNfeImportar},
  wcrypt2 in 'wcrypt2.pas';

{$R *.res}

var
  FormSplash: TFormSplash;
  updateAtual,updateDrop: string;
  qrSQL: TFDQuery;
  DataSped: Integer;
begin
 { if TBiblioteca.ProcessoExiste('SiaceUpdate.exe') = True then
  begin
    Application.Terminate;
    Abort;
  end;     }

  if FileExists(PathSystem + '\capicom.dll') and
    FileExists(PathSystem + '\libeay32.dll') and
    FileExists(PathSystem + '\msxml5.dll') and
    FileExists(PathSystem + '\msxml5r.dll') and
    FileExists(PathSystem + '\ssleay32.dll')  then else
    ShellExecute(0, 'runas', PChar(LocalDoExe + '\InstalarDLL.exe'), nil, nil, SW_SHOWNORMAL);


  FormSplash := TFormSplash.Create(Application);
  try
    FormSplash.Show;
    FormSplash.Update;

    FormSplash.Repaint;
    Sleep(100); //O Sleep serve para o programa dar uma pausa no processamento...
    FormSplash.lblTitle.Caption:= 'Verificando arquivos...';
    FormSplash.Gauge.Progress:= 25;
    FormSplash.Update;
    Sleep(200);

    //VerificarArquivos; //Executa o procedimento para verificar arquivos...
    FormSplash.lblTitle.Caption := 'Verificando registro...';
    FormSplash.Gauge.Progress:= 45;
    FormSplash.Update;
    Sleep(200);

    //VerificarRegistro; //Executa o procedimento para verificar se o programa est� registrado...
    FormSplash.lblTitle.Caption := 'Criando alias...';
    FormSplash.Gauge.Progress:= 60;
    FormSplash.Update;
    Sleep(250);

    //CriarAlias; //Cria o alias automaticamente...
    FormSplash.lblTitle.Caption := 'Iniciando formul�rio principal...';
    FormSplash.Gauge.Progress:= 80;
    FormSplash.Update;
    Sleep(300);

    FormSplash.lblTitle.Caption := 'Verificando usu�rio...';
    FormSplash.Gauge.Progress:= 86;
    FormSplash.Update;
    Sleep(100);

    FormSplash.lblTitle.Caption := 'Registrando...';
    FormSplash.Gauge.Progress:= 90;
    FormSplash.Update;
    Sleep(100);

    FormSplash.lblTitle.Caption := 'Licenciado para uso Pr�prio...';
    FormSplash.Gauge.Progress:= 93;
    FormSplash.Update;
    Sleep(100);

    FormSplash.lblTitle.Caption := 'Verificando datas...';
    FormSplash.Gauge.Progress:= 94;
    FormSplash.Update;
    Sleep(100);

    //ShareWare; //Verifica o tempo de uso do programa...
    FormSplash.lblTitle.Caption := 'Iniciando aplicativo...';
    FormSplash.Gauge.Progress:= 96;
    FormSplash.Update;
    Sleep(150);

    FormSplash.lblTitle.Caption := 'Verificando Atualiza��es';
    FormSplash.Gauge.Progress:= 100;
    FormSplash.Update;
    Sleep(300);

//    if UpperCase(trim(TBiblioteca.LerIni('Siace.ini', 'DADOS', 'DATABASE'))) = UpperCase('C:\siace\siace.gdb') then
//    begin
//      updateAtual:= TBiblioteca.GetBuildInfo('C:\siace\SIACE.exe');
//      updateDrop:= TBiblioteca.VerificarVersaoDropBox;
//      
//      if updateAtual < updateDrop then
//      begin
//        if Application.MESSAGEBOX('Existe uma nova atualiza��o essencial para o bom funcionamento do sistema.' +
//           'Caso este seja o SERVIDOR, n�o ser� possivel obter acesso de outra maquina.',
//         'Atualiza��o Obrigat�ria!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
//        begin
//          ShellExecute(HWND_DESKTOP,'open', PChar('C:\siace\SiaceUpdate.exe'), nil, nil, SW_SHOWNORMAL);
//          Application.Terminate;
//        end;
//      end;
//    end;

    FormSplash.Refresh;

    Application.Title := 'SIACE - Sistema Integrado de Automa��o Comercial';
    Application.ProcessMessages;
    Application.CreateForm(TDM, DM);
//    if UpperCase(trim(TBiblioteca.LerIni('Siace.ini', 'DADOS', 'DATABASE'))) <> UpperCase('C:\siace\siace.gdb') then
//    begin
//      qrSQL:= TFDQuery.Create(nil);
//      qrSQL.Connection:= DM.Coneccao;
//      qrSQL.SQL.Add('SELECT FIRST 1 * FROM VERSAO_SIACE WHERE STATUS = ''S'' ORDER BY NUMERO DESC');
//      qrSQL.Open;
//
//      if not qrSQL.IsEmpty then
//      begin
//        updateAtual:= TBiblioteca.GetBuildInfo('C:\siace\SIACE.exe');
//        updateDrop:= qrSQL.FieldByName('NUMERO').AsString;
//
//        if updateAtual < updateDrop then
//        begin
//          if Application.MESSAGEBOX('Existe uma nova atualiza��o essencial para o bom funcionamento do sistema.' +
//             'Caso este seja o SERVIDOR, n�o ser� possivel obter acesso de outra maquina.',
//           'Atualiza��o Obrigat�ria!', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
//          begin
//            ShellExecute(HWND_DESKTOP,'open', PChar('C:\siace\SiaceUpdate.exe'), nil, nil, SW_SHOWNORMAL);
//            Application.Terminate;
//          end;
//        end;
//      end;
//
//      FreeAndNil(qrSQL);
//    end;

    if uppercase(trim(tbiblioteca.lerini('SIACE.INI', 'DADOS', 'SPED'))) = 'TRUE' then
    begin
      if uppercase(trim(tbiblioteca.lerini('SIACE.INI', 'DADOS', 'DATABASE'))) = uppercase('C:\StartNet_Sistemas\STARTNET.FDB') then
      begin
        datasped:= strtointdef(formatdatetime('dd',now),0);
        if datasped > 5 then
        begin
          try
            try
              qrsql:= TFDquery.create(nil);
              qrsql.connection:= dm.coneccao;
              qrsql.sql.add('select count(*) as sped from efd where referencia = :referencia');
              qrsql.parambyname('referencia').asstring:= formatdatetime('yyyymm',now);
              qrsql.open;

              if qrsql.fieldbyname('sped').asinteger = 0 then
                shellexecute(hwnd_desktop,'open', pchar('c:\siace\efdsiace.exe'), nil, nil, sw_shownormal);
            except
              shellexecute(hwnd_desktop,'open', pchar('c:\siace\efdsiace.exe'), nil, nil, sw_shownormal);
            end;
          finally
            freeandnil(qrsql);
          end;
        end;
      end;
    end;

  Application.CreateForm(TDMC, DMC);
  Application.CreateForm(TDMR, DMR);
  Application.CreateForm(TDMC2, DMC2);
  Application.CreateForm(TDMB, DMB);
  Application.CreateForm(TDMC3, DMC3);
  Application.CreateForm(TDMC4, DMC4);
  Application.CreateForm(TDMC5, DMC5);
  Application.CreateForm(TDMOS, DMOS);
  Application.CreateForm(TDMCOB, DMCOB);
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TDMP, DMP);
  Application.CreateForm(TDMMovimentacao, DMMovimentacao);
  formSplash.Hide;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
  finally
    FormSplash.Free;
  end;
end.

