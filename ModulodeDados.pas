unit ModulodeDados;

interface

uses
  SysUtils, Windows, Messages, Classes, Controls, FMTBcd, DBClient, SimpleDS, SqlExpr,
  Provider, Dialogs,  IniFiles, Forms, Graphics, StrUtils, TypInfo, ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,  StdCtrls,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Error,
  FireDAC.VCLUI.Wait, FireDAC.VCLUI.Async, FireDAC.VCLUI.Script, Grids, DBGrids,
  FireDAC.VCLUI.Login, ACBrDFe, ACBrMail, ACBrBase, ACBrECF, FireDAC.Comp.UI,
  FireDAC.Phys.IB, FireDAC.Comp.Client,  DB, ACBrEAD,  frxExportHTML, frxExportXLS,
  frxExportRTF, frxExportImage, frxExportText, frxClass, frxExportPDF, frxDBSet,
  FireDAC.Comp.DataSet, frxExportMail, jpeg, ACBrUtil,  XMLIntf, XMLDoc, zlib, ShellAPI,
  pcnConversao, pcnConversaoNFe, ACBrDFeUtil, acAlphaImageList,   ACBrNFe, FireDAC.Phys.IBDef,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, Data.DBXFirebird,   frxExportBaseDialog,
  ACBrDFeConfiguracoes, pcnAuxiliar,  ACBrDFeSSL,  System.Math, blcksock,
  ACBrDANFCeFortesFrA4,  ACBrNFeDANFeRLClass, Tlhelp32, FireDAC.Phys.IBBase,
  ACBrNFeDANFEClass, ACBrDFeReport, ACBrDFeDANFeReport, frxExportDOCX, MidasLib,
  frxExportXML, ACBrNFeDANFEFR, ACBrIntegrador, ACBrNFeDANFeESCPOS,
  ACBrPosPrinter, ACBrMDFeDAMDFeClass, ACBrMDFeDAMDFEFR, ACBrMDFe;

type
    TDM = class(TDataModule)
    SQLC: TSQLConnection;
    SPC_Usuarios: TSQLStoredProc;
    SDS_Usuarios: TSimpleDataSet;
    DTS_Usuarios: TDataSource;
    DTS_Clientes: TDataSource;
    DTS_Empresa: TDataSource;
    DTS_Unidades: TDataSource;
    DTS_Marcas: TDataSource;
    DTS_Grupos: TDataSource;
    SDS_Fornecedores: TFDQuery;
    DTS_Fornecedores: TDataSource;
    DTS_Bancos: TDataSource;
    DTS_Agencias: TDataSource;
    SDS_SubGrupos: TSimpleDataSet;
    DTS_SubGrupos: TDataSource;
    SDS_SubGruposCODIGO: TIntegerField;
    SDS_SubGruposNOME: TStringField;
    SDS_SubGruposGRUPO: TStringField;
    SDS_SubGruposLINK: TIntegerField;
    SDS_SubGruposUSERCAD: TStringField;
    SDS_SubGruposDATACAD: TDateField;
    SPC_NotasFiscais: TSQLStoredProc;
    DTS_NotasFiscais: TDataSource;
    SPC_NotasFiscaisItens: TSQLStoredProc;
    DTS_NotasFiscaisItens: TDataSource;
    SPC_Retorno: TSQLStoredProc;
    SDS_Retorno: TSimpleDataSet;
    DTS_Retorno: TDataSource;
    SDS_RetornoCODIGO: TIntegerField;
    SDS_RetornoDESCRICAO: TStringField;
    SDS_RetornoUSERCAD: TStringField;
    SDS_RetornoDATACAD: TDateField;
    SPC_ContasPagar: TSQLStoredProc;
    SDS_ContasPagar: TSimpleDataSet;
    DTS_ContasPagar: TDataSource;
    SDS_Contas_Pagar: TSimpleDataSet;
    DTS_Contas_Pagar: TDataSource;
    SDS_ContasPagarCODIGO: TIntegerField;
    SDS_ContasPagarDATA_CADASTRO: TDateField;
    SDS_ContasPagarDATA_EMISSAO: TDateField;
    SDS_ContasPagarDATA_VENCIMENTO: TDateField;
    SDS_ContasPagarUSUARIO_CADASTRO: TStringField;
    SDS_ContasPagarTIPO_DOCUMENTO: TStringField;
    SDS_ContasPagarCODIGO_FORNECEDOR: TIntegerField;
    SDS_ContasPagarFORNECEDOR: TStringField;
    SDS_ContasPagarVALOR_DOCUMENTO: TFMTBCDField;
    SDS_ContasPagarVALOR_PARCELA: TFMTBCDField;
    SDS_ContasPagarN_DOCUMENTO: TStringField;
    SDS_ContasPagarPARCELA: TStringField;
    SDS_ContasPagarSERIE: TStringField;
    SDS_Contas_PagarCODIGO: TIntegerField;
    SDS_Contas_PagarCODIGO_GERA: TIntegerField;
    SDS_Contas_PagarDATA_CADASTRO: TDateField;
    SDS_Contas_PagarDATA_EMISSAO: TDateField;
    SDS_Contas_PagarDATA_VENCIMENTO: TDateField;
    SDS_Contas_PagarDATA_BAIXA: TDateField;
    SDS_Contas_PagarUSUARIO_CADASTRO: TStringField;
    SDS_Contas_PagarUSUARIO_AUTORIZACAO: TStringField;
    SDS_Contas_PagarUSUARIO_BAIXA: TStringField;
    SDS_Contas_PagarTIPO_DOCUMENTO: TStringField;
    SDS_Contas_PagarFORNECEDOR: TStringField;
    SDS_Contas_PagarDESCONTO: TFMTBCDField;
    SDS_Contas_PagarMULTA: TFMTBCDField;
    SDS_Contas_PagarJUROS: TFMTBCDField;
    SDS_Contas_PagarVALOR_DOCUMENTO: TFMTBCDField;
    SDS_Contas_PagarVALOR_PARCELA: TFMTBCDField;
    SDS_Contas_PagarVALOR_BAIXA: TFMTBCDField;
    SDS_Contas_PagarN_DOCUMENTO: TStringField;
    SDS_Contas_PagarSERIE: TStringField;
    SDS_Contas_PagarAUTORIZACAO: TStringField;
    SDS_ContasPagarDIA_VENCIMENTO: TStringField;
    DTS_CP_Autorizar: TDataSource;
    SDS_CP_Autorizar: TSimpleDataSet;
    SDS_CP_AutorizarCODIGO: TIntegerField;
    SDS_CP_AutorizarDATA_CADASTRO: TDateField;
    SDS_CP_AutorizarDATA_EMISSAO: TDateField;
    SDS_CP_AutorizarDATA_VENCIMENTO: TDateField;
    SDS_CP_AutorizarUSUARIO_CADASTRO: TStringField;
    SDS_CP_AutorizarTIPO_DOCUMENTO: TStringField;
    SDS_CP_AutorizarFORNECEDOR: TStringField;
    SDS_CP_AutorizarDESCONTO: TFMTBCDField;
    SDS_CP_AutorizarMULTA: TFMTBCDField;
    SDS_CP_AutorizarJUROS: TFMTBCDField;
    SDS_CP_AutorizarVALOR_DOCUMENTO: TFMTBCDField;
    SDS_CP_AutorizarVALOR_PARCELA: TFMTBCDField;
    SDS_CP_AutorizarN_DOCUMENTO: TStringField;
    SDS_CP_AutorizarPARCELA: TStringField;
    SDS_CP_AutorizarSERIE: TStringField;
    SDS_CP_AutorizarAUTORIZACAO: TStringField;
    SDS_CP_AutorizarCODIGO_GERA: TIntegerField;
    SDS_CP_AutorizarDATA_BAIXA: TDateField;
    SDS_CP_AutorizarUSUARIO_AUTORIZACAO: TStringField;
    SDS_CP_AutorizarUSUARIO_BAIXA: TStringField;
    SDS_CP_AutorizarVALOR_BAIXA: TFMTBCDField;
    DTS_CP_Baixar: TDataSource;
    SDS_CP_Baixar: TSimpleDataSet;
    SDS_CP_BaixarCODIGO_GERA: TIntegerField;
    SDS_CP_BaixarCODIGO: TIntegerField;
    SDS_CP_BaixarDATA_CADASTRO: TDateField;
    SDS_CP_BaixarDATA_EMISSAO: TDateField;
    SDS_CP_BaixarDATA_VENCIMENTO: TDateField;
    SDS_CP_BaixarDATA_BAIXA: TDateField;
    SDS_CP_BaixarUSUARIO_CADASTRO: TStringField;
    SDS_CP_BaixarUSUARIO_AUTORIZACAO: TStringField;
    SDS_CP_BaixarUSUARIO_BAIXA: TStringField;
    SDS_CP_BaixarTIPO_DOCUMENTO: TStringField;
    SDS_CP_BaixarFORNECEDOR: TStringField;
    SDS_CP_BaixarDESCONTO: TFMTBCDField;
    SDS_CP_BaixarMULTA: TFMTBCDField;
    SDS_CP_BaixarJUROS: TFMTBCDField;
    SDS_CP_BaixarVALOR_DOCUMENTO: TFMTBCDField;
    SDS_CP_BaixarVALOR_PARCELA: TFMTBCDField;
    SDS_CP_BaixarVALOR_BAIXA: TFMTBCDField;
    SDS_CP_BaixarN_DOCUMENTO: TStringField;
    SDS_CP_BaixarPARCELA: TStringField;
    SDS_CP_BaixarSERIE: TStringField;
    SDS_CP_BaixarAUTORIZACAO: TStringField;
    DTS_PRODUTOS: TDataSource;
    DTS_CONFIGURACOES: TDataSource;
    SDS_Conta_Bancaria: TSimpleDataSet;
    DTS_Conta_Bancaria: TDataSource;
    SDS_Conta_BancariaCODIGO: TIntegerField;
    SDS_Conta_BancariaBANCO: TStringField;
    SDS_Conta_BancariaTITULAR: TStringField;
    SDS_Conta_BancariaAGENCIA: TStringField;
    SDS_Conta_BancariaCONTA: TStringField;
    SDS_Conta_BancariaTIPO: TStringField;
    SDS_Conta_BancariaUSERCAD: TStringField;
    SDS_Conta_BancariaDATACAD: TDateField;
    SDS_UsuariosCODIGO: TIntegerField;
    SDS_UsuariosUSUARIO: TStringField;
    SDS_UsuariosSENHA: TStringField;
    SDS_UsuariosDATACADASTRO: TDateField;
    SDS_UsuariosNOME: TStringField;
    SDS_UsuariosFUNCAO: TStringField;
    SDS_UsuariosEXCLUIR: TStringField;
    SDS_UsuariosEDITAR: TStringField;
    SDS_UsuariosINSERIR: TStringField;
    SDS_UsuariosS01: TStringField;
    SDS_UsuariosS02: TStringField;
    SDS_UsuariosS03: TStringField;
    SDS_UsuariosS04: TStringField;
    SDS_UsuariosS05: TStringField;
    SDS_UsuariosS06: TStringField;
    SDS_UsuariosS07: TStringField;
    SDS_UsuariosS08: TStringField;
    SDS_UsuariosS09: TStringField;
    SDS_UsuariosS10: TStringField;
    SDS_UsuariosS11: TStringField;
    SDS_UsuariosS12: TStringField;
    SDS_UsuariosS13: TStringField;
    SDS_UsuariosS14: TStringField;
    SDS_UsuariosS15: TStringField;
    SDS_UsuariosS16: TStringField;
    SDS_UsuariosS17: TStringField;
    SDS_UsuariosS18: TStringField;
    SDS_UsuariosS19: TStringField;
    SDS_UsuariosS20: TStringField;
    SDS_UsuariosS21: TStringField;
    SDS_UsuariosS22: TStringField;
    SDS_UsuariosS23: TStringField;
    SDS_UsuariosS24: TStringField;
    SDS_UsuariosS25: TStringField;
    SDS_UsuariosS26: TStringField;
    SDS_UsuariosS27: TStringField;
    SDS_UsuariosS28: TStringField;
    SDS_UsuariosS29: TStringField;
    SDS_UsuariosS30: TStringField;
    SDS_UsuariosS31: TStringField;
    SDS_UsuariosS32: TStringField;
    SDS_UsuariosS33: TStringField;
    SDS_UsuariosS34: TStringField;
    SDS_UsuariosS35: TStringField;
    SDS_UsuariosS36: TStringField;
    SDS_UsuariosS37: TStringField;
    SDS_UsuariosS38: TStringField;
    SDS_UsuariosS39: TStringField;
    SDS_UsuariosS40: TStringField;
    SDS_UsuariosS41: TStringField;
    SDS_UsuariosS42: TStringField;
    SDS_UsuariosS43: TStringField;
    SDS_UsuariosS44: TStringField;
    SDS_UsuariosS45: TStringField;
    SDS_UsuariosS46: TStringField;
    SDS_UsuariosS47: TStringField;
    SDS_UsuariosS48: TStringField;
    SDS_UsuariosS49: TStringField;
    SDS_UsuariosS50: TStringField;
    SDS_UsuariosS51: TStringField;
    SDS_UsuariosS52: TStringField;
    SDS_UsuariosS53: TStringField;
    SDS_UsuariosS54: TStringField;
    SDS_UsuariosS55: TStringField;
    SDS_UsuariosS56: TStringField;
    SDS_UsuariosS57: TStringField;
    SDS_UsuariosS58: TStringField;
    SDS_UsuariosS59: TStringField;
    SDS_UsuariosS60: TStringField;
    SDS_UsuariosS61: TStringField;
    SDS_UsuariosS62: TStringField;
    SDS_UsuariosS63: TStringField;
    SDS_UsuariosS64: TStringField;
    SDS_UsuariosS65: TStringField;
    SDS_UsuariosS66: TStringField;
    SDS_UsuariosS67: TStringField;
    SDS_UsuariosS68: TStringField;
    SDS_UsuariosS69: TStringField;
    SDS_UsuariosS70: TStringField;
    SDS_UsuariosS71: TStringField;
    SDS_UsuariosS72: TStringField;
    SDS_UsuariosS73: TStringField;
    SDS_UsuariosS74: TStringField;
    SDS_UsuariosS75: TStringField;
    SDS_UsuariosS76: TStringField;
    SDS_UsuariosS77: TStringField;
    SDS_UsuariosS78: TStringField;
    SDS_UsuariosS79: TStringField;
    SDS_UsuariosS80: TStringField;
    SDS_UsuariosS81: TStringField;
    SDS_UsuariosS82: TStringField;
    SDS_UsuariosS83: TStringField;
    SDS_UsuariosS84: TStringField;
    SDS_UsuariosS85: TStringField;
    SDS_UsuariosS86: TStringField;
    SDS_UsuariosS87: TStringField;
    SDS_UsuariosS88: TStringField;
    SDS_UsuariosS89: TStringField;
    SDS_UsuariosS90: TStringField;
    SDS_UsuariosS91: TStringField;
    SDS_UsuariosS92: TStringField;
    SDS_UsuariosS93: TStringField;
    SDS_UsuariosS94: TStringField;
    SDS_UsuariosS95: TStringField;
    SDS_UsuariosS96: TStringField;
    SDS_UsuariosS97: TStringField;
    SDS_UsuariosS98: TStringField;
    SDS_UsuariosS99: TStringField;
    SDS_UsuariosS100: TStringField;
    SDS_UsuariosS101: TStringField;
    SDS_UsuariosS102: TStringField;
    SDS_UsuariosS103: TStringField;
    SDS_UsuariosS104: TStringField;
    SDS_UsuariosS105: TStringField;
    SDS_UsuariosS106: TStringField;
    SDS_UsuariosS107: TStringField;
    SDS_UsuariosS108: TStringField;
    SDS_UsuariosS109: TStringField;
    SDS_UsuariosS110: TStringField;
    SDS_UsuariosS111: TStringField;
    SDS_UsuariosS112: TStringField;
    SDS_UsuariosS113: TStringField;
    SDS_UsuariosS114: TStringField;
    SDS_UsuariosS115: TStringField;
    SDS_UsuariosS116: TStringField;
    SDS_UsuariosS117: TStringField;
    SDS_UsuariosS118: TStringField;
    SDS_UsuariosS119: TStringField;
    SDS_UsuariosS120: TStringField;
    DTS_PlContas: TDataSource;
    SDS_PlContas: TSimpleDataSet;
    SDS_PlContasCODIGO: TIntegerField;
    SDS_PlContasNOME: TStringField;
    SDS_PlContasUSERCAD: TStringField;
    SDS_PlContasDATACAD: TDateField;
    SDS_Contas_PagarOBSERVACOES: TBlobField;
    SDS_ContasPagarTIPO: TStringField;
    SDS_Contas_PagarTIPO: TStringField;
    SDS_Contas_PagarPARCELA: TStringField;
    SDS_CP_AutorizarOBSERVACOES: TBlobField;
    SDS_CP_AutorizarTIPO: TStringField;
    SDS_CP_BaixarOBSERVACOES: TBlobField;
    SDS_CP_BaixarTIPO: TStringField;
    SPC_CondPagamento: TSQLStoredProc;
    SDS_CondPagamento: TSimpleDataSet;
    DTS_CondPagamento: TDataSource;
    SDS_CondPagamentoCODIGO: TIntegerField;
    SDS_CondPagamentoNUMERO_PAR: TIntegerField;
    SDS_CondPagamentoVARIACAO_DIAS: TIntegerField;
    SDS_CondPagamentoPIMEIRA_PAR: TIntegerField;
    SDS_CondPagamentoMEDIA_DIAS: TIntegerField;
    SDS_CondPagamentoJUROS_BASE: TFMTBCDField;
    SDS_CondPagamentoTIPO_PAGAMENTO: TStringField;
    SDS_CondPagamentoSTATUS: TStringField;
    SDS_CondPagamentoUSUARIO: TStringField;
    SDS_CondPagamentoDATA: TDateField;
    SDS_CondPagamentoDESCRICAO: TStringField;
    SDS_SECCAO: TSimpleDataSet;
    DTS_SECCAO: TDataSource;
    SDS_SECCAOCODIGO: TIntegerField;
    SDS_SECCAODESCRICAO: TStringField;
    SDS_UsuariosS121: TStringField;
    SDS_SECCAOUSERCAD: TStringField;
    SDS_SECCAODATACAD: TDateField;
    SDS_CATEGORIA: TSimpleDataSet;
    DTS_CATEGORIA: TDataSource;
    SDS_CATEGORIACODIGO: TIntegerField;
    SDS_CATEGORIADESCRICAO: TStringField;
    SDS_CATEGORIAPERC_AVISTA: TFMTBCDField;
    SDS_CATEGORIAPERC_PRAZO: TFMTBCDField;
    SDS_CATEGORIAUSERCAD: TStringField;
    SDS_CATEGORIADATACAD: TDateField;
    SDS_UsuariosS122: TStringField;
    SDS_AGREGADOS: TSimpleDataSet;
    SDS_AGREGADOSCODIGO_PROD: TIntegerField;
    SDS_AGREGADOSAGREGADOS: TStringField;
    SDS_AGREGADOSUSERCAD: TStringField;
    SDS_AGREGADOSDATACAD: TDateField;
    SDS_AGREGADOSCODIGO_AGREG: TIntegerField;
    DTS_AGREGADOS: TDataSource;
    SPC_AGREGADOS: TSQLStoredProc;
    DTS_SIMILARES: TDataSource;
    SPC_SIMILARES: TSQLStoredProc;
    sds_LyBancos: TSimpleDataSet;
    Dts_lyBancos: TDataSource;
    sds_LyBancosCODIGO_BOLETO: TIntegerField;
    sds_LyBancosCOD_EMPRESA: TIntegerField;
    sds_LyBancosDESCRICAO: TStringField;
    sds_LyBancosBANCO_PORTADOR: TIntegerField;
    sds_LyBancosQUANT_DIAS_PROTESTO: TSmallintField;
    O: TStringField;
    sds_LyBancosTIPO: TStringField;
    sds_LyBancosNOMECEDENTE: TStringField;
    sds_LyBancosCNPJCEDENTE: TStringField;
    sds_LyBancosTIPOPESSOACEDENTE: TStringField;
    sds_LyBancosCODIGOAGENCIA: TStringField;
    sds_LyBancosDIGITOAGENCIA: TStringField;
    sds_LyBancosNUMEROCONTA: TStringField;
    sds_LyBancosDIGITOCONTA: TStringField;
    sds_LyBancosCARTEIRA: TStringField;
    sds_LyBancosVLRABATIMENTO: TFloatField;
    sds_LyBancosVLRDESCONTO: TFloatField;
    sds_LyBancosVLRDESPESACOBRANCA: TFloatField;
    sds_LyBancosVLRIOF: TFloatField;
    sds_LyBancosVLRMORAJUROS: TFloatField;
    sds_LyBancosVLROUTRASDEPESAS: TFloatField;
    sds_LyBancosVLROUTROSCREDITOS: TFloatField;
    sds_LyBancosFLAG_GERAR_REMESSA: TStringField;
    sds_LyBancosNUMERO_REMESSA: TIntegerField;
    sds_LyBancosANO_REFERENCIA: TStringField;
    sds_LyBancosPROTESTAR_AUTOMATICO: TStringField;
    sds_LyBancosMODELO: TStringField;
    sds_LyBancosUSERCAD: TStringField;
    sds_LyBancosDATACAD: TDateField;
    sds_LyBancosNOME_AGENCIA: TStringField;
    sds_LyBancosCEDENTECODIGO: TStringField;
    sds_LyBancosCEDENTECODIGODIGITO: TStringField;
    sds_LyBancosNOSSONUMERO: TStringField;
    sds_LyBancosCIDADE: TStringField;
    sds_LyBancosENDERECO: TStringField;
    sds_LyBancosUF: TStringField;
    sds_LyBancosEMAIL: TStringField;
    sds_LyBancosNUMERO: TIntegerField;
    sds_LyBancosCEP: TStringField;
    sds_LyBancosBAIRRO: TStringField;
    sds_LyBancosCOMPLEMENTO: TStringField;
    sds_LyBancosANO: TStringField;
    sds_LyBancosTP_COBRANCA: TStringField;
    sds_LyBancosLOGO: TBlobField;
    sds_LyBancosOBSERVACAO: TStringField;
    SDS_Contrato: TSimpleDataSet;
    DTS_Contrato: TDataSource;
    SDS_ContratoCODIGO: TIntegerField;
    SDS_ContratoOBSERVACAO: TMemoField;
    SDS_ContratoCOD_EMPRESA: TIntegerField;
    SDS_ContratoUSERCAD: TStringField;
    SDS_ContratoDATACAD: TDateField;
    SDS_ContasPagarCOND_PAGTO: TStringField;
    SDS_ContasPagarCOND_PAGTO_COD: TIntegerField;
    DTS_cidades: TDataSource;
    Dts_bairros: TDataSource;
    DTS_Estados: TDataSource;
    DTS_ZONAS: TDataSource;
    Dts_bairro: TDataSource;
    SDS_Conta_BancariaFEBRABAN: TStringField;
    strngfldSDS_Conta_BancariaDIGITO: TStringField;
    SDS_ContasPagarMES: TStringField;
    SDS_ContasPagarANO: TStringField;
    SDS_CP_BaixarVALOR_ADIANTAMENTO: TFMTBCDField;
    SDS_CP_BaixarVALOR_PAGAR: TFMTBCDField;
    SDS_CP_AutorizarVALOR_ADIANTAMENTO: TFMTBCDField;
    SDS_CP_AutorizarVALOR_AUTORIZADO: TFMTBCDField;
    SDS_CP_AutorizarVALOR_PAGAR: TFMTBCDField;
    SDS_CP_BaixarVALOR_AUTORIZADO: TFMTBCDField;
    SDS_CondPagamentoJUROS_DIA: TFMTBCDField;
    SDS_CondPagamentoPG_ECF: TStringField;
    sds_produtos_Falta: TSimpleDataSet;
    dts_produtos_falta: TDataSource;
    sds_produtos_FaltaCOD_EMPRESA: TIntegerField;
    sds_produtos_FaltaCOD_PRODUTO: TIntegerField;
    sds_produtos_FaltaCOD_USUARIO: TIntegerField;
    sds_produtos_FaltaDATA_FALTA: TDateField;
    sds_produtos_FaltaFRACAO: TIntegerField;
    sds_produtos_FaltaQUANT_FRACAO: TIntegerField;
    sds_produtos_FaltaQUANT_INTEIRA: TIntegerField;
    sds_produtos_FaltaCODIGO_SEQ: TIntegerField;
    DTS_CST: TDataSource;
    SDS_CST: TSimpleDataSet;
    SDS_CSTCODIGO_CST: TStringField;
    SDS_CSTDESCRICAO_CST: TStringField;
    SDS_CSTFL_DIFERENCA_BASE_TOTAL: TStringField;
    SDS_CSTFL_ICM: TStringField;
    SDS_CSTFL_REDUCAO: TStringField;
    SDS_CSTFL_ICM_SUBST: TStringField;
    SDS_UsuariosAUTORIZA: TStringField;
    Sds_partidas: TSimpleDataSet;
    Dts_partidas: TDataSource;
    Sds_partidasCODIGO: TIntegerField;
    Sds_partidasN_PARTIDA: TStringField;
    Sds_partidasCOD_LABORATORIO: TStringField;
    Sds_partidasNOME_LABORATORIO: TStringField;
    Sds_partidasDATA_FABRICACAO: TDateField;
    Sds_partidasDATA_VENCIMENTO: TDateField;
    Sds_partidasTIPO_VACINA: TStringField;
    Sds_partidasQUANT_COMPRA: TFMTBCDField;
    Sds_partidasQUANT_VENDA: TFMTBCDField;
    Sds_partidasNOTA_COMPRA: TStringField;
    Sds_partidasSALDO: TFMTBCDField;
    Sds_partidasNOME_EMPRESA_COMPRA: TStringField;
    Sds_partidasMUNICIPIO_COMPRA: TStringField;
    Sds_partidasCOD_EMPRESA: TIntegerField;
    Sds_partidasDATA_ENTRADA: TDateField;
    SPC_Partidas: TSQLStoredProc;
    Sds_partidasDATACAD: TDateField;
    Sds_partidasUSERCAD: TStringField;
    Sds_partidasAFTOSA: TStringField;
    sds_produtos_FaltaDESCRICAO: TStringField;
    Dts_produtos_c: TDataSource;
    Sds_produtos_c: TSimpleDataSet;
    Sds_produtos_cCODIGO: TIntegerField;
    Sds_produtos_cDESCRICAO: TStringField;
    Sds_produtos_cABREVIADO: TStringField;
    Sds_produtos_cPRECO_CUSTO: TFMTBCDField;
    Sds_produtos_cMARGEM_LUCRO: TFMTBCDField;
    Sds_produtos_cCOMISSAO: TFMTBCDField;
    Sds_produtos_cUNIDADE: TIntegerField;
    Sds_produtos_cFRETE: TFMTBCDField;
    Sds_produtos_cICMS: TFMTBCDField;
    Sds_produtos_cIPI_IRPJ: TFMTBCDField;
    Sds_produtos_cOUTROS_IMPOSTOS: TFMTBCDField;
    Sds_produtos_cDESCONTOS: TFMTBCDField;
    Sds_produtos_cCLASS_FISCAL: TStringField;
    Sds_produtos_cSIT_TRIBUTARIA: TStringField;
    Sds_produtos_cCUSTO_MEDIO: TFMTBCDField;
    Sds_produtos_cPRECO_VENDA: TFMTBCDField;
    Sds_produtos_cDESCONTO_MAXIMO: TFMTBCDField;
    Sds_produtos_cCODIGO_GRUPO: TIntegerField;
    Sds_produtos_cCODIGO_SUBGRUPO: TIntegerField;
    Sds_produtos_cCODIGO_MARCA: TIntegerField;
    Sds_produtos_cNOME_GRUPO: TStringField;
    Sds_produtos_cNOME_SUBGRUPO: TStringField;
    Sds_produtos_cNOME_MARCA: TStringField;
    Sds_produtos_cNOME_FORNECEDOR: TStringField;
    Sds_produtos_cCODIGO_FORNECEDORES: TIntegerField;
    Sds_produtos_cFOTO: TBlobField;
    Sds_produtos_cESTOQUE_ATUAL: TFMTBCDField;
    Sds_produtos_cESTOQUE_VENDIDO: TFMTBCDField;
    Sds_produtos_cESTOQUE: TFMTBCDField;
    Sds_produtos_cVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    Sds_produtos_cVALOR_ESTOQUE: TFMTBCDField;
    Sds_produtos_cESTOQUE_MINIMO: TIntegerField;
    Sds_produtos_cESTOQUE_MAXIMO: TIntegerField;
    Sds_produtos_cDATACAD: TDateField;
    Sds_produtos_cUSERCAD: TStringField;
    Sds_produtos_cVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    Sds_produtos_cULTIMACOMPRA: TDateField;
    Sds_produtos_cVALOR_EST_CUSTO: TFMTBCDField;
    Sds_produtos_cSECCAO: TIntegerField;
    Sds_produtos_cCATEGORIA: TIntegerField;
    Sds_produtos_cLOCALIZACAO: TStringField;
    Sds_produtos_cAPLICACAO: TStringField;
    Sds_produtos_cESP_COD_AUX: TStringField;
    Sds_produtos_cGARANTIA: TIntegerField;
    Sds_produtos_cBALANCA: TStringField;
    Sds_produtos_cETIQUETA: TStringField;
    Sds_produtos_cATIVO: TStringField;
    Sds_produtos_cREFERENCIA: TStringField;
    Sds_produtos_cCOD_EMPRESA: TIntegerField;
    Sds_produtos_cDESC_UNIDADE: TStringField;
    Sds_produtos_cPESOBRUTO: TFMTBCDField;
    Sds_produtos_cPESOLIQUIDO: TFMTBCDField;
    Sds_produtos_cFONETICO: TStringField;
    Sds_produtos_cDATAULTALTERACAO: TDateField;
    Sds_produtos_cCUSTOREPOSICAO: TFMTBCDField;
    Sds_produtos_cPRECO_ANT: TFMTBCDField;
    Sds_produtos_cPRECO_PROMOCAO: TFMTBCDField;
    Sds_produtos_cFLAG_PROMOCAO: TStringField;
    Sds_produtos_cDT_INICIO_PROMO: TDateField;
    Sds_produtos_cDT_FIM_PROMO: TDateField;
    Sds_produtos_cCOD_LABORATORIO: TIntegerField;
    Sds_produtos_cLABORATORIO: TStringField;
    Sds_produtos_cPRINCIPIO_ATIVO: TStringField;
    Sds_produtos_cMED_CONTROLADO: TStringField;
    Sds_produtos_cQTD_FRACIONADA: TFMTBCDField;
    Sds_produtos_cMED_GENERICO: TStringField;
    Sds_produtos_cLOTE_MED: TStringField;
    Sds_produtos_cVALIDADE: TDateField;
    Sds_produtos_cCHEK_BOX: TStringField;
    Sds_produtos_cPRECO_VENDA2: TFMTBCDField;
    Sds_produtos_cMARGEM_LUCRO2: TFMTBCDField;
    Sds_produtos_cVALIDADE_PRODUTO: TStringField;
    Sds_produtos_cPROD_SERV: TStringField;
    Sds_produtos_cUNIDADE_ENT: TIntegerField;
    Sds_produtos_cDESC_UNID_ENT: TStringField;
    Sds_produtos_cQUANT_SAIDA: TFMTBCDField;
    Sds_produtos_cQUANT_ENTRADA: TFMTBCDField;
    Sds_produtos_cESTOQUE_FRACAO: TFMTBCDField;
    Sds_produtos_cDATA_FABRICACAO: TDateField;
    Sds_produtos_cFRACAO: TIntegerField;
    Sds_produtos_cCOD_MS: TStringField;
    Sds_produtos_cDESC_SECCAO: TStringField;
    dts_contratos: TDataSource;
    SDS_CONTRATOS: TSimpleDataSet;
    SDS_CONTRATOSCOD_EMPRESA: TIntegerField;
    SDS_CONTRATOSID_CONTRATO: TIntegerField;
    SDS_CONTRATOSCOD_CLIENTE: TIntegerField;
    SDS_CONTRATOSNOME_CLIENTE: TStringField;
    SDS_CONTRATOSVALOR: TFMTBCDField;
    SDS_CONTRATOSDESCRICAO: TBlobField;
    SDS_CONTRATOSDATA_CONTRATO: TDateField;
    SDS_CONTRATOSDATA_VENCIMENTO: TDateField;
    SDS_CONTRATOSCHEK_BOX: TStringField;
    SPC_CONTRATOS: TSQLStoredProc;
    SDS_NFE: TSimpleDataSet;
    sds_nfe_itens: TSimpleDataSet;
    DTS_NFE: TDataSource;
    dts_nfe_itens: TDataSource;
    SPC_NOTA_NFE: TSQLStoredProc;
    SDS_NFEN_SEQUENCIA: TIntegerField;
    SDS_NFECD_EMPRESA: TIntegerField;
    SDS_NFENR_NOTA: TIntegerField;
    SDS_NFECOD_CLIENTE: TIntegerField;
    SDS_NFEFL_IMPRESSO: TStringField;
    SDS_NFESERIE_NF: TStringField;
    SDS_NFECD_CFOP: TIntegerField;
    SDS_NFEDT_EMISSAO: TDateField;
    SDS_NFEDT_LANCAMENTO: TDateField;
    SDS_NFEVL_ACRESCIMOS: TFMTBCDField;
    SDS_NFEVL_DESCONTOS: TFMTBCDField;
    SDS_NFEVL_MERCADORIAS: TFMTBCDField;
    SDS_NFEVL_SERVICOS: TFMTBCDField;
    SDS_NFEVL_TOTAL: TFMTBCDField;
    SDS_NFECOD_PGTO: TIntegerField;
    SDS_NFEVL_AVISTA: TFMTBCDField;
    SDS_NFEVL_PRAZO: TFMTBCDField;
    SDS_NFEPESO_TOTAL: TFMTBCDField;
    SDS_NFEQT_PECAS: TFMTBCDField;
    SDS_NFECFOP_DESC: TStringField;
    SDS_NFECD_TRANSPORTADORA: TIntegerField;
    SDS_NFEUF_ORIGEM: TStringField;
    SDS_NFEUF_DESTINO: TStringField;
    SDS_NFEPESO_LIQUIDO: TFMTBCDField;
    SDS_NFEVL_FRETE: TFMTBCDField;
    SDS_NFEVL_SEGURO: TFMTBCDField;
    SDS_NFEVL_BASE_ICM: TFMTBCDField;
    SDS_NFEVL_ICM: TFMTBCDField;
    SDS_NFEVL_BASE_ICM_SUBST: TFMTBCDField;
    SDS_NFEVL_ICM_SUBST: TFMTBCDField;
    SDS_NFEVL_IPI: TFMTBCDField;
    SDS_NFEVL_ISS: TFMTBCDField;
    SDS_NFETP_FRETE: TStringField;
    SDS_NFEQT_VOLUMES: TFMTBCDField;
    SDS_NFEESPECIE_VOLUMES: TStringField;
    SDS_NFEMARCA_VOLUMES: TStringField;
    SDS_NFENR_VOLUMES: TIntegerField;
    SDS_NFECD_TIPOCOBR: TIntegerField;
    SDS_NFECD_FUNCIONARIO: TIntegerField;
    SDS_NFEDT_ATZ: TDateField;
    SDS_NFEPLACA_TRANSP: TStringField;
    SDS_NFEUF_PLACA_TRANSP: TStringField;
    SDS_NFEVL_OUTROS: TFMTBCDField;
    SDS_NFENR_PEDIDO: TIntegerField;
    SDS_NFEVL_BASE_PIS: TFMTBCDField;
    SDS_NFEVL_PIS: TFMTBCDField;
    SDS_NFEVL_BASE_COFINS: TFMTBCDField;
    SDS_NFEVL_COFINS: TFMTBCDField;
    SDS_NFEVL_BASE_IPI: TFMTBCDField;
    SDS_NFEVL_BASE_ISS: TFMTBCDField;
    SDS_NFEVL_DESCONTO_ITEM: TFMTBCDField;
    SDS_NFEVL_ISENTO_ITENS: TFMTBCDField;
    SDS_NFEVL_OUTROS_ITENS: TFMTBCDField;
    SDS_NFENR_PROTOCOLO_NFE: TStringField;
    SDS_NFEDT_PROCESSAMENTO_NFE: TDateField;
    SDS_NFESTATUS: TStringField;
    SDS_NFENR_LOTE_NFE: TStringField;
    SDS_NFENR_RECIBO_NFE: TStringField;
    SDS_NFENR_PROTOCOLO_CANC_NFE: TStringField;
    SDS_NFECHAVE_ACESSO_NFE: TStringField;
    SDS_NFEVL_FRETE_CONHECIMENTO: TFMTBCDField;
    SDS_NFEVL_ST_CONHECIMENTO: TFMTBCDField;
    SDS_NFEVL_ICM_CONHECIMENTO: TFMTBCDField;
    SDS_NFEBASE_ICM_PROPRIO_ST: TFMTBCDField;
    SDS_NFEVL_ICM_PROPRIO_ST: TFMTBCDField;
    SDS_NFEVL_BASE_ICM_SUBST_REAL: TFMTBCDField;
    SDS_NFEVL_ICM_SUBST_REAL: TFMTBCDField;
    sds_nfe_itensNR_SEQUENCIA: TIntegerField;
    sds_nfe_itensNR_NOTA: TIntegerField;
    sds_nfe_itensCD_CLIENTE: TIntegerField;
    sds_nfe_itensCOD_PRODUTO: TStringField;
    sds_nfe_itensCOD_NCM: TStringField;
    sds_nfe_itensDESCRICAO_PRODUTO: TStringField;
    sds_nfe_itensPROD_SERV: TStringField;
    sds_nfe_itensQT_PRODUTO: TFMTBCDField;
    sds_nfe_itensVL_TOTAL: TFMTBCDField;
    sds_nfe_itensDT_LANCAMENTO: TDateField;
    sds_nfe_itensPESO_LIQUIDO: TFloatField;
    sds_nfe_itensCD_ATUALIZACAO: TIntegerField;
    sds_nfe_itensCST: TStringField;
    sds_nfe_itensPC_RED_BASE_ICM: TFMTBCDField;
    sds_nfe_itensALIQ_ICM: TFMTBCDField;
    sds_nfe_itensALIQ_ICM_SUBST: TFMTBCDField;
    sds_nfe_itensALIQ_IPI: TFMTBCDField;
    sds_nfe_itensALIQ_ISS: TFMTBCDField;
    sds_nfe_itensVL_BASE_ICM: TFMTBCDField;
    sds_nfe_itensVL_ICM: TFMTBCDField;
    sds_nfe_itensVL_ICM_SUBST: TFMTBCDField;
    sds_nfe_itensVL_IPI: TFMTBCDField;
    sds_nfe_itensVL_ISS: TFMTBCDField;
    sds_nfe_itensDT_ALTERACAO: TDateField;
    sds_nfe_itensDESC_UNIDADE: TStringField;
    sds_nfe_itensPERC_DESCONTO: TFMTBCDField;
    sds_nfe_itensVL_BASE_ICM_SUBST: TFMTBCDField;
    sds_nfe_itensCD_CONTA: TIntegerField;
    sds_nfe_itensCFOP: TStringField;
    sds_nfe_itensVL_DESCONTO: TFMTBCDField;
    sds_nfe_itensVL_CONTABIL: TFMTBCDField;
    sds_nfe_itensVL_OUTROS: TFMTBCDField;
    sds_nfe_itensVL_ISENTO: TFMTBCDField;
    sds_nfe_itensALIQ_PIS: TFMTBCDField;
    sds_nfe_itensVL_BASE_PIS: TFMTBCDField;
    sds_nfe_itensVL_PIS: TFMTBCDField;
    sds_nfe_itensALIQ_COFINS: TFMTBCDField;
    sds_nfe_itensVL_BASE_COFINS: TFMTBCDField;
    sds_nfe_itensVL_COFINS: TFMTBCDField;
    sds_nfe_itensVL_BASE_ISS: TFMTBCDField;
    sds_nfe_itensVL_BASE_IPI: TFMTBCDField;
    sds_nfe_itensALIQ_ICM_PROPRIO_ST: TFMTBCDField;
    sds_nfe_itensVL_BASE_ICM_PROPRIO_ST: TFMTBCDField;
    sds_nfe_itensVL_ICM_PROPRIO_ST: TFMTBCDField;
    sds_nfe_itensALIQ_ICM_SUBST_REAL: TFMTBCDField;
    sds_nfe_itensVL_BASE_ICM_SUBST_REAL: TFMTBCDField;
    sds_nfe_itensVL_ICM_SUBST_REAL: TFMTBCDField;
    sds_nfe_itensITEN: TIntegerField;
    Sds_Transportador: TSimpleDataSet;
    dts_transportador: TDataSource;
    Sds_TransportadorCD_EMPRESA: TIntegerField;
    Sds_TransportadorCD_TRANSPORTADOR: TIntegerField;
    Sds_TransportadorNOME_TRANSP: TStringField;
    Sds_TransportadorNOME_FANTASIA_TRANSP: TStringField;
    Sds_TransportadorINSCRICAO: TStringField;
    Sds_TransportadorCNPJ: TStringField;
    Sds_TransportadorCEP: TStringField;
    Sds_TransportadorENDERECO: TStringField;
    Sds_TransportadorBAIRRO: TStringField;
    Sds_TransportadorCD_CIDADE: TIntegerField;
    Sds_TransportadorTELE_TRANSP: TStringField;
    Sds_TransportadorFAX_TRANS: TStringField;
    Sds_TransportadorPESSOA_CONTATO: TStringField;
    Sds_TransportadorE_MAIL: TStringField;
    Sds_TransportadorCEL_TRANSP: TStringField;
    Sds_TransportadorDT_ATZ: TDateField;
    Sds_TransportadorFL_FISICO_JURIDICO: TStringField;
    Sds_TransportadorCD_FORNECEDOR: TIntegerField;
    Sds_TransportadorNUMERO: TIntegerField;
    Sds_TransportadorCOMPLEMENTO: TStringField;
    Sds_TransportadorCIDADE: TStringField;
    Sds_TransportadorUF: TStringField;
    Spc_transportador: TSQLStoredProc;
    sDS_MOV_DIARIO: TSimpleDataSet;
    sDS_MOV_DIARIOVALOR_ENTRADA: TFMTBCDField;
    sDS_MOV_DIARIOCODIGO: TIntegerField;
    sDS_MOV_DIARIODATA: TDateField;
    sDS_MOV_DIARIOHISTORICO: TStringField;
    sDS_MOV_DIARIOUSUARIO: TStringField;
    sDS_MOV_DIARIOTIPO: TStringField;
    sDS_MOV_DIARIOVALOR_SAIDA: TFMTBCDField;
    sDS_MOV_DIARIOCODIGO_CC: TIntegerField;
    sDS_MOV_DIARIONUMERO_CC: TStringField;
    sDS_MOV_DIARIOCODIGO_VENDA: TIntegerField;
    sDS_MOV_DIARIOORIGEM: TStringField;
    DTS_MV_DIARIO: TDataSource;
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
    SDS_OTICA: TSimpleDataSet;
    DTS_OTICA: TDataSource;
    SDS_OTICACODIGO: TIntegerField;
    SDS_OTICANOME: TStringField;
    SDS_OTICAENDERECO: TStringField;
    SDS_OTICABAIRRO: TStringField;
    SDS_OTICACOMPLEMENTO: TStringField;
    SDS_OTICANUMERO: TIntegerField;
    SDS_OTICACIDADE: TStringField;
    SDS_OTICAUF: TStringField;
    SDS_OTICATELEFONE: TStringField;
    SDS_OTICAESFERA_D: TStringField;
    SDS_OTICACLILINDRICO_D: TStringField;
    SDS_OTICAEIXO_D: TStringField;
    SDS_OTICAESFERA_E: TStringField;
    SDS_OTICACLINDRICO_E: TStringField;
    SDS_OTICAEIXO_E: TStringField;
    SDS_OTICADP_LONGE: TStringField;
    SDS_OTICADP_PERTO: TStringField;
    SDS_OTICAP_ADICAO: TStringField;
    SDS_OTICADATA: TDateField;
    SDS_OTICAOBS: TStringField;
    SDS_OTICACPF: TStringField;
    SPC_OTICA: TSQLStoredProc;
    SDS_OTICACOD_EMPRESA: TIntegerField;
    SDS_OTICACOD_CLIENTE: TIntegerField;
    SDS_UsuariosCOBRADOR: TStringField;
    SDS_UsuariosVENDEDOR: TStringField;
    SDS_UsuariosUSER: TStringField;
    Sds_produtos_cNCM_SH: TStringField;
    SDS_CONTRATOSATIVO: TStringField;
    sds_nfe_itensCODIGO_PROD: TIntegerField;
    Sds_produtos_cCODIGO_BARRAS: TStringField;
    Sds_produtos_cQTD_CAIXA: TFMTBCDField;
    SDS_NFECNPJ_TRANSP: TStringField;
    SDS_NFENOME_TRANSP: TStringField;
    SDS_NFEIE_TRANSP: TStringField;
    SDS_NFEEND_TRANSPORTADOR: TStringField;
    SDS_NFECIDADE_TRANSP: TStringField;
    SDS_NFEUF_TRANSP: TStringField;
    Sds_produtos_cProdutoComposto: TStringField;
    Dts_vendas: TDataSource;
    dts_vendas_itens: TDataSource;
    Dts_orcamento: TDataSource;
    Dts_orcamento_itens: TDataSource;
    dsp_orcamento: TDataSetProvider;
    Qry_orcamento: TSQLQuery;
    Qry_orcamentoCODIGO: TIntegerField;
    Qry_orcamentoVALOR_ITENS: TFMTBCDField;
    Qry_orcamentoVALOR_DESCONTO: TFMTBCDField;
    Qry_orcamentoVALOR_TOTAL: TFMTBCDField;
    Qry_orcamentoVALOR_COMISSAO: TFMTBCDField;
    Qry_orcamentoUSUARIO: TStringField;
    Qry_orcamentoDATA: TDateField;
    Qry_orcamentoCODIGO_CLIENTE: TIntegerField;
    Qry_orcamentoNOME_CLIENTE: TStringField;
    Qry_orcamentoPAGAMENTO: TStringField;
    Qry_orcamentoENC_FINANCEIRO: TFMTBCDField;
    Qry_orcamentoOBSERVACOES: TStringField;
    Qry_orcamentoCOD_VENDEDOR: TIntegerField;
    Qry_orcamentoCOD_EMPRESA: TIntegerField;
    Qry_orcamentoCOD_PAGTO: TIntegerField;
    Qry_orcamentoENDERECO: TStringField;
    Qry_orcamentoCIDADE: TStringField;
    Qry_orcamentoFONE: TStringField;
    Qry_orcamentoBAIRRO: TStringField;
    Qry_orcamentoCPF_CNPJ: TStringField;
    Qry_orcamentoRG_IE: TStringField;
    Qry_orcamentoEXPORTADO: TStringField;
    Sds_orcamento_itens: TSimpleDataSet;
    Sds_orcamento_itensCODIGO: TIntegerField;
    Sds_orcamento_itensCODIGO_ID: TIntegerField;
    Sds_orcamento_itensCODIGO_PROD: TIntegerField;
    Sds_orcamento_itensCODIGO_PRODUTO: TStringField;
    Sds_orcamento_itensDESCRICAO_PRODUTO: TStringField;
    Sds_orcamento_itensPRECO_UNITARIO: TFMTBCDField;
    Sds_orcamento_itensQUANTIDADE: TFMTBCDField;
    Sds_orcamento_itensPRECO_TOTAL: TFMTBCDField;
    Sds_orcamento_itensCOMISSAO: TFMTBCDField;
    Sds_orcamento_itensDESCONTO: TFMTBCDField;
    Sds_orcamento_itensENC_FINANCEIRO: TFMTBCDField;
    Sds_orcamento_itensVENDEDOR: TIntegerField;
    Sds_orcamento_itensSIT_TRIBUTARIA: TStringField;
    Sds_orcamento_itensUNIDADE: TStringField;
    Sds_orcamento_itensFRACAO: TIntegerField;
    Sds_orcamento_itensCOD_NCM: TStringField;
    Sds_orcamento_itensPROD_SERV: TStringField;
    Sds_orcamento_itensITEN: TIntegerField;
    SDS_NFETP: TStringField;
    SDS_NFEN_NOTA_ENTRADA: TStringField;
    SDS_NFENOME_CLIENTE_FOR: TStringField;
    SDS_NFECPF_CNPJ_CLIENTE_FORN: TStringField;
    SDS_NFEIE_CLIENTE_FORN: TStringField;
    SDS_NFEENDERECO_CLI_FORN: TStringField;
    SDS_NFEEND_NUM_CLIENTE: TStringField;
    SDS_NFECOD_IBGE: TStringField;
    SDS_NFECEP_CLIENTE_FORN: TStringField;
    SDS_NFEBAIRRO_CLIENTE_FORN: TStringField;
    SDS_NFETIPO_PESSOA: TStringField;
    SDS_NFETELEFONE: TStringField;
    SDS_NFECIDADE_CLIENTE_FORN: TStringField;
    SDS_NFEUF_CLIENTE_FORN: TStringField;
    SDS_NFEIE_PRODUTOR: TStringField;
    SDS_NFEPRODUTOR_RURAL: TStringField;
    SDS_NFEPAGAMENTO: TStringField;
    sds_orcamento: TClientDataSet;
    sds_orcamentoCODIGO: TIntegerField;
    sds_orcamentoVALOR_ITENS: TFMTBCDField;
    sds_orcamentoVALOR_DESCONTO: TFMTBCDField;
    sds_orcamentoVALOR_TOTAL: TFMTBCDField;
    sds_orcamentoVALOR_COMISSAO: TFMTBCDField;
    sds_orcamentoUSUARIO: TStringField;
    sds_orcamentoDATA: TDateField;
    sds_orcamentoCODIGO_CLIENTE: TIntegerField;
    sds_orcamentoNOME_CLIENTE: TStringField;
    sds_orcamentoPAGAMENTO: TStringField;
    sds_orcamentoENC_FINANCEIRO: TFMTBCDField;
    sds_orcamentoOBSERVACOES: TStringField;
    sds_orcamentoCOD_VENDEDOR: TIntegerField;
    sds_orcamentoCOD_EMPRESA: TIntegerField;
    sds_orcamentoCOD_PAGTO: TIntegerField;
    sds_orcamentoENDERECO: TStringField;
    sds_orcamentoCIDADE: TStringField;
    sds_orcamentoFONE: TStringField;
    sds_orcamentoBAIRRO: TStringField;
    sds_orcamentoCPF_CNPJ: TStringField;
    sds_orcamentoRG_IE: TStringField;
    sds_orcamentoEXPORTADO: TStringField;
    sds_orcamentoSOMAVALOR_TOTAL: TAggregateField;
    sds_orcamentoCOUNT_VENDAS: TAggregateField;
    SDS_ContasPagarCODIGO_NOTA: TIntegerField;
    SDS_NCM: TSimpleDataSet;
    DTS_NCM: TDataSource;
    SDS_NCMCODIGO_NCM: TStringField;
    SDS_NCMDESCRICAO: TStringField;
    SDS_NCMALICOTA: TStringField;
    SDS_NCMANALITICO: TStringField;
    SDS_PlContasCOD_NATUREZA: TStringField;
    SDS_PlContasNIVEL_CTA: TStringField;
    SDS_PlContasINDICADOR: TStringField;
    SDS_PlContasCOD_COMPLETO: TStringField;
    SDS_PlContasSALDO_CTA: TFMTBCDField;
    SDS_PlContasDEB_CRED: TStringField;
    SDS_PlContasCOD_CTA: TStringField;
    SDS_Crediario: TSimpleDataSet;
    Dts_crediario: TDataSource;
    SDS_CrediarioCODIGO: TIntegerField;
    SDS_CrediarioCODIGO_CLIENTE: TIntegerField;
    SDS_CrediarioDATA_COMPRA: TDateField;
    SDS_CrediarioDATA_VENCIMENTO: TDateField;
    SDS_CrediarioDATA_BAIXA: TDateField;
    SDS_CrediarioHISTORICO: TStringField;
    SDS_CrediarioUSUARIO_VENDA: TStringField;
    SDS_CrediarioUSUARIO_BAIXA: TStringField;
    SDS_CrediarioSITUACAO: TStringField;
    SDS_CrediarioVALOR_COMPRA: TFMTBCDField;
    SDS_CrediarioVALOR_JUROS: TFMTBCDField;
    SDS_CrediarioVALOR_ACRESCIMO: TFMTBCDField;
    SDS_CrediarioVALOR_DESCONTO: TFMTBCDField;
    SDS_CrediarioVALOR_PAGAR: TFMTBCDField;
    SDS_CrediarioVALOR_PAGO: TFMTBCDField;
    SDS_CrediarioVALOR_TOTAL: TFMTBCDField;
    SDS_CrediarioCODIGO_COMPRA: TIntegerField;
    SDS_CrediarioPARCELA: TStringField;
    SDS_CrediarioNUMBOLETO: TStringField;
    SDS_CrediarioBANCO_PORTADOR: TIntegerField;
    SDS_CrediarioREMESSA: TStringField;
    SDS_CrediarioDATACREDITO: TDateField;
    SDS_CrediarioID_PORTADOR: TIntegerField;
    SDS_CrediarioENVIADO: TStringField;
    SDS_CrediarioCOD_EMPRESA: TIntegerField;
    SDS_CrediarioNUMBOLETO1: TIntegerField;
    SDS_CrediarioCODIGOCEDENTE: TStringField;
    SDS_CrediarioTIPO: TStringField;
    SDS_CrediarioCHEK_BOX: TStringField;
    SDS_CrediarioNUM_NOTA: TIntegerField;
    SDS_CrediarioSERIE_NOTA: TStringField;
    SDS_CrediarioNOME_SACADO: TStringField;
    SDS_CrediarioANO: TStringField;
    SDS_CrediarioMES: TStringField;
    SDS_CrediarioTP_BAIXA: TStringField;
    SDS_CrediarioID_CONTRATO: TIntegerField;
    SDS_CrediarioNOME_ARQ: TStringField;
    SDS_CrediarioCOBRADOR: TIntegerField;
    SDS_CrediarioCOMISSAO: TFMTBCDField;
    SDS_CrediarioDT_PREVISAO_PGTO: TDateField;
    SDS_CrediarioDIAS_VENCIDO: TIntegerField;
    SDS_CrediarioN_OS: TStringField;
    SDS_CrediarioVLR_GRAFICA: TFMTBCDField;
    SDS_CrediarioVALOR_COMISAO: TFMTBCDField;
    Qry_orcamentoCEP: TStringField;
    Qry_orcamentoUF: TStringField;
    Qry_orcamentoNUMERO: TIntegerField;
    Qry_orcamentoTIPO: TStringField;
    Qry_orcamentoCOD_IBGE: TStringField;
    Qry_orcamentoPRODUTOR: TStringField;
    Qry_orcamentoIE_PRODUTOR: TStringField;
    sds_orcamentoCEP: TStringField;
    sds_orcamentoUF: TStringField;
    sds_orcamentoNUMERO: TIntegerField;
    sds_orcamentoTIPO: TStringField;
    sds_orcamentoCOD_IBGE: TStringField;
    sds_orcamentoPRODUTOR: TStringField;
    sds_orcamentoIE_PRODUTOR: TStringField;
    DTS_CLI: TDataSource;
    SDS_CSTCST_CSOSN: TStringField;
    QConsulta: TFDQuery;
    QMotivo: TFDQuery;
    QLocaisEstoque: TFDQuery;
    Sds_produtos_cCONTOLAESTOQUE: TStringField;
    Sds_produtos_cTIPO_ATIVIDADE: TStringField;
    Sds_produtos_cCOD_PRODUTO_ESTOQUE: TIntegerField;
    Sds_produtos_cCODIGO_LOCAL_ESTOQUE: TIntegerField;
    DSLocaisEstoque: TDataSource;
    DSMotivo: TDataSource;
    Limpa: TFDQuery;
    SDS_NFESTATUS_INUTILIZADO: TStringField;
    SDS_NFESTATUS_CANCELADO: TStringField;
    SDS_NFESTATUS_EMAIL: TStringField;
    SDS_NFECOD_FORNECEDOR: TIntegerField;
    SDS_NFEDEPEC: TStringField;
    SDS_NFECHAVE2: TStringField;
    SDS_NFESTATUS_RETORNO: TStringField;
    SDS_NFEJUSTIFICATIVA_CANCEL_INUTIL: TStringField;
    Dts_grupo_Trib: TDataSource;
    Sds_pis_cofins: TSimpleDataSet;
    Dts_pis_Cofins: TDataSource;
    Sds_pis_cofinsCOD_PIS_COFINS: TStringField;
    Sds_pis_cofinsDESCRICAO: TStringField;
    Sds_produtos_cLISTA_ABC: TStringField;
    Sds_produtos_cGRUPO_TRIBUTACAO: TIntegerField;
    Sds_grupo_trib: TSimpleDataSet;
    Sds_grupo_tribCOD_GRUPO: TIntegerField;
    Sds_grupo_tribFLAG_SUBSTITUICAO_TRIB: TStringField;
    Sds_grupo_tribPERC_SUBST_TRIBUTARIA: TFMTBCDField;
    Sds_grupo_tribFLAG_SERVICO: TStringField;
    Sds_grupo_tribPERC_ALIQUOTA_ISS: TFMTBCDField;
    Sds_grupo_tribFLAG_FABRICACAO_PROPRIA: TStringField;
    Sds_grupo_tribPERC_ALIQUOTA_IPI: TFMTBCDField;
    Sds_grupo_tribFLAG_PIS_COFINS: TStringField;
    Sds_grupo_tribPERC_ALIQUOTA_PIS: TFMTBCDField;
    Sds_grupo_tribPERC_ALIQUOTA_COFINS: TFMTBCDField;
    Sds_grupo_tribFLAG_ICMSGARANTIDO_INTEGRAL: TStringField;
    Sds_grupo_tribPERC_ICMS_GARANTIDO_INTEGRAL: TFMTBCDField;
    Sds_grupo_tribCFOP_ESTADUAL_DEV: TStringField;
    Sds_grupo_tribCFOP_INTERESTADUAL_DEV: TStringField;
    Sds_grupo_tribCFOP_EST_COMPRA: TStringField;
    Sds_grupo_tribCFOP_INTER_COMPRA: TStringField;
    Sds_grupo_tribCFOP_EST_VENDA: TStringField;
    Sds_grupo_tribCFOP_INTER_VENDA: TStringField;
    Sds_grupo_tribCFOP_EST_TRANSF: TStringField;
    Sds_grupo_tribCFOP_INTER_EST_TRASNF: TStringField;
    Sds_grupo_tribCST_VENDA: TStringField;
    Sds_grupo_tribCST_COMPRA: TStringField;
    Sds_grupo_tribFLAG_ICMS: TStringField;
    Sds_grupo_tribPERC_ICMS_ESTADUAL: TFMTBCDField;
    Sds_grupo_tribPERC_ICMS_INTER_ESTADUAL: TFMTBCDField;
    Sds_grupo_tribSIT_PIS_VENDA_EST: TStringField;
    Sds_grupo_tribSIT_COFINS_VENDA_EST: TStringField;
    Sds_grupo_tribSIT_PIS_VENDA_INTER_EST: TStringField;
    Sds_grupo_tribSIT_COFINS_VENDA_INTER_EST: TStringField;
    Sds_grupo_tribCST_VENDA_INTER: TStringField;
    Sds_grupo_tribCST_COMPRA_INTER: TStringField;
    Sds_grupo_tribPERC_RED_ICMS: TFMTBCDField;
    Sds_grupo_tribDESCRICAO: TStringField;
    SDS_UsuariosV_TOTAL_VENDAS: TStringField;
    SDS_UsuariosS123: TStringField;
    SDS_UsuariosS124: TStringField;
    SDS_UsuariosS125: TStringField;
    SDS_UsuariosS126: TStringField;
    SDS_UsuariosS127: TStringField;
    SDS_UsuariosS128: TStringField;
    SDS_UsuariosS129: TStringField;
    SDS_UsuariosS130: TStringField;
    SDS_UsuariosS131: TStringField;
    SDS_UsuariosS132: TStringField;
    SDS_UsuariosS133: TStringField;
    SDS_UsuariosS134: TStringField;
    SDS_UsuariosS135: TStringField;
    SDS_UsuariosS136: TStringField;
    SDS_UsuariosS137: TStringField;
    SDS_UsuariosS138: TStringField;
    SDS_UsuariosS139: TStringField;
    SDS_UsuariosS140: TStringField;
    DSLab: TDataSource;
    QLab: TFDQuery;
    IBTRAux: TFDTransaction;
    Sds_produtos_cCOMBUSTIVEL: TStringField;
    SDS_UsuariosMOSTRA_CUSTOS: TStringField;
    QAdmCartao: TFDQuery;
    QAdmCartaoCODIGO: TIntegerField;
    DSAdmCartao: TDataSource;
    QBandeira: TFDQuery;
    QBandeiraCODIGO: TIntegerField;
    QBandeiraCODIGO_ADMINISTRADORA: TIntegerField;
    DSBandeira: TDataSource;
    SDS_SECCAO1: TSimpleDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    DateField1: TDateField;
    DTS_SECCAO1: TDataSource;
    sds_seccao2: TSimpleDataSet;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateField2: TDateField;
    dts_seccao2: TDataSource;
    ProxCod1: TFDQuery;
    ProxCod1N_CODIGO: TIntegerField;
    ProxCod: TSQLQuery;
    ProxCodN_CODIGO: TIntegerField;
    sds_nfe_itensCST_PIS: TStringField;
    sds_nfe_itensCST_COFINS: TStringField;
    Sds_grupo_tribCST_IPI_ENTRADA: TStringField;
    Sds_grupo_tribCST_IPI_SAIDA: TStringField;
    sds_nfe_itensCST_IPI: TStringField;
    Sds_Cst_ipi: TSimpleDataSet;
    Dts_Cst_ipi: TDataSource;
    Sds_Cst_ipiCST_IPI: TStringField;
    Sds_Cst_ipiIPI_DESCRICAO: TStringField;
    Dts_IdSistema: TDataSource;
    SDS_UsuariosCPF_VENDEDOR: TStringField;
    DSCaixa: TDataSource;
    QCaixa: TFDQuery;
    QConv: TFDQuery;
    DSConv: TDataSource;
    SDS_UsuariosS141: TStringField;
    SDS_UsuariosS142: TStringField;
    SDS_UsuariosS143: TStringField;
    Sds_produtos_cCOR: TIntegerField;
    Sds_produtos_cENABLE_NUMSERIE: TIntegerField;
    Sds_produtos_cID_PRODUTOS: TIntegerField;
    Sds_produtos_cCOD_ANP: TStringField;
    Sds_produtos_cCESTA: TStringField;
    Sds_produtos_cML_QUANT_BEB: TFMTBCDField;
    Sds_produtos_cUND_TRIB: TStringField;
    Sds_produtos_cCHASSI: TStringField;
    Sds_produtos_cCOR_DESC: TStringField;
    Sds_produtos_cN_MOTOR: TStringField;
    Sds_produtos_cANO_FAB: TStringField;
    Sds_produtos_cANO_MOD_FAB: TStringField;
    Sds_produtos_cTIPO_VEIC: TStringField;
    Sds_produtos_cN_SERIE: TStringField;
    Sds_produtos_cCOD_MODELO: TStringField;
    Sds_produtos_cESPECIE_VEICULO: TStringField;
    Sds_produtos_cCOD_COR_DENATRAN: TStringField;
    Sds_produtos_cTIPO_COMBUSTIVEL: TStringField;
    Sds_produtos_cVEICULO: TStringField;
    SDS_CondPagamentoCHEK: TStringField;
    SDS_UsuariosDATA: TDateField;
    SDS_UsuariosSALDO: TFMTBCDField;
    SDS_UsuariosSITUACAO: TStringField;
    QRRELATORIO: TSimpleDataSet;
    fxrelatorio: TfrxDBDataset;
    fxemitente: TfrxDBDataset;
    delCupom: TFDQuery;
    IntegerField3: TIntegerField;
    Sds_unidade: TSimpleDataSet;
    IntegerField4: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    DateField3: TDateField;
    Dts_unidade: TDataSource;
    SDS_UsuariosMOSTRA_PENDENTES: TStringField;
    SDS_NFEMODELO: TStringField;
    qrinfnutricional_produto: TSimpleDataSet;
    Dts_info_nutricional: TDataSource;
    qrinfnutricional_produtoCODIGO: TIntegerField;
    qrinfnutricional_produtoCOD_PRODUTO: TIntegerField;
    qrinfnutricional_produtoPORCAO: TStringField;
    qrinfnutricional_produtoVALOR_CALORICO: TIntegerField;
    qrinfnutricional_produtoVALOR_CALORICO_VD: TStringField;
    qrinfnutricional_produtoCARBOIDRATOS: TIntegerField;
    qrinfnutricional_produtoCARBOIDRATOS_VD: TIntegerField;
    qrinfnutricional_produtoPROTEINAS: TIntegerField;
    qrinfnutricional_produtoPROTEINAS_VD: TIntegerField;
    qrinfnutricional_produtoGORDURASTOTAIS: TFMTBCDField;
    qrinfnutricional_produtoGORDURASTOTAIS_VD: TIntegerField;
    qrinfnutricional_produtoGORDURASSATURADAS: TFMTBCDField;
    qrinfnutricional_produtoGORDURASSATURADAS_VD: TIntegerField;
    qrinfnutricional_produtoCOLESTEROL: TIntegerField;
    qrinfnutricional_produtoCOLESTEROL_VD: TIntegerField;
    qrinfnutricional_produtoFIBRA: TIntegerField;
    qrinfnutricional_produtoFIBRA_VD: TIntegerField;
    qrinfnutricional_produtoCALCIO: TFMTBCDField;
    qrinfnutricional_produtoCALCIO_VD: TIntegerField;
    qrinfnutricional_produtoFERRO: TFMTBCDField;
    qrinfnutricional_produtoFERRO_VD: TIntegerField;
    qrinfnutricional_produtoSODIO: TIntegerField;
    qrinfnutricional_produtoSODIO_VD: TIntegerField;
    qrinfnutricional_produtoUNIDADE_PORCAO: TStringField;
    qrinfnutricional_produtoPARTE_INTEIRA: TStringField;
    qrinfnutricional_produtoPARTE_DECIMAL: TStringField;
    qrinfnutricional_produtoMEDIDA_CASEIRA: TStringField;
    SDS_CONTRATOSTIPO_CONTRATO: TIntegerField;
    SDS_CONTRATOSPLANO_CONTRATO: TIntegerField;
    SDS_CONTRATOSPLANO_CARACT: TIntegerField;
    SDS_UsuariosUTILIZA_NFCE: TStringField;
    sds_nfce_itens: TSimpleDataSet;
    Dts_nfce: TDataSource;
    dts_nfce_itens: TDataSource;
    sds_nfce_itensNR_SEQUENCIA: TIntegerField;
    sds_nfce_itensNR_NOTA: TIntegerField;
    sds_nfce_itensCOD_PRODUTO: TStringField;
    sds_nfce_itensCOD_NCM: TStringField;
    sds_nfce_itensDESCRICAO_PRODUTO: TStringField;
    sds_nfce_itensPROD_SERV: TStringField;
    sds_nfce_itensQT_PRODUTO: TFMTBCDField;
    sds_nfce_itensVL_TOTAL: TFMTBCDField;
    sds_nfce_itensDT_LANCAMENTO: TDateField;
    sds_nfce_itensPESO_LIQUIDO: TFloatField;
    sds_nfce_itensCD_ATUALIZACAO: TIntegerField;
    sds_nfce_itensCST: TStringField;
    sds_nfce_itensPC_RED_BASE_ICM: TFMTBCDField;
    sds_nfce_itensALIQ_ICM: TFMTBCDField;
    sds_nfce_itensALIQ_ICM_SUBST: TFMTBCDField;
    sds_nfce_itensALIQ_IPI: TFMTBCDField;
    sds_nfce_itensALIQ_ISS: TFMTBCDField;
    sds_nfce_itensVL_BASE_ICM: TFMTBCDField;
    sds_nfce_itensVL_ICM: TFMTBCDField;
    sds_nfce_itensVL_ICM_SUBST: TFMTBCDField;
    sds_nfce_itensVL_IPI: TFMTBCDField;
    sds_nfce_itensVL_ISS: TFMTBCDField;
    sds_nfce_itensDT_ALTERACAO: TDateField;
    sds_nfce_itensDESC_UNIDADE: TStringField;
    sds_nfce_itensPERC_DESCONTO: TFMTBCDField;
    sds_nfce_itensVL_BASE_ICM_SUBST: TFMTBCDField;
    sds_nfce_itensCD_CONTA: TIntegerField;
    sds_nfce_itensCFOP: TStringField;
    sds_nfce_itensVL_DESCONTO: TFMTBCDField;
    sds_nfce_itensVL_CONTABIL: TFMTBCDField;
    sds_nfce_itensVL_OUTROS: TFMTBCDField;
    sds_nfce_itensVL_ISENTO: TFMTBCDField;
    sds_nfce_itensALIQ_PIS: TFMTBCDField;
    sds_nfce_itensVL_BASE_PIS: TFMTBCDField;
    sds_nfce_itensVL_PIS: TFMTBCDField;
    sds_nfce_itensALIQ_COFINS: TFMTBCDField;
    sds_nfce_itensVL_BASE_COFINS: TFMTBCDField;
    sds_nfce_itensVL_COFINS: TFMTBCDField;
    sds_nfce_itensVL_BASE_ISS: TFMTBCDField;
    sds_nfce_itensVL_BASE_IPI: TFMTBCDField;
    sds_nfce_itensALIQ_ICM_PROPRIO_ST: TFMTBCDField;
    sds_nfce_itensVL_BASE_ICM_PROPRIO_ST: TFMTBCDField;
    sds_nfce_itensVL_ICM_PROPRIO_ST: TFMTBCDField;
    sds_nfce_itensALIQ_ICM_SUBST_REAL: TFMTBCDField;
    sds_nfce_itensVL_BASE_ICM_SUBST_REAL: TFMTBCDField;
    sds_nfce_itensVL_ICM_SUBST_REAL: TFMTBCDField;
    sds_nfce_itensITEN: TIntegerField;
    sds_nfce_itensCODIGO_PROD: TIntegerField;
    sds_nfce_itensCST_PIS: TStringField;
    sds_nfce_itensCST_COFINS: TStringField;
    sds_nfce_itensCST_IPI: TStringField;
    sds_nfce_itensCOD_EMPRESA: TIntegerField;
    Limpa_nfce: TFDQuery;
    DTS_VEICULOS: TDataSource;
    SDS_VEICULOS: TFDQuery;
    SDS_VEICULOSCODIGO: TIntegerField;
    SDS_VEICULOSNOME: TStringField;
    SDS_VEICULOSANO: TStringField;
    SDS_VEICULOSCOMBUSTIVEL: TStringField;
    SDS_VEICULOSPLACA: TStringField;
    SDS_VEICULOSUFPLACA: TStringField;
    SDS_VEICULOSCOR: TStringField;
    SDS_VEICULOSOBS1: TStringField;
    SDS_VEICULOSOBS2: TStringField;
    SDS_VEICULOSOBS3: TStringField;
    SDS_VEICULOSCIDADE: TStringField;
    SDS_VEICULOSCOD_CLIENTE: TIntegerField;
    SDS_VEICULOSCHASSI: TStringField;
    SDS_VEICULOSRENAVAM: TStringField;
    SDS_VEICULOSISENTO_IPVA: TStringField;
    qrLMC: TFDQuery;
    qrLivroLMC: TFDQuery;
    qrENCERRANTES: TFDQuery;
    qrLivroLMCCODIGO: TIntegerField;
    qrLivroLMCCOD_FILIAL: TStringField;
    qrLivroLMCFILIAL: TStringField;
    qrLivroLMCENDERECO: TStringField;
    qrLivroLMCBAIRRO: TStringField;
    qrLivroLMCCEP: TStringField;
    qrLivroLMCCIDADE: TStringField;
    qrLivroLMCUF: TStringField;
    qrLivroLMCIE: TStringField;
    qrLivroLMCCNPJ: TStringField;
    qrLivroLMCIM: TStringField;
    qrLivroLMCDISTRIBUIDORA: TStringField;
    qrLivroLMCCAPACIDADE: TIntegerField;
    qrLivroLMCCOD_COMBUSTIVEL: TIntegerField;
    qrLivroLMCNOME_COMBUSTIVEL: TStringField;
    qrLivroLMCNUMERO: TStringField;
    qrLivroLMCNUMERO_JUNTACOM: TStringField;
    qrLivroLMCDATA_ABERTURA: TDateField;
    qrLivroLMCNUMERO_ORDEM: TIntegerField;
    qrLivroLMCPAGINA_ATUAL: TIntegerField;
    qrLMCCODIGO: TIntegerField;
    qrLMCTANQUE: TIntegerField;
    qrLMCBOMBA: TIntegerField;
    SDS_UsuariosIMP_DARUMA_NFCE: TStringField;
    QNotasManifesto: TFDQuery;
    upNotasManifesto: TFDUpdateSQL;
    sds_similares1: TSimpleDataSet;
    dts_similares1: TDataSource;
    sds_similares1CODIGO_SEQ: TIntegerField;
    sds_similares1CODIGO_SIMILAR: TIntegerField;
    sds_similares1CODIGO_BARRAS: TStringField;
    sds_similares1DESCRICAO: TStringField;
    sds_similares1CODIGO_PROD: TIntegerField;
    sds_similares2: TSimpleDataSet;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField7: TIntegerField;
    dts_similares2: TDataSource;
    qrserial_produto: TFDQuery;
    qrserial_produtoCODIGO: TIntegerField;
    qrserial_produtoCODPRODUTO: TIntegerField;
    qrserial_produtoSERIAL: TStringField;
    qrserial_produtoCODCLIENTE: TIntegerField;
    qrserial_produtoDATAVENDA: TDateField;
    qrserial_produtoSITUACAO: TIntegerField;
    qrserial_produtoCLIENTE: TStringField;
    qrserial_produtoCODNOTA: TStringField;
    qrserial_produtoCODITEM: TStringField;
    qrserial_produtoDATACOMPRA: TDateField;
    qrserial_produtoNUMERONOTA: TStringField;
    qrserial_produtoCODFORNECEDOR: TIntegerField;
    qrserial_produtoCODVENDA_ITEM: TIntegerField;
    qrserial_produtoFILTRO: TIntegerField;
    qrserial_produtoCODVENDA: TIntegerField;
    qrrentabilidade_item: TFDQuery;
    qrrentabilidade: TFDQuery;
    qrgrade_produto: TFDQuery;
    qrgrade_produtoCODIGO: TIntegerField;
    qrgrade_produtoCOD_PRODUTO: TIntegerField;
    qrgrade_produtoCOD_BARRAS: TStringField;
    qrgrade_produtoDESCRICAO: TStringField;
    qrgrade_produtoDEC_UNIDADE: TStringField;
    dts_qrgrade_produto: TDataSource;
    SDS_NFSE: TSimpleDataSet;
    DTS_NFSE: TDataSource;
    SDS_NFSE_ITENS: TSimpleDataSet;
    DTS_NFSE_ITENS: TDataSource;
    SDS_NFSENR_NOTA: TIntegerField;
    SDS_NFSECD_EMPRESA: TIntegerField;
    SDS_NFSECOD_CLIENTE: TIntegerField;
    SDS_NFSEFL_IMPRESSO: TStringField;
    SDS_NFSESERIE_NF: TStringField;
    SDS_NFSECD_CFOP: TIntegerField;
    SDS_NFSEDT_EMISSAO: TDateField;
    SDS_NFSEDT_LANCAMENTO: TDateField;
    SDS_NFSEVL_ACRESCIMOS: TFMTBCDField;
    SDS_NFSEVL_DESCONTOS: TFMTBCDField;
    SDS_NFSEVL_MERCADORIAS: TFMTBCDField;
    SDS_NFSEVL_SERVICOS: TFMTBCDField;
    SDS_NFSEVL_TOTAL: TFMTBCDField;
    SDS_NFSECOD_PGTO: TIntegerField;
    SDS_NFSEVL_AVISTA: TFMTBCDField;
    SDS_NFSEVL_PRAZO: TFMTBCDField;
    SDS_NFSEPESO_TOTAL: TFMTBCDField;
    SDS_NFSEQT_PECAS: TFMTBCDField;
    SDS_NFSECFOP_DESC: TStringField;
    SDS_NFSECD_TRANSPORTADORA: TIntegerField;
    SDS_NFSEUF_ORIGEM: TStringField;
    SDS_NFSEUF_DESTINO: TStringField;
    SDS_NFSEPESO_LIQUIDO: TFMTBCDField;
    SDS_NFSEVL_FRETE: TFMTBCDField;
    SDS_NFSEVL_SEGURO: TFMTBCDField;
    SDS_NFSEVL_BASE_ICM: TFMTBCDField;
    SDS_NFSEVL_ICM: TFMTBCDField;
    SDS_NFSEVL_BASE_ICM_SUBST: TFMTBCDField;
    SDS_NFSEVL_ICM_SUBST: TFMTBCDField;
    SDS_NFSEVL_IPI: TFMTBCDField;
    SDS_NFSEVL_ISS: TFMTBCDField;
    SDS_NFSETP_FRETE: TStringField;
    SDS_NFSEQT_VOLUMES: TFMTBCDField;
    SDS_NFSEESPECIE_VOLUMES: TStringField;
    SDS_NFSEMARCA_VOLUMES: TStringField;
    SDS_NFSENR_VOLUMES: TIntegerField;
    SDS_NFSECD_TIPOCOBR: TIntegerField;
    SDS_NFSECD_FUNCIONARIO: TIntegerField;
    SDS_NFSEDT_ATZ: TDateField;
    SDS_NFSEPLACA_TRANSP: TStringField;
    SDS_NFSEUF_PLACA_TRANSP: TStringField;
    SDS_NFSEVL_OUTROS: TFMTBCDField;
    SDS_NFSENR_PEDIDO: TIntegerField;
    SDS_NFSEVL_BASE_PIS: TFMTBCDField;
    SDS_NFSEVL_PIS: TFMTBCDField;
    SDS_NFSEVL_BASE_COFINS: TFMTBCDField;
    SDS_NFSEVL_COFINS: TFMTBCDField;
    SDS_NFSEVL_BASE_IPI: TFMTBCDField;
    SDS_NFSEVL_BASE_ISS: TFMTBCDField;
    SDS_NFSEVL_DESCONTO_ITEM: TFMTBCDField;
    SDS_NFSEVL_ISENTO_ITENS: TFMTBCDField;
    SDS_NFSEVL_OUTROS_ITENS: TFMTBCDField;
    SDS_NFSENR_PROTOCOLO_NFE: TStringField;
    SDS_NFSEDT_PROCESSAMENTO_NFE: TDateField;
    SDS_NFSESTATUS: TStringField;
    SDS_NFSENR_LOTE_NFE: TStringField;
    SDS_NFSENR_RECIBO_NFE: TStringField;
    SDS_NFSENR_PROTOCOLO_CANC_NFE: TStringField;
    SDS_NFSECHAVE_ACESSO_NFE: TStringField;
    SDS_NFSEVL_FRETE_CONHECIMENTO: TFMTBCDField;
    SDS_NFSEVL_ST_CONHECIMENTO: TFMTBCDField;
    SDS_NFSEVL_ICM_CONHECIMENTO: TFMTBCDField;
    SDS_NFSEBASE_ICM_PROPRIO_ST: TFMTBCDField;
    SDS_NFSEVL_ICM_PROPRIO_ST: TFMTBCDField;
    SDS_NFSEVL_BASE_ICM_SUBST_REAL: TFMTBCDField;
    SDS_NFSEVL_ICM_SUBST_REAL: TFMTBCDField;
    SDS_NFSECNPJ_TRANSP: TStringField;
    SDS_NFSENOME_TRANSP: TStringField;
    SDS_NFSEIE_TRANSP: TStringField;
    SDS_NFSEEND_TRANSPORTADOR: TStringField;
    SDS_NFSECIDADE_TRANSP: TStringField;
    SDS_NFSEUF_TRANSP: TStringField;
    SDS_NFSETP: TStringField;
    SDS_NFSEN_NOTA_ENTRADA: TStringField;
    SDS_NFSENOME_CLIENTE_FOR: TStringField;
    SDS_NFSECPF_CNPJ_CLIENTE_FORN: TStringField;
    SDS_NFSEIE_CLIENTE_FORN: TStringField;
    SDS_NFSEENDERECO_CLI_FORN: TStringField;
    SDS_NFSEEND_NUM_CLIENTE: TStringField;
    SDS_NFSECOD_IBGE: TStringField;
    SDS_NFSECEP_CLIENTE_FORN: TStringField;
    SDS_NFSEBAIRRO_CLIENTE_FORN: TStringField;
    SDS_NFSETIPO_PESSOA: TStringField;
    SDS_NFSETELEFONE: TStringField;
    SDS_NFSECIDADE_CLIENTE_FORN: TStringField;
    SDS_NFSEUF_CLIENTE_FORN: TStringField;
    SDS_NFSEIE_PRODUTOR: TStringField;
    SDS_NFSEPRODUTOR_RURAL: TStringField;
    SDS_NFSEPAGAMENTO: TStringField;
    SDS_NFSESTATUS_INUTILIZADO: TStringField;
    SDS_NFSESTATUS_CANCELADO: TStringField;
    SDS_NFSESTATUS_EMAIL: TStringField;
    SDS_NFSECOD_FORNECEDOR: TIntegerField;
    SDS_NFSEDEPEC: TStringField;
    SDS_NFSECHAVE2: TStringField;
    SDS_NFSESTATUS_RETORNO: TStringField;
    SDS_NFSEJUSTIFICATIVA_CANCEL_INUTIL: TStringField;
    SDS_NFSEMODELO: TStringField;
    SDS_NFSECORRECAO: TStringField;
    SDS_NFSE_ITENSNR_SEQUENCIA: TIntegerField;
    SDS_NFSE_ITENSNR_NOTA: TIntegerField;
    SDS_NFSE_ITENSCD_CLIENTE: TIntegerField;
    SDS_NFSE_ITENSCOD_PRODUTO: TStringField;
    SDS_NFSE_ITENSCOD_NCM: TStringField;
    SDS_NFSE_ITENSDESCRICAO_PRODUTO: TStringField;
    SDS_NFSE_ITENSPROD_SERV: TStringField;
    SDS_NFSE_ITENSQT_PRODUTO: TFMTBCDField;
    SDS_NFSE_ITENSVL_UNITARIO: TFMTBCDField;
    SDS_NFSE_ITENSVL_TOTAL: TFMTBCDField;
    SDS_NFSE_ITENSDT_LANCAMENTO: TDateField;
    SDS_NFSE_ITENSPESO_LIQUIDO: TFloatField;
    SDS_NFSE_ITENSCD_ATUALIZACAO: TIntegerField;
    SDS_NFSE_ITENSCST: TStringField;
    SDS_NFSE_ITENSPC_RED_BASE_ICM: TFMTBCDField;
    SDS_NFSE_ITENSALIQ_ICM: TFMTBCDField;
    SDS_NFSE_ITENSALIQ_ICM_SUBST: TFMTBCDField;
    SDS_NFSE_ITENSALIQ_IPI: TFMTBCDField;
    SDS_NFSE_ITENSALIQ_ISS: TFMTBCDField;
    SDS_NFSE_ITENSVL_BASE_ICM: TFMTBCDField;
    SDS_NFSE_ITENSVL_ICM: TFMTBCDField;
    SDS_NFSE_ITENSVL_ICM_SUBST: TFMTBCDField;
    SDS_NFSE_ITENSVL_IPI: TFMTBCDField;
    SDS_NFSE_ITENSVL_ISS: TFMTBCDField;
    SDS_NFSE_ITENSDT_ALTERACAO: TDateField;
    SDS_NFSE_ITENSDESC_UNIDADE: TStringField;
    SDS_NFSE_ITENSPERC_DESCONTO: TFMTBCDField;
    SDS_NFSE_ITENSVL_BASE_ICM_SUBST: TFMTBCDField;
    SDS_NFSE_ITENSCD_CONTA: TIntegerField;
    SDS_NFSE_ITENSCFOP: TStringField;
    SDS_NFSE_ITENSVL_DESCONTO: TFMTBCDField;
    SDS_NFSE_ITENSVL_CONTABIL: TFMTBCDField;
    SDS_NFSE_ITENSVL_OUTROS: TFMTBCDField;
    SDS_NFSE_ITENSVL_ISENTO: TFMTBCDField;
    SDS_NFSE_ITENSALIQ_PIS: TFMTBCDField;
    SDS_NFSE_ITENSVL_BASE_PIS: TFMTBCDField;
    SDS_NFSE_ITENSVL_PIS: TFMTBCDField;
    SDS_NFSE_ITENSALIQ_COFINS: TFMTBCDField;
    SDS_NFSE_ITENSVL_BASE_COFINS: TFMTBCDField;
    SDS_NFSE_ITENSVL_COFINS: TFMTBCDField;
    SDS_NFSE_ITENSVL_BASE_ISS: TFMTBCDField;
    SDS_NFSE_ITENSVL_BASE_IPI: TFMTBCDField;
    SDS_NFSE_ITENSALIQ_ICM_PROPRIO_ST: TFMTBCDField;
    SDS_NFSE_ITENSVL_BASE_ICM_PROPRIO_ST: TFMTBCDField;
    SDS_NFSE_ITENSVL_ICM_PROPRIO_ST: TFMTBCDField;
    SDS_NFSE_ITENSALIQ_ICM_SUBST_REAL: TFMTBCDField;
    SDS_NFSE_ITENSVL_BASE_ICM_SUBST_REAL: TFMTBCDField;
    SDS_NFSE_ITENSVL_ICM_SUBST_REAL: TFMTBCDField;
    SDS_NFSE_ITENSITEN: TIntegerField;
    SDS_NFSE_ITENSCODIGO_PROD: TIntegerField;
    SDS_NFSE_ITENSCST_PIS: TStringField;
    SDS_NFSE_ITENSCST_COFINS: TStringField;
    SDS_NFSE_ITENSCST_IPI: TStringField;
    SDS_UsuariosUTILIZA_NFSE: TStringField;
    SDS_UsuariosUTILIZA_NFE: TStringField;
    SDS_NFSEIM_CLIENT_FOR: TStringField;
    SDS_UsuariosBLOQUEIA_VENDA: TStringField;
    SDS_UsuariosOCULTA_GRID: TStringField;
    Sds_grupo_tribSIT_PIS_COMPRA: TStringField;
    Sds_grupo_tribSIT_COFINS_COMPRA: TStringField;
    SDS_NFECORRECAO: TStringField;
    SDS_NFEBXML: TBlobField;
    logEst: TFDQuery;
    LogPro: TFDQuery;
    SDS_UsuariosEXPORTA_VENDA: TStringField;
    Sds_Vendas_itens: TFDQuery;
    sds_vendas: TFDQuery;
    sds_vendasCOUNT_VENDAS: TAggregateField;
    Sds_grupo_tribCFOP_REV_EST: TStringField;
    Sds_grupo_tribCFOP_REV_INTER: TStringField;
    Sds_grupo_tribPERC_LUCRO_ST: TFMTBCDField;
    Coneccao: TFDConnection;
    SDS_NFCE: TFDQuery;
    SDS_NFCECD_EMPRESA: TIntegerField;
    SDS_NFCENR_NOTA: TIntegerField;
    SDS_NFCECOD_CLIENTE: TIntegerField;
    SDS_NFCEFL_IMPRESSO: TStringField;
    SDS_NFCESERIE_NF: TStringField;
    SDS_NFCECD_CFOP: TIntegerField;
    SDS_NFCEDT_EMISSAO: TDateField;
    SDS_NFCEDT_LANCAMENTO: TDateField;
    sds_vendasCODIGO: TIntegerField;
    sds_vendasUSUARIO: TStringField;
    sds_vendasDATA_PEDIDO: TDateField;
    sds_vendasDATA_ENTREGA: TDateField;
    sds_vendasCODIGO_CLIENTE: TIntegerField;
    sds_vendasNOME_CLIENTE: TStringField;
    sds_vendasPAGAMENTO: TStringField;
    sds_vendasSTATUS: TStringField;
    sds_vendasSITUACAO: TStringField;
    sds_vendasUSUARIO_ENTREGA: TStringField;
    sds_vendasTP: TStringField;
    sds_vendasOBSERVACOES: TStringField;
    sds_vendasCOD_VENDEDOR: TIntegerField;
    sds_vendasCOD_PAGTO: TIntegerField;
    sds_vendasN_CUPOM: TStringField;
    sds_vendasN_ECF: TStringField;
    sds_vendasCOD_EMPRESA: TIntegerField;
    sds_vendasHORA: TTimeField;
    sds_vendasCOD_ORCAMENTO: TIntegerField;
    sds_vendasCOD_PEDIDO: TIntegerField;
    sds_vendasCOD_OS: TSmallintField;
    sds_vendasNUM_NOTA: TIntegerField;
    sds_vendasSERIE_NOTA: TStringField;
    sds_vendasENDERECO: TStringField;
    sds_vendasCPF_CNPJ: TStringField;
    sds_vendasRG_IE: TStringField;
    sds_vendasFONE: TStringField;
    sds_vendasCIDADE: TStringField;
    sds_vendasBAIRRO: TStringField;
    sds_vendasN_PARTIDA: TStringField;
    sds_vendasPROPRIEDADE: TStringField;
    sds_vendasDATA_VACINA: TDateField;
    sds_vendasUF: TStringField;
    sds_vendasCOD_IBGE: TStringField;
    sds_vendasCEP: TStringField;
    sds_vendasNUMERO: TStringField;
    sds_vendasTIPO: TStringField;
    sds_vendasENTREGADOR: TStringField;
    sds_vendasTIPO_PEDIDO: TStringField;
    sds_vendasFECHADO: TStringField;
    sds_vendasMESA: TStringField;
    sds_vendasREFERENCIA: TStringField;
    sds_vendasCELULAR: TStringField;
    sds_vendasPROD_RURAL: TStringField;
    sds_vendasIE_PRODUTOR: TStringField;
    sds_vendasKM: TIntegerField;
    sds_vendasCHAVE_FP: TStringField;
    sds_vendasCHAVE_FP_CANCEL: TStringField;
    sds_vendasCUPON_CANCELADO: TStringField;
    sds_vendasCRZ: TIntegerField;
    sds_vendasCHEK_BOX: TStringField;
    sds_vendasANO: TIntegerField;
    sds_vendasMODELO_NF: TStringField;
    sds_vendasCFOP_NF: TStringField;
    Sds_Vendas_itensCODIGO: TIntegerField;
    Sds_Vendas_itensCODIGO_ID: TIntegerField;
    Sds_Vendas_itensITEN: TIntegerField;
    Sds_Vendas_itensCODIGO_PROD: TIntegerField;
    Sds_Vendas_itensCODIGO_PRODUTO: TStringField;
    Sds_Vendas_itensDESCRICAO_PRODUTO: TStringField;
    qrLMCBICO: TStringField;
    qrLMCABERTURA: TIntegerField;
    qrLMCENCERRANTE: TIntegerField;
    qrLMCCOMBUSTIVEL: TIntegerField;
    qrLMCDATA: TDateField;
    qrLMCSITUACAO: TIntegerField;
    qrLMCNR_NOTA: TIntegerField;
    qrLMCNOTAFISCAL1: TStringField;
    qrLMCNOTAFISCAL2: TStringField;
    qrLMCNOTAFISCAL3: TStringField;
    qrLMCNOTAFISCAL4: TStringField;
    qrLMCQUANTNF1: TIntegerField;
    qrLMCQUANTNF2: TIntegerField;
    qrLMCQUANTNF3: TIntegerField;
    qrLMCQUANTNF4: TIntegerField;
    qrLMCBICO1: TIntegerField;
    qrLMCBICO2: TIntegerField;
    qrLMCBICO3: TIntegerField;
    qrLMCBICO4: TIntegerField;
    qrLMCBICO5: TIntegerField;
    qrLMCBICO6: TIntegerField;
    qrLMCBICO7: TIntegerField;
    qrLMCBICO8: TIntegerField;
    qrLMCABER_BICO1: TIntegerField;
    qrLMCABER_BICO2: TIntegerField;
    qrLMCABER_BICO3: TIntegerField;
    qrLMCABER_BICO4: TIntegerField;
    qrLMCABER_BICO5: TIntegerField;
    qrLMCABER_BICO6: TIntegerField;
    qrLMCABER_BICO7: TIntegerField;
    qrLMCABER_BICO8: TIntegerField;
    qrLMCENC_BICO1: TIntegerField;
    qrLMCENC_BICO2: TIntegerField;
    qrLMCENC_BICO3: TIntegerField;
    qrLMCENC_BICO4: TIntegerField;
    qrLMCENC_BICO5: TIntegerField;
    qrLMCENC_BICO6: TIntegerField;
    qrLMCENC_BICO7: TIntegerField;
    qrLMCENC_BICO8: TIntegerField;
    qrLMCAFER_BICO1: TIntegerField;
    qrLMCAFER_BICO2: TIntegerField;
    qrLMCAFER_BICO3: TIntegerField;
    qrLMCAFER_BICO4: TIntegerField;
    qrLMCAFER_BICO5: TIntegerField;
    qrLMCAFER_BICO6: TIntegerField;
    qrLMCAFER_BICO7: TIntegerField;
    qrLMCAFER_BICO8: TIntegerField;
    qrLMCESTOQ_ABERTURA: TIntegerField;
    qrLMCESTOQ_ESCRITURAL: TIntegerField;
    qrLMCESTOQ_FECHAMENTO: TIntegerField;
    qrLMCPERDA_SOBRA: TIntegerField;
    qrLMCOBSERVACAO: TStringField;
    qrLMCPAGINA: TIntegerField;
    qrLMCID_BICO1: TStringField;
    qrLMCID_BICO2: TStringField;
    qrLMCID_BICO3: TStringField;
    qrLMCID_BICO4: TStringField;
    qrLMCID_BICO5: TStringField;
    qrLMCID_BICO6: TStringField;
    qrLMCID_BICO7: TStringField;
    qrLMCID_BICO8: TStringField;
    qrLMCTOTALVENDAS_ACU: TBCDField;
    qrrentabilidade_itemRENTABILIDADE: TIntegerField;
    qrrentabilidade_itemCOD_PRODUTO: TIntegerField;
    qrrentabilidade_itemPRODUTO: TStringField;
    qrrentabilidade_itemRENDIMENTO: TBCDField;
    qrrentabilidade_itemQUANTIDADE: TBCDField;
    qrrentabilidade_itemVALOR: TBCDField;
    qrrentabilidade_itemCODIGO: TIntegerField;
    qrENCERRANTESCODIGO: TIntegerField;
    qrENCERRANTESDATA: TDateField;
    qrENCERRANTESCOD_BICO: TIntegerField;
    qrENCERRANTESABERTURA: TIntegerField;
    qrENCERRANTESENCERRAMENTO: TIntegerField;
    qrENCERRANTESQUANTIDADE: TBCDField;
    qrENCERRANTESAFERICAO: TBCDField;
    qrENCERRANTESPRECO: TBCDField;
    qrENCERRANTESVALOR: TBCDField;
    qrENCERRANTESCOD_PRODUTO: TIntegerField;
    qrENCERRANTESSITUACAO: TStringField;
    SDS_NotasFiscais: TFDQuery;
    SDS_NotasFiscaisCODIGO_NOTA: TIntegerField;
    SDS_NotasFiscaisNUM_NOTA: TStringField;
    SDS_NotasFiscaisSERIE_NF: TStringField;
    SDS_NotasFiscaisCFOP_NOTA: TStringField;
    SDS_NotasFiscaisDATA_EMISSAO: TDateField;
    SDS_NotasFiscaisCOD_FORNECEDOR: TIntegerField;
    SDS_NotasFiscaisFORNECEDOR: TStringField;
    SDS_NotasFiscaisDATA_VENCIMENTO: TDateField;
    SDS_NotasFiscaisCNPJ: TStringField;
    SDS_NotasFiscaisIE: TStringField;
    SDS_NotasFiscaisUSUARIO_CADASTRO: TStringField;
    SDS_NotasFiscaisDATA_CADASTRO: TDateField;
    SDS_NotasFiscaisOBSERVACOES: TBlobField;
    SDS_NotasFiscaisMES: TStringField;
    SDS_NotasFiscaisANO: TStringField;
    SDS_NotasFiscaisCHAVE_NFE: TStringField;
    SDS_NotasFiscaisPROTOCOLO_NFE: TStringField;
    QConsultaServer: TFDQuery;
    sds_caixa: TFDQuery;
    sds_caixaSITUACAO: TIntegerField;
    sds_caixaCOD_USUARIO: TIntegerField;
    sds_caixaDATA_FECHAMENTO: TDateField;
    sds_caixaDATA_ABERTURA: TDateField;
    sds_caixaSEQ: TIntegerField;
    sds_caixaHORA_ABERT: TTimeField;
    sds_caixaHORA_FECHA: TTimeField;
    sds_nfe_itensVL_UNITARIO: TFMTBCDField;
    sds_nfce_itensVL_UNITARIO: TFMTBCDField;
    sds_LyBancosPERC_JUROS: TFMTBCDField;
    sds_LyBancosPERC_MULTA: TFMTBCDField;
    qrcfop: TFDQuery;
    qrproduto: TFDQuery;
    qrprodutoCODIGO: TIntegerField;
    qrprodutoCODIGO_BARRAS: TStringField;
    qrprodutoDESCRICAO: TStringField;
    qrprodutoABREVIADO: TStringField;
    qrpreco: TFDQuery;
    qrprecoCODIGO: TIntegerField;
    qrprecoCODPRODUTO: TIntegerField;
    qrprecoCODFILIAL: TIntegerField;
    qrprecoDATA_ALTERACAO: TDateField;
    qrprecoTIPO_REGIME: TIntegerField;
    qrprecoTIPO_CALCULO: TIntegerField;
    qrlote_rentabilidade: TFDQuery;
    qrlote_rentabilidadeLOTE: TStringField;
    qrlote_rentabilidadeSITUACAO: TIntegerField;
    qrlote_rentabilidadeCODPRODUTO: TIntegerField;
    qrlote_rentabilidadeUNIDADE: TStringField;
    qrlote_rentabilidadeDATA: TDateField;
    qrlote_rentabilidadeCODIGO_NOTA: TIntegerField;
    qrlote_rentabilidadeNOTAFISCAL: TStringField;
    qrlote_rentabilidadeQUANTIDADE: TBCDField;
    qrlote_rentabilidadeVALOR: TBCDField;
    qrlote_rentabilidadeOBSERVACAO: TStringField;
    qrfornecedor_codigo: TFDQuery;
    qrfornecedor_codigoCODFORNECEDOR: TIntegerField;
    qrfornecedor_codigoCODPRODUTO: TIntegerField;
    qrfornecedor_codigoCODIGO: TStringField;
    qrfornecedor_codigoPRECO: TBCDField;
    SDS_ChequesCHEK_BOX: TStringField;
    SDS_ChequesDESTINO: TStringField;
    SDS_ChequesCPF_CNPJ: TStringField;
    qrcfopCFOP: TStringField;
    qrcfopNATUREZA: TStringField;
    qrcfopTIPO: TIntegerField;
    SDS_Clientes: TFDQuery;
    SDS_ClientesCODIGO: TIntegerField;
    SDS_ClientesNOME_RS: TStringField;
    SDS_ClientesENDERECO: TStringField;
    SDS_ClientesCIDADE: TStringField;
    SDS_ClientesUF: TStringField;
    SDS_ClientesCEP: TStringField;
    SDS_ClientesTELEFONE: TStringField;
    SDS_ClientesTELEFONE2: TStringField;
    SDS_ClientesEMAIL: TStringField;
    SDS_ClientesNASCIMENTO_IA: TDateField;
    SDS_ClientesSEXO: TStringField;
    SDS_ClientesFOTO_LOGOMARCA: TBlobField;
    SDS_ClientesBAIRRO: TStringField;
    SDS_ClientesRG_IE: TStringField;
    SDS_ClientesFAX: TStringField;
    SDS_ClientesCELULAR: TStringField;
    SDS_ClientesUSERCAD: TStringField;
    SDS_ClientesDATACAD: TDateField;
    SDS_ClientesCPF_CNPJ: TStringField;
    SDS_ClientesOBSERVACOES: TBlobField;
    SDS_ClientesCREDIARIO: TStringField;
    SDS_ClientesESTADOCIVIL: TStringField;
    SDS_ClientesRESIDENCIA_SEDE: TStringField;
    SDS_ClientesPAI: TStringField;
    SDS_ClientesMAE: TStringField;
    SDS_ClientesNOME_CONJUGE: TStringField;
    SDS_ClientesCPF_CONJUGE: TStringField;
    SDS_ClientesNASCIMENTO_CONJUGE: TDateField;
    SDS_ClientesTRABALHO_CONJUGE: TStringField;
    SDS_ClientesPROFISSAO_CONJUGE: TStringField;
    SDS_ClientesLOCALTRABALHO: TStringField;
    SDS_ClientesPROFISSAO_RA: TStringField;
    SDS_ClientesTELEFONE_TRABALHO: TStringField;
    SDS_ClientesFAX_TRABALHO: TStringField;
    SDS_ClientesOBSERVACOES_TRABALHO: TBlobField;
    SDS_ClientesBANCO: TStringField;
    SDS_ClientesNOME_AGENCIA: TStringField;
    SDS_ClientesNUMERO_AGENCIA: TStringField;
    SDS_ClientesCONTA_CORRENTE: TIntegerField;
    SDS_ClientesNOME1_REFERENCIA: TStringField;
    SDS_ClientesNOME2_REFERENCIA: TStringField;
    SDS_ClientesTELEFONE1_REFERENCIA: TStringField;
    SDS_ClientesTELEFONE2_REFERENCIA: TStringField;
    SDS_ClientesBANCO_REFERENCIA: TStringField;
    SDS_ClientesAPELIDO: TStringField;
    SDS_ClientesTIPO: TStringField;
    SDS_ClientesOBSERVACOES_COMERCIAIS: TBlobField;
    SDS_ClientesOBSERVACOES_BANCO: TBlobField;
    SDS_ClientesPG_CREDIARIO: TStringField;
    SDS_ClientesPG_CHEQUE: TStringField;
    SDS_ClientesPG_FINANCEIRA: TStringField;
    SDS_ClientesNUMERO: TStringField;
    SDS_ClientesCOMPLEMENTO: TStringField;
    SDS_ClientesCOD_EMPRESA: TIntegerField;
    SDS_ClientesORGAO_EMISSOR: TStringField;
    SDS_ClientesDATA_EMISSAO_RG: TDateField;
    SDS_ClientesNATURALIDADE: TStringField;
    SDS_ClientesNATURALIDADE_UF: TStringField;
    SDS_ClientesCOD_CIDADE: TIntegerField;
    SDS_ClientesCOD_BAIRRO: TIntegerField;
    SDS_ClientesDATA_ALTERACAO: TDateField;
    SDS_ClientesCOD_ZONA: TIntegerField;
    SDS_ClientesPONTO_REFERENCIA: TStringField;
    SDS_ClientesATIVO: TStringField;
    SDS_ClientesCONTATO1: TStringField;
    SDS_ClientesCONTATO2: TStringField;
    SDS_ClientesCX_POSTAL: TStringField;
    SDS_ClientesTEMPO_RESIDENCIA: TStringField;
    SDS_ClientesNUMERO_DEPENDENTES: TIntegerField;
    SDS_ClientesENDERECO_REFERENCIA1: TStringField;
    SDS_ClientesENDERECO_REFERENCIA2: TStringField;
    SDS_ClientesDATA_ADMISSAO_REFERENCIA1: TDateField;
    SDS_ClientesDATA_ADMISSAO_REFERENCIA2: TDateField;
    SDS_ClientesRG_CONJUGUE: TStringField;
    SDS_ClientesDATA_ADMINSSAO_CONJUGUE: TDateField;
    SDS_ClientesFONE_CONJUGUE: TStringField;
    SDS_ClientesENDERECO_COBRANCA: TStringField;
    SDS_ClientesCEP_COBRANCA: TStringField;
    SDS_ClientesCOD_CIDADE_COBRANCA: TIntegerField;
    SDS_ClientesCX_POSTAL_COBRANCA: TStringField;
    SDS_ClientesINSC_MUNICIPAL: TStringField;
    SDS_ClientesPRODUTOR_RURAL: TStringField;
    SDS_ClientesINSC_PRODUTOR_RURAL: TStringField;
    SDS_ClientesCOD_BAIRRO_COBRANCA: TIntegerField;
    SDS_ClientesCIDADE_COBRANCA: TStringField;
    SDS_ClientesBAIRRO_COBRANCA: TStringField;
    SDS_ClientesUF_COBRANCA: TStringField;
    SDS_ClientesCONTA_BANCARIA: TStringField;
    SDS_ClientesNOME_PROPRIEDADE: TStringField;
    SDS_ClientesNOME_VETERINARIO: TStringField;
    SDS_ClientesFUNCIONARIO: TStringField;
    SDS_ClientesCTPS: TStringField;
    SDS_ClientesTESTA_CREDITO: TStringField;
    SDS_ClientesTESTA_LIMITE: TStringField;
    SDS_ClientesCOD_CONV: TIntegerField;
    SDS_ClientesFOTO: TStringField;
    SDS_ClientesDATA_ULTIMA_COMPRA: TDateField;
    SDS_ClientesFUNC_DATA_ADMISSAO: TDateField;
    SDS_ClientesFUNC_SITUACAO: TStringField;
    SDS_ClientesFUNC_DEMISSAO: TDateField;
    SDS_ClientesFUNC_CARGO: TStringField;
    SDS_ClientesCOD_IBGE: TStringField;
    SDS_ClientesAUTORIZADO1: TStringField;
    SDS_ClientesAUTORIZADO2: TStringField;
    SDS_ClientesAUTORIZADO3: TStringField;
    SDS_ClientesCPF_AUT1: TStringField;
    SDS_ClientesCPF_AUT2: TStringField;
    SDS_ClientesCPF_AUT3: TStringField;
    QBuscaItens: TFDQuery;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensCODIGO_ID: TIntegerField;
    QBuscaItensITEN: TIntegerField;
    QBuscaItensCODIGO_PROD: TIntegerField;
    QBuscaItensCODIGO_PRODUTO: TStringField;
    QBuscaItensDESCRICAO_PRODUTO: TStringField;
    SDS_SIMILARES: TFDQuery;
    SDS_SIMILARESCODIGO_SEQ: TIntegerField;
    SDS_SIMILARESCODIGO_PROD: TIntegerField;
    SDS_SIMILARESCODIGO_SIMILAR: TIntegerField;
    SDS_SIMILARESDESC_SIMILAR: TStringField;
    SDS_SIMILARESUSERCAD: TStringField;
    SDS_SIMILARESDATACAD: TDateField;
    sds_similares1DESC_SIMILAR: TStringField;
    sds_similares1USERCAD: TStringField;
    sds_similares1DATACAD: TDateField;
    sds_similares1REFERENCIA: TStringField;
    sds_similares2DESC_SIMILAR: TStringField;
    sds_similares2USERCAD: TStringField;
    sds_similares2DATACAD: TDateField;
    sds_similares2REFERENCIA: TStringField;
    Sds_produtos_cCODORIGINAL: TStringField;
    Sds_produtos_cCOD_PACOTE: TStringField;
    ACBrMail1: TACBrMail;
    ACBrNFe1: TACBrNFe;
    SDS_Conta_BancariaCOD_PLANO: TIntegerField;
    sds_nfe_itensCEST: TStringField;
    Sds_cest: TFDQuery;
    dts_cest: TDataSource;
    Sds_cestCEST: TStringField;
    Sds_cestNCM: TStringField;
    Sds_cestDESCRICAO: TStringField;
    sds_nfce_itensCEST: TStringField;
    SPC_NFCE: TSQLStoredProc;
    Sds_produtos_cUSA_RENTABILIDADE: TIntegerField;
    Sds_produtos_cUSA_SERIAL: TIntegerField;
    Sds_produtos_cUSA_GRADE: TIntegerField;
    Sds_produtos_cPRODUTO_PROPRIEDADE: TIntegerField;
    Sds_produtos_cMULTIP_FRACAO: TIntegerField;
    Sds_produtos_cDATA_REMARCACAO_VENDA: TDateField;
    Sds_produtos_cDATA_ULTIMA_COMPRA: TDateField;
    Sds_produtos_cALERTA_COPA: TStringField;
    Sds_produtos_cALERTA_COZINHA: TStringField;
    Sds_produtos_cANDROID_VISUALIZA: TStringField;
    Sds_produtos_cTEMPO_PREPARO: TTimeField;
    Sds_produtos_cSABORES: TIntegerField;
    Sds_produtos_cCEST: TStringField;
    FDTransaction1: TFDTransaction;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDGUIxScriptDialog1: TFDGUIxScriptDialog;
    IBTransaction: TFDTransaction;
    IBSQL: TFDQuery;
    Consulta: TFDQuery;
    IBTRServer: TFDTransaction;
    QLocaisEstoqueCODIGO: TIntegerField;
    QLocaisEstoqueDESCRICAO: TStringField;
    ibsqlCod: TFDQuery;
    ibsqlCodPRXCOD: TIntegerField;
    SDS_CONFIGURACOES: TFDQuery;
    SDS_CONFIGURACOESCODIGO: TIntegerField;
    SDS_CONFIGURACOESJUROS: TBCDField;
    SDS_CONFIGURACOESMSG_CUPOMFISCAL: TStringField;
    SDS_CONFIGURACOESNUMERO_SERIE: TStringField;
    SDS_CONFIGURACOESFORM_PEDIDOS: TStringField;
    SDS_CONFIGURACOESDDIP: TIntegerField;
    SDS_CONFIGURACOESDCP: TIntegerField;
    SDS_CONFIGURACOESJUROS_CHEQUE: TBCDField;
    SDS_CONFIGURACOESDIAS_CARENCIA: TIntegerField;
    SDS_CONFIGURACOESALTERA_PRECOVENDA: TStringField;
    SDS_CONFIGURACOESTIPO_DESCONTOVENDA: TStringField;
    SDS_CONFIGURACOESREGISTRADORA: TStringField;
    SDS_CONFIGURACOESCUPOM: TStringField;
    SDS_CONFIGURACOESCONTRATO: TStringField;
    SDS_CONFIGURACOESBOLETO: TStringField;
    SDS_CONFIGURACOESDUPLICATA: TStringField;
    SDS_CONFIGURACOESLIMITE_CREDITO: TStringField;
    SDS_CONFIGURACOESESTOQUE_NEGATIVO: TStringField;
    SDS_CONFIGURACOESPESQ_PADRAO: TStringField;
    SDS_CONFIGURACOESIMPRESSAO: TStringField;
    SDS_CONFIGURACOESCLIENTE_PADRAO: TIntegerField;
    SDS_CONFIGURACOESLOGOMARCA: TBlobField;
    SDS_CONFIGURACOESPRODUTO_PADRAO: TIntegerField;
    SDS_CONFIGURACOESCUPON_VINCULADO: TStringField;
    SDS_CONFIGURACOESOS_PRIORIDADE: TIntegerField;
    SDS_CONFIGURACOESOS_TIPO: TIntegerField;
    SDS_CONFIGURACOESOS_STATUS: TIntegerField;
    SDS_CONFIGURACOESPRECO_PADRAO: TStringField;
    SDS_CONFIGURACOESMULTA: TBCDField;
    SDS_CONFIGURACOESUSA_FRACAO: TStringField;
    SDS_CONFIGURACOESIMP_NOTA: TStringField;
    SDS_CONFIGURACOESTP_DESCONTO: TStringField;
    SDS_CONFIGURACOESLIB_PRECO_VENDA: TStringField;
    SDS_CONFIGURACOESDESC_MAXIMO_PERC: TIntegerField;
    SDS_CONFIGURACOESUTILIZA_NFE: TStringField;
    SDS_CONFIGURACOESIMP_VENDA: TStringField;
    SDS_CONFIGURACOESLEITOT_SERIAL: TStringField;
    SDS_CONFIGURACOESCLIENTE_VENDEDOR: TStringField;
    SDS_CONFIGURACOESDEBITOS_CLIENTE: TStringField;
    SDS_CONFIGURACOESDATA_TRAB: TDateField;
    SDS_CONFIGURACOESNFE_CERTIFICAO: TStringField;
    SDS_CONFIGURACOESNFE_SENHA: TStringField;
    SDS_CONFIGURACOESNFE_LOGOMARCA: TStringField;
    SDS_CONFIGURACOESNFE_CAMINHO_XML: TStringField;
    SDS_CONFIGURACOESUSA_GAVETA: TStringField;
    SDS_CONFIGURACOESOBS_FISCO: TStringField;
    SDS_CONFIGURACOESMODELO_ECF: TStringField;
    SDS_CONFIGURACOESPREVIEW: TStringField;
    SDS_CONFIGURACOESDEFAULT_LOCAL_ORIGEM: TIntegerField;
    SDS_CONFIGURACOESDEFAULT_LOCAL_DESTINO: TIntegerField;
    SDS_CONFIGURACOESDATA_INICIO_ESTOQUE: TDateField;
    SDS_CONFIGURACOESCOD_EMPRESA: TIntegerField;
    SDS_CONFIGURACOESCODIGO_LOCAL_ESTOQUE_VENDAS: TIntegerField;
    SDS_CONFIGURACOESLOCAL_BACKUP: TStringField;
    SDS_CONFIGURACOESTIPO_IMPRESSAO_DANFE: TStringField;
    SDS_CONFIGURACOESFORMA_EMISSAO_DANFE: TIntegerField;
    SDS_CONFIGURACOESAMBIENTE_DANFE: TStringField;
    SDS_CONFIGURACOESSERVIDOR_SMTP: TStringField;
    SDS_CONFIGURACOESPORTA_SMTP: TStringField;
    SDS_CONFIGURACOESUSUARIO_SMTP: TStringField;
    SDS_CONFIGURACOESSENHA_SMTP: TStringField;
    SDS_CONFIGURACOESASSUNTO_EMAIL_DANFE: TStringField;
    SDS_CONFIGURACOESSMTP_CONEXAO_SEGURA: TStringField;
    SDS_CONFIGURACOESMENSAGEM_EMAIL_DANFE: TStringField;
    SDS_CONFIGURACOESPASTA_CANCELADAS_DANFE: TStringField;
    SDS_CONFIGURACOESPASTA_INUTILIZADAS_DANFE: TStringField;
    SDS_CONFIGURACOESPASTA_TRANSMITIDAS_DANFE: TStringField;
    SDS_CONFIGURACOESFROM_SMTP: TStringField;
    SDS_CONFIGURACOESCAMINHO_ARQUIVOS_PDF: TStringField;
    SDS_CONFIGURACOESESTADO_NFE: TStringField;
    SDS_CONFIGURACOESSALVAR_LOG_DANFE: TStringField;
    SDS_CONFIGURACOESCAMINHO_CERTIFICADO: TStringField;
    SDS_CONFIGURACOESCST_CUPON: TStringField;
    SDS_CONFIGURACOESCFOP_CUPON: TStringField;
    SDS_CONFIGURACOESTP_DESC: TStringField;
    SDS_CONFIGURACOESPROX_LINHA: TStringField;
    SDS_CONFIGURACOESUSUARIO_FP: TStringField;
    SDS_CONFIGURACOESSENHA_FP: TStringField;
    SDS_CONFIGURACOESUSA_FP: TStringField;
    SDS_CONFIGURACOESCHS: TStringField;
    SDS_CONFIGURACOESCONCENTRADOR: TStringField;
    SDS_CONFIGURACOESCONCENT_PORTA: TStringField;
    SDS_CONFIGURACOESUNIT_TOTAL: TStringField;
    SDS_CONFIGURACOESVALOR_GERENCIAL: TIntegerField;
    SDS_CONFIGURACOESTEXTO_GERENCIAL: TStringField;
    SDS_CONFIGURACOESTEXTO_GERENCIAL1: TStringField;
    SDS_CONFIGURACOESTEXTO_GERENCIAL2: TStringField;
    SDS_CONFIGURACOESTEXTO_GERENCIAL4: TStringField;
    SDS_CONFIGURACOESUSA_GERENCIAL: TStringField;
    SDS_CONFIGURACOESCON_CCEXTRA: TStringField;
    SDS_CONFIGURACOESCON_HORADIARIA: TStringField;
    SDS_CONFIGURACOESPLANO_VENDA_AV: TIntegerField;
    SDS_CONFIGURACOESPLANO_VENDA_AP: TIntegerField;
    SDS_CONFIGURACOESPLANO_OS_AV: TIntegerField;
    SDS_CONFIGURACOESPLANO_OS_AP: TIntegerField;
    SDS_CONFIGURACOESPLANO_OUTRAS_ENTRADAS: TIntegerField;
    SDS_CONFIGURACOESPLANO_OUTRAS_SAIDAS: TIntegerField;
    SDS_CONFIGURACOESPLANO_RECEBIMENTO_CREDIARIO: TIntegerField;
    SDS_CONFIGURACOESPLANO_DUPLICATA_NFE: TIntegerField;
    SDS_CONFIGURACOESECF_MODELO: TStringField;
    SDS_CONFIGURACOESECF_PORTA: TStringField;
    SDS_CONFIGURACOESECF_TIPO: TStringField;
    SDS_CONFIGURACOESECF_MARCA: TStringField;
    SDS_CONFIGURACOESABRE_VENDA: TStringField;
    SDS_CONFIGURACOESCAMINHO_RELATORIO_DANFE: TStringField;
    SDS_CONFIGURACOESTOKEN: TStringField;
    SDS_CONFIGURACOESID_TOKEN: TStringField;
    SDS_CONFIGURACOESNFCE_OFF: TStringField;
    SDS_CONFIGURACOESTP_PESQUISA: TStringField;
    SDS_CONFIGURACOESCAIXA_UNICO: TStringField;
    SDS_CONFIGURACOESSERVICO_NFCE: TIntegerField;
    SDS_CONFIGURACOESIMP_CODIGO_FORNECEDOR: TStringField;
    SDS_CONFIGURACOESEXCLUI_SERV_NFE: TStringField;
    SDS_CONFIGURACOESPLANO_COMP_IMOV_CR: TIntegerField;
    SDS_CONFIGURACOESPLANO_COMP_IMOV_DB: TIntegerField;
    SDS_CONFIGURACOESPLANO_VENDA_IMOV_CR: TIntegerField;
    SDS_CONFIGURACOESPLANO_VENDA_IMOV_DB: TIntegerField;
    SDS_CONFIGURACOESPLANO_COMISSAO_PAGAR_CR: TIntegerField;
    SDS_CONFIGURACOESPLANO_COMISSAO_PAGAR_DB: TIntegerField;
    SDS_CONFIGURACOESPREVIEW_NFE: TStringField;
    SDS_CONFIGURACOESDADOS_CONTRIBUINTE: TStringField;
    SDS_CONFIGURACOESSOMA_PC_LUCRO_ENTRADA: TStringField;
    SDS_CONFIGURACOESURLPFX: TStringField;
    SDS_CONFIGURACOESCRYPTLIB: TStringField;
    SDS_CONFIGURACOESHTTPLIB: TStringField;
    SDS_CONFIGURACOESXMLSIGNLIB: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA1: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA2: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA3: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA4: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA5: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA6: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA7: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA8: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA10: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA20: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA30: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA40: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA50: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA60: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA70: TStringField;
    SDS_CONFIGURACOESPLANO_CONTA80: TStringField;
    SDS_CONFIGURACOESDESCONTO_MAXIMO_FV: TFMTBCDField;
    SDS_CONFIGURACOESCON_VALORMINUTO: TFMTBCDField;
    SDS_CONFIGURACOESCON_VALORCEXTRA: TFMTBCDField;
    SDS_CONFIGURACOESMARGEM_LUCRO: TFMTBCDField;
    SDS_CONFIGURACOESCAMINHO_RELATORIO_SCHEMAS: TStringField;
    SDS_CONFIGURACOESFORMATO_DO_ALERTA: TStringField;
    SDS_CONFIGURACOESTIPO_EMISSAO_NFE: TStringField;
    SDS_CONFIGURACOESCOD_PAGTO_PADRAO: TStringField;
    SDS_ClientesREMUNERACAO: TFMTBCDField;
    SDS_ClientesSOCIO1: TStringField;
    SDS_ClientesCPFSOCIO1: TStringField;
    SDS_ClientesDATANASCSOCIO1: TDateField;
    SDS_ClientesSOCIO2: TStringField;
    SDS_ClientesCPFSOCIO2: TStringField;
    SDS_ClientesDATANASCSOCIO2: TDateField;
    SDS_ClientesSOCIO3: TStringField;
    SDS_ClientesCPFSOCIO3: TStringField;
    SDS_ClientesDATANASCSOCIO3: TDateField;
    SDS_ClientesSOCIO4: TStringField;
    SDS_ClientesCPFSOCIO4: TStringField;
    SDS_ClientesDATANASCSOCIO4: TDateField;
    SDS_ClientesDATAFUNDACAO: TDateField;
    SDS_ClientesCAPITALSOCIAL: TFMTBCDField;
    SDS_ClientesFATURAMENTOBRUTO: TFMTBCDField;
    SDS_ClientesREGJUNTACOM: TStringField;
    SDS_ClientesENDSOCIO1: TStringField;
    SDS_ClientesRGSOCIO1: TIntegerField;
    SDS_ClientesENDSOCIO2: TStringField;
    SDS_ClientesRGSOCIO2: TIntegerField;
    SDS_ClientesENDSOCIO3: TStringField;
    SDS_ClientesRGSOCIO3: TIntegerField;
    SDS_ClientesENDSOCIO4: TStringField;
    SDS_ClientesRGSOCIO4: TIntegerField;
    SDS_ClientesDOCUMENTOS: TBlobField;
    SDS_ClientesIE: TStringField;
    SDS_ClientesPARENTESCO_AUT1: TStringField;
    SDS_ClientesPARENTESCO_AUT2: TStringField;
    SDS_ClientesPARENTESCO_AUT3: TStringField;
    SDS_ClientesPOSSUE_LAUDO: TStringField;
    SDS_ClientesVENCIMENTO_LAUDO: TDateField;
    SDS_ClientesVALOR_ALUGUEL: TFMTBCDField;
    SDS_ClientesRENDA_CONJUGUE: TFMTBCDField;
    SDS_ClientesLIMITE_DE_CREDITO: TFMTBCDField;
    SDS_ClientesFUNC_SALARIO: TFMTBCDField;
    qrgrade_produtoPRECO_VENDA_GRADE: TFMTBCDField;
    qrgrade_produtoESTOQUE: TFMTBCDField;
    qrgrade_produtoCOR: TStringField;
    sds_caixaSALDO: TFMTBCDField;
    qrprecoCP_PIPI: TSingleField;
    qrprecoCP_VIPI: TSingleField;
    qrprecoCP_PRETENCAO: TSingleField;
    qrprecoCP_VRETENCAO: TSingleField;
    qrprecoCP_PFRETE: TSingleField;
    qrprecoCP_VFRETE: TSingleField;
    qrprecoCP_PICMS: TSingleField;
    qrprecoCP_VICMS: TSingleField;
    qrprecoCP_PREDUCAO: TSingleField;
    qrprecoCP_VREDUCAO: TSingleField;
    qrprecoCP_PPIS: TSingleField;
    qrprecoCP_VPIS: TSingleField;
    qrprecoCP_PCOFINS: TSingleField;
    qrprecoCP_VCOFINS: TSingleField;
    qrprecoCP_PSEGURO: TSingleField;
    qrprecoCP_VSEGURO: TSingleField;
    qrprecoCP_POUTROS: TSingleField;
    qrprecoCP_VOUTROS: TSingleField;
    qrprecoVD_PICMS: TSingleField;
    qrprecoVD_VICMS: TSingleField;
    qrprecoVD_PREDUCAO: TSingleField;
    qrprecoVD_VREDUCAO: TSingleField;
    qrprecoVD_PSIMPLES: TSingleField;
    qrprecoVD_VSIMPLES: TSingleField;
    qrprecoVD_PPIS: TSingleField;
    qrprecoVD_VPIS: TSingleField;
    qrprecoVD_PCOFINS: TSingleField;
    qrprecoVD_VCOFINS: TSingleField;
    qrprecoVD_PIRPJ: TSingleField;
    qrprecoVD_VIRPJ: TSingleField;
    qrprecoVD_PCONTSOCIAL: TSingleField;
    qrprecoVD_VCONTSOCIAL: TSingleField;
    qrprecoVD_PDFIXA: TSingleField;
    qrprecoVD_VDFIXA: TSingleField;
    qrprecoVD_PCOMISSAO: TSingleField;
    qrprecoVD_VCOMISSAO: TSingleField;
    qrprecoVD_PDESCMAX: TSingleField;
    qrprecoVD_VDESCMAX: TSingleField;
    qrprecoPCUSTO_COMPRA: TSingleField;
    qrprecoVCUSTO_COMPRA: TSingleField;
    qrprecoPCUSTO_VENDA: TSingleField;
    qrprecoVCUSTO_VENDA: TSingleField;
    qrprecoPRECO_LIQUIDO: TSingleField;
    qrprecoPRECO_UNITARIO: TSingleField;
    qrprecoFRACAO: TSingleField;
    qrprecoPMARGEM1: TSingleField;
    qrprecoPMARGEM2: TSingleField;
    qrprecoPMARGEM3: TSingleField;
    qrprecoPMARGEM4: TSingleField;
    qrprecoPMARGEM5: TSingleField;
    qrprecoPRECOVAREJO1: TSingleField;
    qrprecoPRECOVAREJO2: TSingleField;
    qrprecoPRECOVAREJO3: TSingleField;
    qrprecoPRECOVAREJO4: TSingleField;
    qrprecoPRECOVAREJO5: TSingleField;
    qrprecoPMARGEMATACADO1: TSingleField;
    qrprecoPMARGEMATACADO2: TSingleField;
    qrprecoPMARGEMATACADO3: TSingleField;
    qrprecoPMARGEMATACADO4: TSingleField;
    qrprecoPMARGEMATACADO5: TSingleField;
    qrprecoPRECOATACADO1: TSingleField;
    qrprecoPRECOATACADO2: TSingleField;
    qrprecoPRECOATACADO3: TSingleField;
    qrprecoPRECOATACADO4: TSingleField;
    qrprecoPRECOATACADO5: TSingleField;
    qrprecoVCUSTO_COMPRA_ANT: TSingleField;
    qrprecoPRECOVAREJO1_ANT: TSingleField;
    qrprecoCUSTO_COMPRA: TFMTBCDField;
    qrprecoVALOR_ULTIMA_COMPRA: TFMTBCDField;
    qrprecoLUCRO: TFMTBCDField;
    qrprecoPRECO_VENDA: TFMTBCDField;
    qrprecoICMS_ENTRADA_P: TFMTBCDField;
    qrprecoICMS_SAIDA_P: TFMTBCDField;
    qrprecoCUSTO_OPERACIONAL_P: TFMTBCDField;
    qrprecoOUTROS_IMPOSTOS_P: TFMTBCDField;
    qrprecoCOMISSAO_P: TFMTBCDField;
    qrprecoLUCRO_P: TFMTBCDField;
    qrprecoTOTAL_CUSTO: TFMTBCDField;
    qrprecoTOTAL_CUSTO_P: TFMTBCDField;
    qrprecoPRECO_AUTOMATICO: TIntegerField;
    qrprecoALTERA_AUTOMATICO: TIntegerField;
    qrprecoNOVO_PRECO_VENDA: TFMTBCDField;
    qrprecoNOVO_PRECO_CUSTO: TFMTBCDField;
    qrprecoDESCONTO: TFMTBCDField;
    qrprecoFRETE: TFMTBCDField;
    qrprecoSEGURO: TFMTBCDField;
    qrprecoOUTRAS_DESPESAS: TFMTBCDField;
    qrprecoIPI_P: TFMTBCDField;
    qrprecoIPI: TFMTBCDField;
    qrprecoPIS_P: TFMTBCDField;
    qrprecoPIS: TFMTBCDField;
    qrprecoCOFINS_P: TFMTBCDField;
    qrprecoCOFINS: TFMTBCDField;
    qrprecoCONTRIBUICAO_SOCIAL_P: TFMTBCDField;
    qrprecoCONTRIBUICAO_SOCIAL: TFMTBCDField;
    qrprecoPIS_ENTRADA_P: TFMTBCDField;
    qrprecoPIS_ENTRADA: TFMTBCDField;
    qrprecoCOFINS_ENTRADA_P: TFMTBCDField;
    qrprecoCOFINS_ENTRADA: TFMTBCDField;
    qrprecoCONTRIBUICAO_SOCIAL_ENTRADA_P: TFMTBCDField;
    qrprecoSUBSTITUICAO_TRIBUTARIA: TFMTBCDField;
    qrprecoCP_VPRECOCOMPRA: TSingleField;
    qrprecoFRETE_IPI_OUTRAS: TFMTBCDField;
    qrprecoICMS_ENTRADA: TFMTBCDField;
    qrprecoICMS_SAIDA: TFMTBCDField;
    qrprecoCUSTO_OPERACIONAL: TFMTBCDField;
    qrprecoOUTROS_IMPOSTOS: TFMTBCDField;
    qrprecoCOMISSAO: TFMTBCDField;
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
    QBuscaItensCST_VENDA: TStringField;
    QBuscaItensNCM_SH_1: TStringField;
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
    qrLMCPRECO: TFMTBCDField;
    qrLMCQUANTIDADE: TFMTBCDField;
    qrLMCTOTAL: TFMTBCDField;
    qrLMCQTEVEND_1: TIntegerField;
    qrLMCQTEVEND_2: TIntegerField;
    qrLMCQTEVEND_3: TIntegerField;
    qrLMCQTEVEND_4: TIntegerField;
    qrLMCQTEVEND_5: TIntegerField;
    qrLMCQTEVEND_6: TIntegerField;
    qrLMCQTEVEND_7: TIntegerField;
    qrLMCQTEVEND_8: TIntegerField;
    qrLMCTOTALVEND_1: TFMTBCDField;
    qrLMCTOTALVEND_2: TFMTBCDField;
    qrLMCTOTALVEND_3: TFMTBCDField;
    qrLMCTOTALVEND_4: TFMTBCDField;
    qrLMCTOTALVEND_5: TFMTBCDField;
    qrLMCTOTALVEND_6: TFMTBCDField;
    qrLMCTOTALVEND_7: TFMTBCDField;
    qrLMCTOTALVEND_8: TFMTBCDField;
    qrLMCVENDAS_DIA: TLargeintField;
    qrLMCRECEBIDO_DIA: TLargeintField;
    qrLMCDISPONIVEL_DIA: TLargeintField;
    qrLMCTOTALVENDAS_DIA: TFMTBCDField;
    qrserial_produtoESTOQUE: TFMTBCDField;
    qrserial_produtoPRECOCUSTO: TFMTBCDField;
    qrserial_produtoPRECOVENDA: TFMTBCDField;
    qrcfopICMS: TFMTBCDField;
    qrcfopISS: TFMTBCDField;
    qrcfopOBS1: TStringField;
    qrcfopOBS2: TStringField;
    qrcfopOBS3: TStringField;
    qrcfopOBS4: TStringField;
    qrcfopFILTRO: TIntegerField;
    qrcfopVALOR1: TFMTBCDField;
    qrcfopVALOR2: TFMTBCDField;
    qrcfopVALOR3: TFMTBCDField;
    qrcfopVALOR4: TFMTBCDField;
    qrcfopVALOR5: TFMTBCDField;
    qrcfopVALOR6: TFMTBCDField;
    qrcfopVALOR7: TFMTBCDField;
    qrcfopVALOR8: TFMTBCDField;
    qrcfopVALOR9: TFMTBCDField;
    qrcfopVALOR10: TFMTBCDField;
    qrcfopST: TStringField;
    qrcfopCLASSIFICACAO_FISCAL: TStringField;
    qrcfopREDUCAO_ICMS: TFMTBCDField;
    qrcfopMARGEM_AGREGADA: TFMTBCDField;
    qrcfopSIMPLIFICADO: TStringField;
    qrcfopCAIXA: TIntegerField;
    qrcfopFATURAMENTO: TIntegerField;
    QBandeiraDESCRICAO: TStringField;
    QBandeiraATIVO: TStringField;
    QBandeiraTAXA_CREDITO: TFloatField;
    QBandeiraTAXA_DEBITO: TFloatField;
    QBandeiraDIAS_CREDITO: TIntegerField;
    QBandeiraDIAS_DEBITO: TIntegerField;
    QBandeiraTIPO_CARTAO: TStringField;
    QBandeiraCODIGO_TEF: TStringField;
    QBandeiraADMINISTRADORA: TStringField;
    QAdmCartaoDESCRICAO: TStringField;
    QAdmCartaoCODIGO_TEF: TStringField;
    sds_vendasVALOR_ITENS: TFMTBCDField;
    sds_vendasENC_FINANCEIRO: TFMTBCDField;
    sds_vendasVALOR_DESCONTO: TFMTBCDField;
    sds_vendasVALOR_TOTAL: TFMTBCDField;
    sds_vendasVALOR_COMISSAO: TFMTBCDField;
    sds_vendasVALOR_ACRESCIMOS: TFMTBCDField;
    sds_vendasQUANT_VENDIDA: TBCDField;
    sds_vendasSALDO_VENDIDO: TBCDField;
    sds_vendasMED_VETERINARIO: TStringField;
    sds_vendasVALOR_AVISTA: TFMTBCDField;
    sds_vendasVALOR_PRAZO: TFMTBCDField;
    sds_vendasVALOR_PAGO: TFMTBCDField;
    sds_vendasVALOR_TROCO: TFMTBCDField;
    sds_vendasVLR_PIS: TFMTBCDField;
    sds_vendasVLR_COFINS: TFMTBCDField;
    sds_vendasCOD_OS_AUTO: TIntegerField;
    Sds_Vendas_itensPRECO_UNITARIO: TFMTBCDField;
    Sds_Vendas_itensDESCONTO: TFMTBCDField;
    Sds_Vendas_itensQUANTIDADE: TBCDField;
    Sds_Vendas_itensPRECO_TOTAL: TFMTBCDField;
    Sds_Vendas_itensCOMISSAO: TFMTBCDField;
    Sds_Vendas_itensDEV: TStringField;
    Sds_Vendas_itensQNT_DEV: TBCDField;
    Sds_Vendas_itensVAL_DEV: TFMTBCDField;
    Sds_Vendas_itensENC_FINANCEIRO: TFMTBCDField;
    Sds_Vendas_itensUNIDADE: TStringField;
    Sds_Vendas_itensSIT_TRIBUTARIA: TStringField;
    Sds_Vendas_itensVENDEDOR: TIntegerField;
    Sds_Vendas_itensFRACAO: TIntegerField;
    Sds_Vendas_itensCOD_NCM: TStringField;
    Sds_Vendas_itensPROD_SERV: TStringField;
    Sds_Vendas_itensPERC_ISS: TFMTBCDField;
    Sds_Vendas_itensBASE_ISS: TFMTBCDField;
    Sds_Vendas_itensVL_ISS: TFMTBCDField;
    Sds_Vendas_itensPERC_ICM: TFMTBCDField;
    Sds_Vendas_itensBASE_ICMS: TFMTBCDField;
    Sds_Vendas_itensVL_ICM: TFMTBCDField;
    Sds_Vendas_itensPERC_IPI: TFMTBCDField;
    Sds_Vendas_itensBASE_IPI: TFMTBCDField;
    Sds_Vendas_itensVL_IPI: TFMTBCDField;
    Sds_Vendas_itensPERC_COFINS: TFMTBCDField;
    Sds_Vendas_itensBASE_COFINS: TFMTBCDField;
    Sds_Vendas_itensVL_COFINS: TFMTBCDField;
    Sds_Vendas_itensPERC_ICMS_SUBST: TFMTBCDField;
    Sds_Vendas_itensBASE_ICMS_SUBST: TFMTBCDField;
    Sds_Vendas_itensVL_ICMS_SUBST: TFMTBCDField;
    Sds_Vendas_itensPERC_PIS: TFMTBCDField;
    Sds_Vendas_itensBASE_PIS: TFMTBCDField;
    Sds_Vendas_itensVL_PIS: TFMTBCDField;
    Sds_Vendas_itensIMPRIME: TStringField;
    Sds_Vendas_itensCOD_EMPRESA: TIntegerField;
    Sds_Vendas_itensID_BICO: TIntegerField;
    Sds_Vendas_itensID_TANQUE: TStringField;
    Sds_Vendas_itensID_BOMBA: TStringField;
    Sds_Vendas_itensBICO: TStringField;
    SDS_NotasFiscaisTOTAL_NOTA: TFMTBCDField;
    SDS_NotasFiscaisBASE_CALCULO_ICMS: TFMTBCDField;
    SDS_NotasFiscaisVALOR_ICMS: TFMTBCDField;
    SDS_NotasFiscaisBASE_CALC_ICMS_SUBST: TFMTBCDField;
    SDS_NotasFiscaisVALOR_ICMS_SUBST: TFMTBCDField;
    SDS_NotasFiscaisVALOR_FRETE: TFMTBCDField;
    SDS_NotasFiscaisVALOR_SEGURO: TFMTBCDField;
    SDS_NotasFiscaisVALOR_DESCONTO: TFMTBCDField;
    SDS_NotasFiscaisVALOR_OUTRAS_DESPESAS: TFMTBCDField;
    SDS_NotasFiscaisVALOR_IPI: TFMTBCDField;
    SDS_NotasFiscaisVALOR_TOTAL_PRODUTOS: TFMTBCDField;
    SDS_NotasFiscaisVALOR_TOTAL_ITENS_NOTA: TFMTBCDField;
    SDS_NotasFiscaisVLR_ICMS_GARANTIDO: TFMTBCDField;
    SDS_NotasFiscaiscod_pagto: TIntegerField;
    SDS_NotasFiscaisTP: TStringField;
    SDS_NotasFiscaisENDERECO_CLI_FORN: TStringField;
    SDS_NotasFiscaisEND_NUM_CLIENTE: TStringField;
    SDS_NotasFiscaisCOD_IBGE: TStringField;
    SDS_NotasFiscaisCEP_CLIENTE_FORN: TStringField;
    SDS_NotasFiscaisBAIRRO_CLIENTE_FORN: TStringField;
    SDS_NotasFiscaisTIPO_PESSOA: TStringField;
    SDS_NotasFiscaisTELEFONE: TStringField;
    SDS_NotasFiscaisCIDADE_CLIENTE_FORN: TStringField;
    SDS_NotasFiscaisUF_CLIENTE_FORN: TStringField;
    SDS_NotasFiscaisDESC_PAGTO: TStringField;
    SDS_NotasFiscaisVALOR_AVISTA: TFMTBCDField;
    SDS_NotasFiscaisVALOR_PRAZO: TFMTBCDField;
    SDS_NotasFiscaispagamento: TStringField;
    SDS_NotasFiscaisMODELO: TStringField;
    SDS_NotasFiscaisEMITENTE: TStringField;
    SDS_NotasFiscaisVALOR_COFINS: TFMTBCDField;
    SDS_NotasFiscaisVALOR_PIS: TFMTBCDField;
    SDS_NotasFiscaisVALOR_PIS_ST: TFMTBCDField;
    SDS_NotasFiscaisVALOR_COFIS_ST: TFMTBCDField;
    SDS_NotasFiscaisPERC_ICMS: TFMTBCDField;
    SDS_NotasFiscaisCST: TStringField;
    SDS_NotasFiscaisSUB_SERIE: TStringField;
    SDS_NotasFiscaisTRANSP_NOME: TStringField;
    SDS_NotasFiscaisTRANSP_PLACA: TStringField;
    SDS_NotasFiscaisTRANSP_PLACAUF: TStringField;
    SDS_NotasFiscaisTRANSP_IE: TStringField;
    SDS_NotasFiscaisTRANSP_CNPJ: TStringField;
    SDS_NotasFiscaisTRANSP_ENDERECO: TStringField;
    SDS_NotasFiscaisTRANSP_CIDADE: TStringField;
    SDS_NotasFiscaisTRANSP_UF: TStringField;
    SDS_NotasFiscaisTRANSP_QTDE: TFMTBCDField;
    SDS_NotasFiscaisTRANSP_ESPECIE: TStringField;
    SDS_NotasFiscaisTRANSP_MARCA: TStringField;
    SDS_NotasFiscaisTRANSP_NUMERO: TStringField;
    SDS_NotasFiscaisTRANSP_PESOBRUTO: TFMTBCDField;
    SDS_NotasFiscaisTRANSP_PESOLIQUIDO: TFMTBCDField;
    SDS_NotasFiscaisOBS1: TStringField;
    SDS_NotasFiscaisOBS2: TStringField;
    SDS_NotasFiscaisOBS3: TStringField;
    SDS_NotasFiscaisOBS4: TStringField;
    SDS_NotasFiscaisOBS5: TStringField;
    SDS_NotasFiscaisOBS6: TStringField;
    SDS_NotasFiscaisOBS7: TStringField;
    SDS_NotasFiscaisOBS8: TStringField;
    SDS_NotasFiscaisSITUACAO: TIntegerField;
    SDS_NotasFiscaisITENS2: TIntegerField;
    SDS_NotasFiscaisTIPO: TStringField;
    SDS_NotasFiscaisNOTA_FISCAL: TStringField;
    SDS_NotasFiscaisICMS_ISENTO: TFMTBCDField;
    SDS_NotasFiscaisICMS_OUTRAS: TFMTBCDField;
    SDS_NotasFiscaisDESCONTO_INCIDENTE: TIntegerField;
    SDS_NotasFiscaisITEM_FRETE_VALOR: TFMTBCDField;
    SDS_NotasFiscaisITEM_FRETE_BASE: TFMTBCDField;
    SDS_NotasFiscaisITEM_FRETE_ALIQUOTA: TFMTBCDField;
    SDS_NotasFiscaisITEM_FRETE_ICMS: TFMTBCDField;
    SDS_NotasFiscaisITEM_SEGURO_VALOR: TFMTBCDField;
    SDS_NotasFiscaisITEM_SEGURO_BASE: TFMTBCDField;
    SDS_NotasFiscaisITEM_SEGURO_ALIQUOTA: TFMTBCDField;
    SDS_NotasFiscaisITEM_SEGURO_ICMS: TFMTBCDField;
    SDS_NotasFiscaisITEM_PIS_VALOR: TFMTBCDField;
    SDS_NotasFiscaisITEM_PIS_BASE: TFMTBCDField;
    SDS_NotasFiscaisITEM_PIS_ALIQUOTA: TFMTBCDField;
    SDS_NotasFiscaisITEM_PIS_ICMS: TFMTBCDField;
    SDS_NotasFiscaisITEM_COMPLEMENTO_VALOR: TFMTBCDField;
    SDS_NotasFiscaisITEM_COMPLEMENTO_BASE: TFMTBCDField;
    SDS_NotasFiscaisITEM_COMPLEMENTO_ALIQUOTA: TFMTBCDField;
    SDS_NotasFiscaisITEM_COMPLEMENTO_ICMS: TFMTBCDField;
    SDS_NotasFiscaisITEM_SERVICO_VALOR: TFMTBCDField;
    SDS_NotasFiscaisITEM_SERVICO_BASE: TFMTBCDField;
    SDS_NotasFiscaisITEM_SERVICO_ALIQUOTA: TFMTBCDField;
    SDS_NotasFiscaisITEM_SERVICO_ICMS: TFMTBCDField;
    SDS_NotasFiscaisITEM_OUTRAS_VALOR: TFMTBCDField;
    SDS_NotasFiscaisITEM_OUTRAS_BASE: TFMTBCDField;
    SDS_NotasFiscaisITEM_OUTRAS_ALIQUOTA: TFMTBCDField;
    SDS_NotasFiscaisITEM_OUTRAS_ICMS: TFMTBCDField;
    SDS_NotasFiscaisITEM_ESPECIAL_TOTAL: TFMTBCDField;
    SDS_NotasFiscaisITEM_ESPECIAL_VALOR: TFMTBCDField;
    SDS_NotasFiscaisBASEICMS_PRODUTOS: TIntegerField;
    SDS_NotasFiscaisCONF_ITEM_ESPECIAL: TFMTBCDField;
    SDS_NotasFiscaisCREDITO_ICMS: TFMTBCDField;
    SDS_NotasFiscaisOPERACAO: TStringField;
    SDS_NotasFiscaisINTEGRACAO: TIntegerField;
    SDS_NotasFiscaisAPROVEITA_CREDITO_ICMS: TStringField;
    SDS_NotasFiscaisCOD_EMPRESA: TIntegerField;
    SDS_NotasFiscaisICMSRETIDO: TFMTBCDField;
    SDS_NotasFiscaisPERC_ICMSRETIDO: TFMTBCDField;
    SDS_NotasFiscaisESPECIE: TStringField;
    SDS_NotasFiscaisCODREMETENTE: TIntegerField;
    SDS_NotasFiscaisREMETENTE: TStringField;
    SDS_NotasFiscaisVALOR_MERCADORIAS: TFMTBCDField;
    SDS_NotasFiscaisCONF_BASEICMS: TFMTBCDField;
    SDS_NotasFiscaisCONF_VALORICMS: TFMTBCDField;
    SDS_NotasFiscaisCONF_BASESUB: TFMTBCDField;
    SDS_NotasFiscaisCONF_VALORSUB: TFMTBCDField;
    SDS_NotasFiscaisCONF_FRETE: TFMTBCDField;
    SDS_NotasFiscaisCONF_SEGURO: TFMTBCDField;
    SDS_NotasFiscaisCONF_OUTRAS: TFMTBCDField;
    SDS_NotasFiscaisCONF_IPI: TFMTBCDField;
    SDS_NotasFiscaisCONF_DESCONTO: TFMTBCDField;
    SDS_NotasFiscaisCONF_TOTALPRODUTOS: TFMTBCDField;
    SDS_NotasFiscaisCONF_TOTALNOTA: TFMTBCDField;
    SDS_NotasFiscaisCONF_ICMSRETIDO: TFMTBCDField;
    SDS_NotasFiscaisCONF_ICMSREDITO_PERC: TFMTBCDField;
    SDS_NotasFiscaisCONFI_PIS: TFMTBCDField;
    SDS_NotasFiscaisCONF_COFINS: TFMTBCDField;
    SDS_NotasFiscaisCOD_CENTRO_CUSTO: TIntegerField;
    SDS_NotasFiscaisCOD_IMOVEL: TIntegerField;
    QConvCOD_CON: TIntegerField;
    QConvNOME_CON: TStringField;
    QConvEND_CON: TStringField;
    QConvBAI_CON: TStringField;
    QConvCID_CON: TStringField;
    QConvCEP_CON: TStringField;
    QConvTEL_CON: TStringField;
    QConvFAX_CON: TStringField;
    QConvATIVO_CON: TStringField;
    QConvRESPONSAVEL_CON: TStringField;
    QConvCNPJ_CON: TStringField;
    QConvINSC_CON: TStringField;
    QConvEST_CON: TStringField;
    QConvOBS_AUTORIZACAO_CON: TStringField;
    QConvDIA_REFERENCIA_CON: TIntegerField;
    QConvDESCONTO_CON: TFMTBCDField;
    SDS_NFCEVL_ACRESCIMOS: TFMTBCDField;
    SDS_NFCEVL_DESCONTOS: TFMTBCDField;
    SDS_NFCEVL_MERCADORIAS: TFMTBCDField;
    SDS_NFCEVL_SERVICOS: TFMTBCDField;
    SDS_NFCEVL_TOTAL: TFMTBCDField;
    SDS_NFCECOD_PGTO: TIntegerField;
    SDS_NFCEVL_AVISTA: TFMTBCDField;
    SDS_NFCEVL_PRAZO: TFMTBCDField;
    SDS_NFCEPESO_TOTAL: TFMTBCDField;
    SDS_NFCEQT_PECAS: TBCDField;
    SDS_NFCECFOP_DESC: TStringField;
    SDS_NFCECD_TRANSPORTADORA: TIntegerField;
    SDS_NFCEUF_ORIGEM: TStringField;
    SDS_NFCEUF_DESTINO: TStringField;
    SDS_NFCEPESO_LIQUIDO: TFMTBCDField;
    SDS_NFCEVL_FRETE: TFMTBCDField;
    SDS_NFCEVL_SEGURO: TFMTBCDField;
    SDS_NFCEVL_BASE_ICM: TFMTBCDField;
    SDS_NFCEVL_ICM: TFMTBCDField;
    SDS_NFCEVL_BASE_ICM_SUBST: TFMTBCDField;
    SDS_NFCEVL_ICM_SUBST: TFMTBCDField;
    SDS_NFCEVL_IPI: TFMTBCDField;
    SDS_NFCEVL_ISS: TFMTBCDField;
    SDS_NFCETP_FRETE: TStringField;
    SDS_NFCEQT_VOLUMES: TBCDField;
    SDS_NFCEESPECIE_VOLUMES: TStringField;
    SDS_NFCEMARCA_VOLUMES: TStringField;
    SDS_NFCENR_VOLUMES: TIntegerField;
    SDS_NFCECD_TIPOCOBR: TIntegerField;
    SDS_NFCECD_FUNCIONARIO: TIntegerField;
    SDS_NFCEDT_ATZ: TDateField;
    SDS_NFCEPLACA_TRANSP: TStringField;
    SDS_NFCEUF_PLACA_TRANSP: TStringField;
    SDS_NFCEVL_OUTROS: TFMTBCDField;
    SDS_NFCENR_PEDIDO: TIntegerField;
    SDS_NFCEVL_BASE_PIS: TFMTBCDField;
    SDS_NFCEVL_PIS: TFMTBCDField;
    SDS_NFCEVL_BASE_COFINS: TFMTBCDField;
    SDS_NFCEVL_COFINS: TFMTBCDField;
    SDS_NFCEVL_BASE_IPI: TFMTBCDField;
    SDS_NFCEVL_BASE_ISS: TFMTBCDField;
    SDS_NFCEVL_DESCONTO_ITEM: TFMTBCDField;
    SDS_NFCEVL_ISENTO_ITENS: TFMTBCDField;
    SDS_NFCEVL_OUTROS_ITENS: TFMTBCDField;
    SDS_NFCENR_PROTOCOLO_NFE: TStringField;
    SDS_NFCEDT_PROCESSAMENTO_NFE: TDateField;
    SDS_NFCESTATUS: TStringField;
    SDS_NFCENR_LOTE_NFE: TStringField;
    SDS_NFCENR_RECIBO_NFE: TStringField;
    SDS_NFCENR_PROTOCOLO_CANC_NFE: TStringField;
    SDS_NFCECHAVE_ACESSO_NFE: TStringField;
    SDS_NFCEVL_FRETE_CONHECIMENTO: TFMTBCDField;
    SDS_NFCEVL_ST_CONHECIMENTO: TFMTBCDField;
    SDS_NFCEVL_ICM_CONHECIMENTO: TFMTBCDField;
    SDS_NFCEBASE_ICM_PROPRIO_ST: TFMTBCDField;
    SDS_NFCEVL_ICM_PROPRIO_ST: TFMTBCDField;
    SDS_NFCEVL_BASE_ICM_SUBST_REAL: TFMTBCDField;
    SDS_NFCEVL_ICM_SUBST_REAL: TFMTBCDField;
    SDS_NFCECNPJ_TRANSP: TStringField;
    SDS_NFCENOME_TRANSP: TStringField;
    SDS_NFCEIE_TRANSP: TStringField;
    SDS_NFCEEND_TRANSPORTADOR: TStringField;
    SDS_NFCECIDADE_TRANSP: TStringField;
    SDS_NFCEUF_TRANSP: TStringField;
    SDS_NFCETP: TStringField;
    SDS_NFCEN_NOTA_ENTRADA: TStringField;
    SDS_NFCENOME_CLIENTE_FOR: TStringField;
    SDS_NFCECPF_CNPJ_CLIENTE_FORN: TStringField;
    SDS_NFCEIE_CLIENTE_FORN: TStringField;
    SDS_NFCEENDERECO_CLI_FORN: TStringField;
    SDS_NFCEEND_NUM_CLIENTE: TStringField;
    SDS_NFCECOD_IBGE: TStringField;
    SDS_NFCECEP_CLIENTE_FORN: TStringField;
    SDS_NFCEBAIRRO_CLIENTE_FORN: TStringField;
    SDS_NFCETIPO_PESSOA: TStringField;
    SDS_NFCETELEFONE: TStringField;
    SDS_NFCECIDADE_CLIENTE_FORN: TStringField;
    SDS_NFCEUF_CLIENTE_FORN: TStringField;
    SDS_NFCEIE_PRODUTOR: TStringField;
    SDS_NFCEPRODUTOR_RURAL: TStringField;
    SDS_NFCEPAGAMENTO: TStringField;
    SDS_NFCESTATUS_INUTILIZADO: TStringField;
    SDS_NFCESTATUS_CANCELADO: TStringField;
    SDS_NFCESTATUS_EMAIL: TStringField;
    SDS_NFCECOD_FORNECEDOR: TIntegerField;
    SDS_NFCEDEPEC: TStringField;
    SDS_NFCECHAVE2: TStringField;
    SDS_NFCESTATUS_RETORNO: TStringField;
    SDS_NFCEJUSTIFICATIVA_CANCEL_INUTIL: TStringField;
    SDS_NFCEMODELO: TStringField;
    SDS_NFCECORRECAO: TStringField;
    SDS_NFCEVL_TROCO: TFMTBCDField;
    SDS_NFCEBXML: TBlobField;
    qrrentabilidadeUNIDADE: TStringField;
    qrrentabilidadeEMBALAGEM: TFMTBCDField;
    qrrentabilidadePERDA: TFMTBCDField;
    qrrentabilidadeCODIGO: TIntegerField;
    qrrentabilidadeCODPRODUTO: TStringField;
    qrrentabilidadePRODUTO: TStringField;
    QNotasManifestoCOD: TIntegerField;
    QNotasManifestoCOD_EMP: TIntegerField;
    QNotasManifestoCHAVE_NOTA: TStringField;
    QNotasManifestoDATA_ENTRADA: TDateField;
    QNotasManifestoEMITENTE: TStringField;
    QNotasManifestoCNPJ_EMI: TStringField;
    QNotasManifestoIE_EMI: TStringField;
    QNotasManifestoVALOR_NF: TFMTBCDField;
    QNotasManifestoTIPO_NF: TStringField;
    QNotasManifestoSIT_NF: TStringField;
    QNotasManifestoSIT_CONF: TStringField;
    QNotasManifestoMANIFESTACAO: TIntegerField;
    QCaixaCODIGO: TIntegerField;
    QCaixaUSUARIO: TStringField;
    QCaixaSENHA: TStringField;
    QCaixaDATACADASTRO: TDateField;
    QCaixaNOME: TStringField;
    QCaixaFUNCAO: TStringField;
    QCaixaEXCLUIR: TStringField;
    QCaixaEDITAR: TStringField;
    QCaixaINSERIR: TStringField;
    QCaixaAUTORIZA: TStringField;
    SDS_CONFIGURACOESMODELO_DOC_NFE: TStringField;
    SDS_CONFIGURACOESSSLLIB: TSmallintField;
    SDS_CONFIGURACOESSSLTYPE: TSmallintField;
    SDS_CONFIGURACOESVERSAO_NFE: TSmallintField;
    qrprodutoPRECO_CUSTO: TFMTBCDField;
    qrprodutoMARGEM_LUCRO: TFMTBCDField;
    qrprodutoCOMISSAO: TFMTBCDField;
    qrprodutoUNIDADE: TIntegerField;
    qrprodutoFRETE: TFMTBCDField;
    qrprodutoICMS: TFMTBCDField;
    qrprodutoIPI_IRPJ: TFMTBCDField;
    qrprodutoOUTROS_IMPOSTOS: TFMTBCDField;
    qrprodutoDESCONTOS: TFMTBCDField;
    qrprodutoCLASS_FISCAL: TStringField;
    qrprodutoSIT_TRIBUTARIA: TStringField;
    qrprodutoCUSTO_MEDIO: TFMTBCDField;
    qrprodutoPRECO_VENDA: TFMTBCDField;
    qrprodutoDESCONTO_MAXIMO: TFMTBCDField;
    qrprodutoCODIGO_GRUPO: TIntegerField;
    qrprodutoCODIGO_SUBGRUPO: TIntegerField;
    qrprodutoCODIGO_MARCA: TIntegerField;
    qrprodutoNOME_GRUPO: TStringField;
    qrprodutoNOME_SUBGRUPO: TStringField;
    qrprodutoNOME_MARCA: TStringField;
    qrprodutoNOME_FORNECEDOR: TStringField;
    qrprodutoCODIGO_FORNECEDORES: TIntegerField;
    qrprodutoFOTO: TBlobField;
    qrprodutoESTOQUE_ATUAL: TBCDField;
    qrprodutoESTOQUE_VENDIDO: TFMTBCDField;
    qrprodutoESTOQUE: TBCDField;
    qrprodutoVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    qrprodutoVALOR_ESTOQUE: TFMTBCDField;
    qrprodutoESTOQUE_MINIMO: TIntegerField;
    qrprodutoESTOQUE_MAXIMO: TIntegerField;
    qrprodutoDATACAD: TDateField;
    qrprodutoUSERCAD: TStringField;
    qrprodutoVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    qrprodutoULTIMACOMPRA: TDateField;
    qrprodutoVALOR_EST_CUSTO: TFMTBCDField;
    qrprodutoSECCAO: TIntegerField;
    qrprodutoCATEGORIA: TIntegerField;
    qrprodutoLOCALIZACAO: TStringField;
    qrprodutoAPLICACAO: TStringField;
    qrprodutoESP_COD_AUX: TStringField;
    qrprodutoGARANTIA: TIntegerField;
    qrprodutoBALANCA: TStringField;
    qrprodutoETIQUETA: TStringField;
    qrprodutoATIVO: TStringField;
    qrprodutoREFERENCIA: TStringField;
    qrprodutoCOD_EMPRESA: TIntegerField;
    qrprodutoDESC_UNIDADE: TStringField;
    qrprodutoPESOBRUTO: TFMTBCDField;
    qrprodutoPESOLIQUIDO: TFMTBCDField;
    qrprodutoFONETICO: TStringField;
    qrprodutoDATAULTALTERACAO: TDateField;
    qrprodutoCUSTOREPOSICAO: TFMTBCDField;
    qrprodutoPRECO_ANT: TFMTBCDField;
    qrprodutoPRECO_PROMOCAO: TFMTBCDField;
    qrprodutoFLAG_PROMOCAO: TStringField;
    qrprodutoDT_INICIO_PROMO: TDateField;
    qrprodutoDT_FIM_PROMO: TDateField;
    qrprodutoCOD_LABORATORIO: TIntegerField;
    qrprodutoLABORATORIO: TStringField;
    qrprodutoPRINCIPIO_ATIVO: TStringField;
    qrprodutoMED_CONTROLADO: TStringField;
    qrprodutoQTD_FRACIONADA: TFMTBCDField;
    qrprodutoQTD_CAIXA: TSmallintField;
    qrprodutoMED_GENERICO: TStringField;
    qrprodutoLOTE_MED: TStringField;
    qrprodutoVALIDADE: TDateField;
    qrprodutoCHEK_BOX: TStringField;
    qrprodutoPRECO_VENDA2: TFMTBCDField;
    qrprodutoMARGEM_LUCRO2: TFMTBCDField;
    qrprodutoVALIDADE_PRODUTO: TStringField;
    qrprodutoPROD_SERV: TStringField;
    qrprodutoUNIDADE_ENT: TIntegerField;
    qrprodutoDESC_UNID_ENT: TStringField;
    qrprodutoQUANT_SAIDA: TBCDField;
    qrprodutoQUANT_ENTRADA: TBCDField;
    qrprodutoESTOQUE_FRACAO: TBCDField;
    qrprodutoDATA_FABRICACAO: TDateField;
    qrprodutoFRACAO: TIntegerField;
    qrprodutoNCM_SH: TStringField;
    qrprodutoCOD_MS: TStringField;
    qrprodutoCONTOLAESTOQUE: TStringField;
    qrprodutoPRODUTOCOMPOSTO: TStringField;
    qrprodutoTIPO_ATIVIDADE: TStringField;
    qrprodutoCOD_PRODUTO_ESTOQUE: TIntegerField;
    qrprodutoCODIGO_LOCAL_ESTOQUE: TIntegerField;
    qrprodutoLISTA_ABC: TStringField;
    qrprodutoGRUPO_TRIBUTACAO: TIntegerField;
    qrprodutoCOMBUSTIVEL: TStringField;
    qrprodutoCOR: TIntegerField;
    qrprodutoENABLE_NUMSERIE: TIntegerField;
    qrprodutoID_PRODUTOS: TIntegerField;
    qrprodutoCOD_ANP: TStringField;
    qrprodutoCESTA: TStringField;
    qrprodutoML_QUANT_BEB: TFMTBCDField;
    qrprodutoUND_TRIB: TStringField;
    qrprodutoCHASSI: TStringField;
    qrprodutoCOR_DESC: TStringField;
    qrprodutoN_MOTOR: TStringField;
    qrprodutoANO_FAB: TStringField;
    qrprodutoANO_MOD_FAB: TStringField;
    qrprodutoTIPO_VEIC: TStringField;
    qrprodutoN_SERIE: TStringField;
    qrprodutoCOD_MODELO: TStringField;
    qrprodutoESPECIE_VEICULO: TStringField;
    qrprodutoCOD_COR_DENATRAN: TStringField;
    qrprodutoTIPO_COMBUSTIVEL: TStringField;
    qrprodutoVEICULO: TStringField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoPRODUTO_PROPRIEDADE: TIntegerField;
    qrprodutoMULTIP_FRACAO: TIntegerField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateField;
    qrprodutoCODORIGINAL: TStringField;
    qrprodutoDATA_ULTIMA_COMPRA: TDateField;
    qrprodutoALERTA_COPA: TStringField;
    qrprodutoALERTA_COZINHA: TStringField;
    qrprodutoANDROID_VISUALIZA: TStringField;
    qrprodutoTEMPO_PREPARO: TTimeField;
    qrprodutoSABORES: TIntegerField;
    qrprodutoCOD_PACOTE: TStringField;
    qrprodutoCEST: TStringField;
    SDS_Empresa: TFDQuery;
    SDS_EmpresaCODIGO: TIntegerField;
    SDS_EmpresaRAZAO_SOCIAL: TStringField;
    SDS_EmpresaNOME_FANTASIA: TStringField;
    SDS_EmpresaENDERECO: TStringField;
    SDS_EmpresaCIDADE: TStringField;
    SDS_EmpresaUF: TStringField;
    SDS_EmpresaCEP: TStringField;
    SDS_EmpresaTELEFONE: TStringField;
    SDS_EmpresaFAX: TStringField;
    SDS_EmpresaEMAIL: TStringField;
    SDS_EmpresaHOMEPAGE: TStringField;
    SDS_EmpresaCNPJ: TStringField;
    SDS_EmpresaIE: TStringField;
    SDS_EmpresaNUMERO: TIntegerField;
    SDS_EmpresaBAIRRO: TStringField;
    SDS_EmpresaIM: TStringField;
    SDS_EmpresaLOGOMARCA: TBlobField;
    SDS_EmpresaCNAE: TStringField;
    SDS_EmpresaCOD_CID_IBGE: TStringField;
    SDS_EmpresaURS_INDEA: TStringField;
    SDS_EmpresaULE_INDEA: TStringField;
    SDS_EmpresaMATRICULA_INDEA: TStringField;
    SDS_EmpresaPROPRIETARIO: TStringField;
    SDS_EmpresaRESPONSAVEL_TECINICO: TStringField;
    SDS_EmpresaCRMV_N: TStringField;
    SDS_EmpresaFLAG_VETERINARIA: TStringField;
    SDS_EmpresaREGIME: TStringField;
    SDS_EmpresaALIC_SIMPLES: TFMTBCDField;
    SDS_EmpresaALIC_PIS: TFMTBCDField;
    SDS_EmpresaALIC_COFINS: TFMTBCDField;
    SDS_EmpresaALIC_IRPJ: TFMTBCDField;
    SDS_EmpresaALIC_CSLL: TFMTBCDField;
    SDS_EmpresaSUFRAMA: TStringField;
    SDS_EmpresaNOME_CONTADOR: TStringField;
    SDS_EmpresaCNPJ_CONTADOR: TStringField;
    SDS_EmpresaCRC_CONTADOR: TStringField;
    SDS_EmpresaENDERECO_CONTADOR: TStringField;
    SDS_EmpresaCEP_CONTADOR: TStringField;
    SDS_EmpresaNUM_CONTADOR: TIntegerField;
    SDS_EmpresaBAIRRO_CONTADOR: TStringField;
    SDS_EmpresaCOMPL_CONTADOR: TStringField;
    SDS_EmpresaFONE_CONTADOR: TStringField;
    SDS_EmpresaFAX_CONTADOR: TStringField;
    SDS_EmpresaEMAIL_CONTADOR: TStringField;
    SDS_EmpresaCOD_IBGE_CONTADOR: TStringField;
    SDS_EmpresaCPF_CONTADOR: TStringField;
    SDS_EmpresaCIDADE_CONTADOR: TStringField;
    SDS_EmpresaUF_CONTADOR: TStringField;
    SDS_EmpresaCPF_RESPONSAVEL: TStringField;
    SDS_EmpresaCOMPLEMENTO: TStringField;
    SDS_EmpresaTIPO_SEGMENTO: TStringField;
    SDS_EmpresaCPF_PROPRIETARIO: TStringField;
    SDS_EmpresaDISTRIBUIDORA_COMBUSTIVEL: TStringField;
    SDS_EmpresaNUM_JUNT_COM: TStringField;
    SDS_EmpresaDATA_INICIO_LMC: TDateField;
    SDS_EmpresaDATA_FIM_LMC: TDateField;
    SDS_EmpresaNUM_ORD_LMC: TIntegerField;
    SDS_CONFIGURACOESPATHEVENTO_NFE: TStringField;
    sds_pre_venda: TFDQuery;
    sds_pre_venda_itens: TFDQuery;
    dts_prevenda: TDataSource;
    dts_pre_venda_itens: TDataSource;
    sds_pre_vendaCODIGO: TIntegerField;
    sds_pre_vendaVALOR_ITENS: TFMTBCDField;
    sds_pre_vendaENC_FINANCEIRO: TFMTBCDField;
    sds_pre_vendaVALOR_DESCONTO: TFMTBCDField;
    sds_pre_vendaVALOR_TOTAL: TFMTBCDField;
    sds_pre_vendaVALOR_COMISSAO: TFMTBCDField;
    sds_pre_vendaUSUARIO: TStringField;
    sds_pre_vendaDATA_PEDIDO: TDateField;
    sds_pre_vendaDATA_ENTREGA: TDateField;
    sds_pre_vendaCODIGO_CLIENTE: TIntegerField;
    sds_pre_vendaNOME_CLIENTE: TStringField;
    sds_pre_vendaPAGAMENTO: TStringField;
    sds_pre_vendaSTATUS: TStringField;
    sds_pre_vendaSITUACAO: TStringField;
    sds_pre_vendaUSUARIO_ENTREGA: TStringField;
    sds_pre_vendaTP: TStringField;
    sds_pre_vendaOBSERVACOES: TStringField;
    sds_pre_vendaCOD_VENDEDOR: TIntegerField;
    sds_pre_vendaCOD_PAGTO: TIntegerField;
    sds_pre_vendaN_CUPOM: TStringField;
    sds_pre_vendaN_ECF: TStringField;
    sds_pre_vendaCOD_EMPRESA: TIntegerField;
    sds_pre_vendaHORA: TTimeField;
    sds_pre_vendaVALOR_ACRESCIMOS: TFMTBCDField;
    sds_pre_vendaCOD_ORCAMENTO: TIntegerField;
    sds_pre_vendaCOD_PEDIDO: TIntegerField;
    sds_pre_vendaCOD_OS: TSmallintField;
    sds_pre_vendaNUM_NOTA: TIntegerField;
    sds_pre_vendaSERIE_NOTA: TStringField;
    sds_pre_vendaENDERECO: TStringField;
    sds_pre_vendaCPF_CNPJ: TStringField;
    sds_pre_vendaRG_IE: TStringField;
    sds_pre_vendaFONE: TStringField;
    sds_pre_vendaCIDADE: TStringField;
    sds_pre_vendaBAIRRO: TStringField;
    sds_pre_vendaN_PARTIDA: TStringField;
    sds_pre_vendaPROPRIEDADE: TStringField;
    sds_pre_vendaQUANT_VENDIDA: TBCDField;
    sds_pre_vendaSALDO_VENDIDO: TBCDField;
    sds_pre_vendaMED_VETERINARIO: TStringField;
    sds_pre_vendaDATA_VACINA: TDateField;
    sds_pre_vendaVALOR_AVISTA: TFMTBCDField;
    sds_pre_vendaVALOR_PRAZO: TFMTBCDField;
    sds_pre_vendaUF: TStringField;
    sds_pre_vendaCOD_IBGE: TStringField;
    sds_pre_vendaCEP: TStringField;
    sds_pre_vendaNUMERO: TStringField;
    sds_pre_vendaTIPO: TStringField;
    sds_pre_vendaVALOR_PAGO: TFMTBCDField;
    sds_pre_vendaVALOR_TROCO: TFMTBCDField;
    sds_pre_vendaENTREGADOR: TStringField;
    sds_pre_vendaTIPO_PEDIDO: TStringField;
    sds_pre_vendaFECHADO: TStringField;
    sds_pre_vendaMESA: TStringField;
    sds_pre_vendaREFERENCIA: TStringField;
    sds_pre_vendaCELULAR: TStringField;
    sds_pre_vendaPROD_RURAL: TStringField;
    sds_pre_vendaIE_PRODUTOR: TStringField;
    sds_pre_vendaVLR_PIS: TFMTBCDField;
    sds_pre_vendaVLR_COFINS: TFMTBCDField;
    sds_pre_vendaKM: TIntegerField;
    sds_pre_vendaCHAVE_FP: TStringField;
    sds_pre_vendaCHAVE_FP_CANCEL: TStringField;
    sds_pre_vendaCUPON_CANCELADO: TStringField;
    sds_pre_vendaCRZ: TIntegerField;
    sds_pre_vendaCHEK_BOX: TStringField;
    sds_pre_vendaANO: TIntegerField;
    sds_pre_vendaMODELO_NF: TStringField;
    sds_pre_vendaCFOP_NF: TStringField;
    sds_pre_vendaCOD_OS_AUTO: TIntegerField;
    sds_pre_venda_itensCODIGO: TIntegerField;
    sds_pre_venda_itensCODIGO_ID: TIntegerField;
    sds_pre_venda_itensITEN: TIntegerField;
    sds_pre_venda_itensCODIGO_PROD: TIntegerField;
    sds_pre_venda_itensCODIGO_PRODUTO: TStringField;
    sds_pre_venda_itensDESCRICAO_PRODUTO: TStringField;
    sds_pre_venda_itensPRECO_UNITARIO: TFMTBCDField;
    sds_pre_venda_itensDESCONTO: TFMTBCDField;
    sds_pre_venda_itensQUANTIDADE: TBCDField;
    sds_pre_venda_itensPRECO_TOTAL: TFMTBCDField;
    sds_pre_venda_itensCOMISSAO: TFMTBCDField;
    sds_pre_venda_itensDEV: TStringField;
    sds_pre_venda_itensQNT_DEV: TBCDField;
    sds_pre_venda_itensVAL_DEV: TFMTBCDField;
    sds_pre_venda_itensENC_FINANCEIRO: TFMTBCDField;
    sds_pre_venda_itensUNIDADE: TStringField;
    sds_pre_venda_itensSIT_TRIBUTARIA: TStringField;
    sds_pre_venda_itensVENDEDOR: TIntegerField;
    sds_pre_venda_itensFRACAO: TIntegerField;
    sds_pre_venda_itensCOD_NCM: TStringField;
    sds_pre_venda_itensPROD_SERV: TStringField;
    sds_pre_venda_itensPERC_ISS: TFMTBCDField;
    sds_pre_venda_itensBASE_ISS: TFMTBCDField;
    sds_pre_venda_itensVL_ISS: TFMTBCDField;
    sds_pre_venda_itensPERC_ICM: TFMTBCDField;
    sds_pre_venda_itensBASE_ICMS: TFMTBCDField;
    sds_pre_venda_itensVL_ICM: TFMTBCDField;
    sds_pre_venda_itensPERC_IPI: TFMTBCDField;
    sds_pre_venda_itensBASE_IPI: TFMTBCDField;
    sds_pre_venda_itensVL_IPI: TFMTBCDField;
    sds_pre_venda_itensPERC_COFINS: TFMTBCDField;
    sds_pre_venda_itensBASE_COFINS: TFMTBCDField;
    sds_pre_venda_itensVL_COFINS: TFMTBCDField;
    sds_pre_venda_itensPERC_ICMS_SUBST: TFMTBCDField;
    sds_pre_venda_itensBASE_ICMS_SUBST: TFMTBCDField;
    sds_pre_venda_itensVL_ICMS_SUBST: TFMTBCDField;
    sds_pre_venda_itensPERC_PIS: TFMTBCDField;
    sds_pre_venda_itensBASE_PIS: TFMTBCDField;
    sds_pre_venda_itensVL_PIS: TFMTBCDField;
    sds_pre_venda_itensIMPRIME: TStringField;
    sds_pre_venda_itensCOD_EMPRESA: TIntegerField;
    sds_pre_venda_itensID_BICO: TIntegerField;
    sds_pre_venda_itensID_TANQUE: TStringField;
    sds_pre_venda_itensID_BOMBA: TStringField;
    sds_pre_venda_itensBICO: TStringField;
    FConsulta: TFDCommand;
    FBDriver: TFDPhysFBDriverLink;
    QLabCOD_LAB: TIntegerField;
    QLabNOME_LAB: TStringField;
    QMotivoCOD_MOT: TIntegerField;
    QMotivoNOME_MOT: TStringField;
    QMotivoENTSAI_MOT: TStringField;
    ECF: TACBrECF;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    sds_LyBancosCNAB: TStringField;
    sds_LyBancosDIRRECEBE: TStringField;
    sds_LyBancosDIRENVIA: TStringField;
    sds_LyBancosESPECIE: TStringField;
    sds_LyBancosACEITE: TStringField;
    sds_LyBancosMODALIDADE: TStringField;
    Sds_grupo_tribCST_VENDA_NFCE: TStringField;
    Sds_grupo_tribCST_VENDA_INTER_NFCE: TSmallintField;
    Sds_grupo_tribPERC_ALICOTA_IR: TFMTBCDField;
    Sds_grupo_tribPERC_ALICOTA_CSLL: TFMTBCDField;
    Sds_grupo_tribPERC_ALIC_OUTRAS: TFMTBCDField;
    sds_LyBancosVERSAO: TStringField;
    sds_LyBancosVERSAO_LOTE: TStringField;
    sds_LyBancosCONVENIO: TStringField;
    ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS;
    ACBrPosPrinter1: TACBrPosPrinter;
    SDS_UsuariosTELA_ORCAMENTO_PADRAO: TStringField;
    Qry_orcamentoSTATUS: TStringField;
    sds_orcamentoSTATUS: TStringField;
    sds_IdSistema: TFDQuery;
    sds_IdSistemaSEQ: TIntegerField;
    sds_IdSistemaCNPJ: TStringField;
    sds_IdSistemaCHAVE: TStringField;
    sds_IdSistemaCOD_EMPRESA: TIntegerField;
    ACBrMDFe1: TACBrMDFe;
    ACBrMDFeDAMDFEFR1: TACBrMDFeDAMDFEFR;
    SDS_EmpresaULTIMONSU: TStringField;
    SDS_PRODUTOS: TFDQuery;
    SDS_PRODUTOSCODIGO: TIntegerField;
    SDS_PRODUTOSCODIGO_BARRAS: TStringField;
    SDS_PRODUTOSDESCRICAO: TStringField;
    SDS_PRODUTOSABREVIADO: TStringField;
    SDS_PRODUTOSPRECO_CUSTO: TFMTBCDField;
    SDS_PRODUTOSMARGEM_LUCRO: TFMTBCDField;
    SDS_PRODUTOSCOMISSAO: TFMTBCDField;
    SDS_PRODUTOSUNIDADE: TIntegerField;
    SDS_PRODUTOSFRETE: TFMTBCDField;
    SDS_PRODUTOSICMS: TFMTBCDField;
    SDS_PRODUTOSIPI_IRPJ: TFMTBCDField;
    SDS_PRODUTOSOUTROS_IMPOSTOS: TFMTBCDField;
    SDS_PRODUTOSDESCONTOS: TFMTBCDField;
    SDS_PRODUTOSCLASS_FISCAL: TStringField;
    SDS_PRODUTOSSIT_TRIBUTARIA: TStringField;
    SDS_PRODUTOSCUSTO_MEDIO: TFMTBCDField;
    SDS_PRODUTOSPRECO_VENDA: TFMTBCDField;
    SDS_PRODUTOSDESCONTO_MAXIMO: TFMTBCDField;
    SDS_PRODUTOSCODIGO_GRUPO: TIntegerField;
    SDS_PRODUTOSCODIGO_SUBGRUPO: TIntegerField;
    SDS_PRODUTOSCODIGO_MARCA: TIntegerField;
    SDS_PRODUTOSNOME_GRUPO: TStringField;
    SDS_PRODUTOSNOME_SUBGRUPO: TStringField;
    SDS_PRODUTOSNOME_MARCA: TStringField;
    SDS_PRODUTOSNOME_FORNECEDOR: TStringField;
    SDS_PRODUTOSCODIGO_FORNECEDORES: TIntegerField;
    SDS_PRODUTOSFOTO: TBlobField;
    SDS_PRODUTOSESTOQUE_ATUAL: TBCDField;
    SDS_PRODUTOSESTOQUE_VENDIDO: TFMTBCDField;
    SDS_PRODUTOSESTOQUE: TBCDField;
    SDS_PRODUTOSVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    SDS_PRODUTOSVALOR_ESTOQUE: TFMTBCDField;
    SDS_PRODUTOSESTOQUE_MINIMO: TIntegerField;
    SDS_PRODUTOSESTOQUE_MAXIMO: TIntegerField;
    SDS_PRODUTOSDATACAD: TDateField;
    SDS_PRODUTOSUSERCAD: TStringField;
    SDS_PRODUTOSVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    SDS_PRODUTOSULTIMACOMPRA: TDateField;
    SDS_PRODUTOSVALOR_EST_CUSTO: TFMTBCDField;
    SDS_PRODUTOSSECCAO: TIntegerField;
    SDS_PRODUTOSCATEGORIA: TIntegerField;
    SDS_PRODUTOSLOCALIZACAO: TStringField;
    SDS_PRODUTOSAPLICACAO: TStringField;
    SDS_PRODUTOSESP_COD_AUX: TStringField;
    SDS_PRODUTOSGARANTIA: TIntegerField;
    SDS_PRODUTOSBALANCA: TStringField;
    SDS_PRODUTOSETIQUETA: TStringField;
    SDS_PRODUTOSATIVO: TStringField;
    SDS_PRODUTOSREFERENCIA: TStringField;
    SDS_PRODUTOSCOD_EMPRESA: TIntegerField;
    SDS_PRODUTOSDESC_UNIDADE: TStringField;
    SDS_PRODUTOSPESOBRUTO: TFMTBCDField;
    SDS_PRODUTOSPESOLIQUIDO: TFMTBCDField;
    SDS_PRODUTOSFONETICO: TStringField;
    SDS_PRODUTOSDATAULTALTERACAO: TDateField;
    SDS_PRODUTOSCUSTOREPOSICAO: TFMTBCDField;
    SDS_PRODUTOSPRECO_ANT: TFMTBCDField;
    SDS_PRODUTOSPRECO_PROMOCAO: TFMTBCDField;
    SDS_PRODUTOSFLAG_PROMOCAO: TStringField;
    SDS_PRODUTOSDT_INICIO_PROMO: TDateField;
    SDS_PRODUTOSDT_FIM_PROMO: TDateField;
    SDS_PRODUTOSCOD_LABORATORIO: TIntegerField;
    SDS_PRODUTOSLABORATORIO: TStringField;
    SDS_PRODUTOSPRINCIPIO_ATIVO: TStringField;
    SDS_PRODUTOSMED_CONTROLADO: TStringField;
    SDS_PRODUTOSQTD_FRACIONADA: TFMTBCDField;
    SDS_PRODUTOSQTD_CAIXA: TSmallintField;
    SDS_PRODUTOSMED_GENERICO: TStringField;
    SDS_PRODUTOSLOTE_MED: TStringField;
    SDS_PRODUTOSVALIDADE: TDateField;
    SDS_PRODUTOSCHEK_BOX: TStringField;
    SDS_PRODUTOSPRECO_VENDA2: TFMTBCDField;
    SDS_PRODUTOSMARGEM_LUCRO2: TFMTBCDField;
    SDS_PRODUTOSVALIDADE_PRODUTO: TStringField;
    SDS_PRODUTOSPROD_SERV: TStringField;
    SDS_PRODUTOSUNIDADE_ENT: TIntegerField;
    SDS_PRODUTOSDESC_UNID_ENT: TStringField;
    SDS_PRODUTOSQUANT_SAIDA: TBCDField;
    SDS_PRODUTOSQUANT_ENTRADA: TBCDField;
    SDS_PRODUTOSESTOQUE_FRACAO: TBCDField;
    SDS_PRODUTOSDATA_FABRICACAO: TDateField;
    SDS_PRODUTOSFRACAO: TIntegerField;
    SDS_PRODUTOSNCM_SH: TStringField;
    SDS_PRODUTOSCOD_MS: TStringField;
    SDS_PRODUTOSCONTOLAESTOQUE: TStringField;
    SDS_PRODUTOSPRODUTOCOMPOSTO: TStringField;
    SDS_PRODUTOSTIPO_ATIVIDADE: TStringField;
    SDS_PRODUTOSCOD_PRODUTO_ESTOQUE: TIntegerField;
    SDS_PRODUTOSCODIGO_LOCAL_ESTOQUE: TIntegerField;
    SDS_PRODUTOSLISTA_ABC: TStringField;
    SDS_PRODUTOSGRUPO_TRIBUTACAO: TIntegerField;
    SDS_PRODUTOSCOMBUSTIVEL: TStringField;
    SDS_PRODUTOSCOR: TIntegerField;
    SDS_PRODUTOSENABLE_NUMSERIE: TIntegerField;
    SDS_PRODUTOSID_PRODUTOS: TIntegerField;
    SDS_PRODUTOSCOD_ANP: TStringField;
    SDS_PRODUTOSCESTA: TStringField;
    SDS_PRODUTOSML_QUANT_BEB: TFMTBCDField;
    SDS_PRODUTOSUND_TRIB: TStringField;
    SDS_PRODUTOSCHASSI: TStringField;
    SDS_PRODUTOSCOR_DESC: TStringField;
    SDS_PRODUTOSN_MOTOR: TStringField;
    SDS_PRODUTOSANO_FAB: TStringField;
    SDS_PRODUTOSANO_MOD_FAB: TStringField;
    SDS_PRODUTOSTIPO_VEIC: TStringField;
    SDS_PRODUTOSN_SERIE: TStringField;
    SDS_PRODUTOSCOD_MODELO: TStringField;
    SDS_PRODUTOSESPECIE_VEICULO: TStringField;
    SDS_PRODUTOSCOD_COR_DENATRAN: TStringField;
    SDS_PRODUTOSTIPO_COMBUSTIVEL: TStringField;
    SDS_PRODUTOSVEICULO: TStringField;
    SDS_PRODUTOSUSA_RENTABILIDADE: TIntegerField;
    SDS_PRODUTOSUSA_SERIAL: TIntegerField;
    SDS_PRODUTOSUSA_GRADE: TIntegerField;
    SDS_PRODUTOSPRODUTO_PROPRIEDADE: TIntegerField;
    SDS_PRODUTOSMULTIP_FRACAO: TIntegerField;
    SDS_PRODUTOSDATA_REMARCACAO_VENDA: TDateField;
    SDS_PRODUTOSCODORIGINAL: TStringField;
    SDS_PRODUTOSDATA_ULTIMA_COMPRA: TDateField;
    SDS_PRODUTOSALERTA_COPA: TStringField;
    SDS_PRODUTOSALERTA_COZINHA: TStringField;
    SDS_PRODUTOSANDROID_VISUALIZA: TStringField;
    SDS_PRODUTOSTEMPO_PREPARO: TTimeField;
    SDS_PRODUTOSSABORES: TIntegerField;
    SDS_PRODUTOSCOD_PACOTE: TStringField;
    SDS_PRODUTOSCEST: TStringField;
    SDS_Unidades: TFDQuery;
    SDS_UnidadesCODIGO: TIntegerField;
    SDS_UnidadesDESCRICAO: TStringField;
    SDS_UnidadesUSERCAD: TStringField;
    SDS_UnidadesABREVIATURA: TStringField;
    SDS_UnidadesDATACADASTRO: TDateField;
    SDS_Marcas: TFDQuery;
    SDS_MarcasCODIGO: TIntegerField;
    SDS_MarcasDESCRICAO: TStringField;
    SDS_MarcasDATACADASTRO: TDateField;
    SDS_MarcasUSERCAD: TStringField;
    SDS_Grupos: TFDQuery;
    SDS_GruposCODIGO: TIntegerField;
    SDS_GruposDESCRICAO: TStringField;
    SDS_GruposDATACADASTRO: TDateField;
    SDS_GruposUSERCAD: TStringField;
    SDS_GruposNCM_SH: TStringField;
    SDS_GruposPERC_TRIBU: TFMTBCDField;
    SDS_GruposFONTE: TStringField;
    SDS_Bancos: TFDQuery;
    SDS_BancosCODIGO: TIntegerField;
    SDS_BancosFEBRABAN: TStringField;
    SDS_BancosNOME: TStringField;
    SDS_BancosSITE: TStringField;
    SDS_BancosUSERCAD: TStringField;
    SDS_BancosDATACAD: TDateField;
    SDS_Agencias: TFDQuery;
    SDS_AgenciasCODIGO: TIntegerField;
    SDS_AgenciasFEBRABAN: TStringField;
    SDS_AgenciasBANCO: TStringField;
    SDS_AgenciasNOME: TStringField;
    SDS_AgenciasGERENTE: TStringField;
    SDS_AgenciasENDERECO: TStringField;
    SDS_AgenciasBAIRRO: TStringField;
    SDS_AgenciasCEP: TStringField;
    SDS_AgenciasCIDADE: TStringField;
    SDS_AgenciasUF: TStringField;
    SDS_AgenciasTELEFONE: TStringField;
    SDS_AgenciasFAX: TStringField;
    SDS_AgenciasSITE: TStringField;
    SDS_AgenciasEMAIL: TStringField;
    SDS_AgenciasNUM_AGENCIA: TStringField;
    SDS_AgenciasLINK: TIntegerField;
    SDS_AgenciasUSERCAD: TStringField;
    SDS_AgenciasDATACAD: TDateField;
    SDS_estados: TFDQuery;
    SDS_estadosCOD_ESTADO: TIntegerField;
    SDS_estadosDESCRICO: TStringField;
    SDS_estadosUF: TStringField;
    SDS_estadosCOD_EMPRESA: TIntegerField;
    SDS_estadosDATACAD: TDateField;
    SDS_estadosUSERCAD: TStringField;
    SDS_estadosCOD_PAIS: TIntegerField;
    SDS_estadosDESC_PAIS: TStringField;
    sds_bairros: TFDQuery;
    sds_bairrosCOD_BAIRRO: TIntegerField;
    sds_bairrosDESCRICAO: TStringField;
    sds_bairrosCOD_CIDADE: TIntegerField;
    sds_bairrosCOD_EMPRESA: TIntegerField;
    sds_bairrosDATACAD: TDateField;
    sds_bairrosUSERCAD: TStringField;
    SDS_zonas: TFDQuery;
    SDS_zonasCOD_ZONA: TIntegerField;
    SDS_zonasDESCRICAO: TStringField;
    SDS_zonasUSERCAD: TStringField;
    SDS_zonasDATACAD: TDateField;
    SDS_zonasCOD_EMPRESA: TStringField;
    Sds_cidades: TFDQuery;
    Sds_cidadesCOD_CIDADE: TIntegerField;
    Sds_cidadesNOME: TStringField;
    Sds_cidadesCEP: TStringField;
    Sds_cidadesCOD_ESTADO: TIntegerField;
    Sds_cidadesCOD_EMPRESA: TIntegerField;
    Sds_cidadesUSERCAD: TStringField;
    Sds_cidadesDATACAD: TDateField;
    Sds_cidadesZONAS: TIntegerField;
    Sds_cidadesCOD_IBGE: TIntegerField;
    Sds_cidadesUF: TStringField;
    Sds_bairro: TFDQuery;
    Sds_bairroCOD_BAIRRO: TIntegerField;
    Sds_bairroDESCRICAO: TStringField;
    Sds_bairroCOD_CIDADE: TIntegerField;
    Sds_bairroCOD_EMPRESA: TIntegerField;
    Sds_bairroDATACAD: TDateField;
    Sds_bairroUSERCAD: TStringField;
    Sds_bairroUF: TStringField;
    Sds_bairroCIDADE: TStringField;
    SDS_CLI: TFDQuery;
    SDS_CLICODIGO: TIntegerField;
    SDS_CLINOME_RS: TStringField;
    SDS_CLIENDERECO: TStringField;
    SDS_CLICIDADE: TStringField;
    SDS_CLIUF: TStringField;
    SDS_CLICEP: TStringField;
    SDS_CLITELEFONE: TStringField;
    SDS_CLITELEFONE2: TStringField;
    SDS_CLIEMAIL: TStringField;
    SDS_CLINASCIMENTO_IA: TDateField;
    SDS_CLISEXO: TStringField;
    SDS_CLIFOTO_LOGOMARCA: TBlobField;
    SDS_CLIBAIRRO: TStringField;
    SDS_CLIRG_IE: TStringField;
    SDS_CLIFAX: TStringField;
    SDS_CLICELULAR: TStringField;
    SDS_CLIUSERCAD: TStringField;
    SDS_CLIDATACAD: TDateField;
    SDS_CLICPF_CNPJ: TStringField;
    SDS_CLIOBSERVACOES: TBlobField;
    SDS_CLICREDIARIO: TStringField;
    SDS_CLIESTADOCIVIL: TStringField;
    SDS_CLIRESIDENCIA_SEDE: TStringField;
    SDS_CLIPAI: TStringField;
    SDS_CLIMAE: TStringField;
    SDS_CLINOME_CONJUGE: TStringField;
    SDS_CLICPF_CONJUGE: TStringField;
    SDS_CLINASCIMENTO_CONJUGE: TDateField;
    SDS_CLITRABALHO_CONJUGE: TStringField;
    SDS_CLIPROFISSAO_CONJUGE: TStringField;
    SDS_CLILOCALTRABALHO: TStringField;
    SDS_CLIPROFISSAO_RA: TStringField;
    SDS_CLITELEFONE_TRABALHO: TStringField;
    SDS_CLIFAX_TRABALHO: TStringField;
    SDS_CLIOBSERVACOES_TRABALHO: TBlobField;
    SDS_CLIBANCO: TStringField;
    SDS_CLINOME_AGENCIA: TStringField;
    SDS_CLINUMERO_AGENCIA: TStringField;
    SDS_CLICONTA_CORRENTE: TIntegerField;
    SDS_CLINOME1_REFERENCIA: TStringField;
    SDS_CLINOME2_REFERENCIA: TStringField;
    SDS_CLITELEFONE1_REFERENCIA: TStringField;
    SDS_CLITELEFONE2_REFERENCIA: TStringField;
    SDS_CLIBANCO_REFERENCIA: TStringField;
    SDS_CLIAPELIDO: TStringField;
    SDS_CLITIPO: TStringField;
    SDS_CLIOBSERVACOES_COMERCIAIS: TBlobField;
    SDS_CLIOBSERVACOES_BANCO: TBlobField;
    SDS_CLIPG_CREDIARIO: TStringField;
    SDS_CLIPG_CHEQUE: TStringField;
    SDS_CLIPG_FINANCEIRA: TStringField;
    SDS_CLIREMUNERACAO: TFMTBCDField;
    SDS_CLINUMERO: TStringField;
    SDS_CLICOMPLEMENTO: TStringField;
    SDS_CLICOD_EMPRESA: TIntegerField;
    SDS_CLIORGAO_EMISSOR: TStringField;
    SDS_CLIDATA_EMISSAO_RG: TDateField;
    SDS_CLINATURALIDADE: TStringField;
    SDS_CLINATURALIDADE_UF: TStringField;
    SDS_CLICOD_CIDADE: TIntegerField;
    SDS_CLICOD_BAIRRO: TIntegerField;
    SDS_CLIDATA_ALTERACAO: TDateField;
    SDS_CLICOD_ZONA: TIntegerField;
    SDS_CLIPONTO_REFERENCIA: TStringField;
    SDS_CLIATIVO: TStringField;
    SDS_CLICONTATO1: TStringField;
    SDS_CLICONTATO2: TStringField;
    SDS_CLICX_POSTAL: TStringField;
    SDS_CLIVALOR_ALUGUEL: TFMTBCDField;
    SDS_CLITEMPO_RESIDENCIA: TStringField;
    SDS_CLINUMERO_DEPENDENTES: TIntegerField;
    SDS_CLIENDERECO_REFERENCIA1: TStringField;
    SDS_CLIENDERECO_REFERENCIA2: TStringField;
    SDS_CLIDATA_ADMISSAO_REFERENCIA1: TDateField;
    SDS_CLIDATA_ADMISSAO_REFERENCIA2: TDateField;
    SDS_CLIRG_CONJUGUE: TStringField;
    SDS_CLIRENDA_CONJUGUE: TFMTBCDField;
    SDS_CLIDATA_ADMINSSAO_CONJUGUE: TDateField;
    SDS_CLIFONE_CONJUGUE: TStringField;
    SDS_CLIENDERECO_COBRANCA: TStringField;
    SDS_CLICEP_COBRANCA: TStringField;
    SDS_CLICOD_CIDADE_COBRANCA: TIntegerField;
    SDS_CLICX_POSTAL_COBRANCA: TStringField;
    SDS_CLILIMITE_DE_CREDITO: TFMTBCDField;
    SDS_CLIINSC_MUNICIPAL: TStringField;
    SDS_CLIPRODUTOR_RURAL: TStringField;
    SDS_CLIINSC_PRODUTOR_RURAL: TStringField;
    SDS_CLICOD_BAIRRO_COBRANCA: TIntegerField;
    SDS_CLICIDADE_COBRANCA: TStringField;
    SDS_CLIBAIRRO_COBRANCA: TStringField;
    SDS_CLIUF_COBRANCA: TStringField;
    SDS_CLICONTA_BANCARIA: TStringField;
    SDS_CLINOME_PROPRIEDADE: TStringField;
    SDS_CLINOME_VETERINARIO: TStringField;
    SDS_CLISOCIO1: TStringField;
    SDS_CLICPFSOCIO1: TStringField;
    SDS_CLIDATANASCSOCIO1: TDateField;
    SDS_CLISOCIO2: TStringField;
    SDS_CLICPFSOCIO2: TStringField;
    SDS_CLIDATANASCSOCIO2: TDateField;
    SDS_CLISOCIO3: TStringField;
    SDS_CLICPFSOCIO3: TStringField;
    SDS_CLIDATANASCSOCIO3: TDateField;
    SDS_CLISOCIO4: TStringField;
    SDS_CLICPFSOCIO4: TStringField;
    SDS_CLIDATANASCSOCIO4: TDateField;
    SDS_CLIDATAFUNDACAO: TDateField;
    SDS_CLICAPITALSOCIAL: TFMTBCDField;
    SDS_CLIFATURAMENTOBRUTO: TFMTBCDField;
    SDS_CLIREGJUNTACOM: TStringField;
    SDS_CLIENDSOCIO1: TStringField;
    SDS_CLIRGSOCIO1: TIntegerField;
    SDS_CLIENDSOCIO2: TStringField;
    SDS_CLIRGSOCIO2: TIntegerField;
    SDS_CLIENDSOCIO3: TStringField;
    SDS_CLIRGSOCIO3: TIntegerField;
    SDS_CLIENDSOCIO4: TStringField;
    SDS_CLIRGSOCIO4: TIntegerField;
    SDS_CLIAUTORIZADO1: TStringField;
    SDS_CLIAUTORIZADO2: TStringField;
    SDS_CLIAUTORIZADO3: TStringField;
    SDS_CLICPF_AUT1: TStringField;
    SDS_CLICPF_AUT2: TStringField;
    SDS_CLICPF_AUT3: TStringField;
    SDS_CLIFUNCIONARIO: TStringField;
    SDS_CLICTPS: TStringField;
    SDS_CLITESTA_CREDITO: TStringField;
    SDS_CLITESTA_LIMITE: TStringField;
    SDS_CLICOD_CONV: TIntegerField;
    SDS_CLIFOTO: TStringField;
    SDS_CLIDATA_ULTIMA_COMPRA: TDateField;
    SDS_CLIFUNC_SALARIO: TFMTBCDField;
    SDS_CLIFUNC_DATA_ADMISSAO: TDateField;
    SDS_CLIFUNC_SITUACAO: TStringField;
    SDS_CLIFUNC_DEMISSAO: TDateField;
    SDS_CLIFUNC_CARGO: TStringField;
    SDS_CLIDOCUMENTOS: TBlobField;
    SDS_CLIIE: TStringField;
    SDS_CLIPARENTESCO_AUT1: TStringField;
    SDS_CLIPARENTESCO_AUT2: TStringField;
    SDS_CLIPARENTESCO_AUT3: TStringField;
    SDS_CLIPOSSUE_LAUDO: TStringField;
    SDS_CLIVENCIMENTO_LAUDO: TDateField;
    SDS_CLICOD_IBGE: TStringField;
    SDS_FornecedoresCODIGO: TIntegerField;
    SDS_FornecedoresNOME: TStringField;
    SDS_FornecedoresFANTASIA: TStringField;
    SDS_FornecedoresENDERECO: TStringField;
    SDS_FornecedoresCIDADE: TStringField;
    SDS_FornecedoresESTADO: TStringField;
    SDS_FornecedoresCEP: TStringField;
    SDS_FornecedoresTELEFONE: TStringField;
    SDS_FornecedoresFAX: TStringField;
    SDS_FornecedoresEMAIL: TStringField;
    SDS_FornecedoresHOMEPAGE: TStringField;
    SDS_FornecedoresTIPO: TStringField;
    SDS_FornecedoresCNPJ: TStringField;
    SDS_FornecedoresIE: TStringField;
    SDS_FornecedoresBAIRRO: TStringField;
    SDS_FornecedoresREPRESCELULAR: TStringField;
    SDS_FornecedoresUSERCAD: TStringField;
    SDS_FornecedoresDATACADASTRO: TDateField;
    SDS_FornecedoresOBSERVACOES: TBlobField;
    SDS_FornecedoresREPRESNOME: TStringField;
    SDS_FornecedoresREPRESFONEFAX: TStringField;
    SDS_FornecedoresREPRESEMAIL: TStringField;
    SDS_FornecedoresREPRESOBSERVACOES: TBlobField;
    SDS_FornecedoresPRODUTOR_RURAL: TStringField;
    SDS_FornecedoresINSC_PRODUTOR: TStringField;
    SDS_FornecedoresCOD_LINHA: TIntegerField;
    SDS_FornecedoresLINHA: TStringField;
    SDS_FornecedoresCOD_EMPRESA: TIntegerField;
    SDS_FornecedoresVALOR_LEITE: TFMTBCDField;
    SDS_Fornecedorescodigo_ibge: TStringField;
    SDS_FornecedoresNUMERO: TIntegerField;
    SDS_FornecedoresCOMPLEMENTO: TStringField;
    SDS_FornecedoresTP: TStringField;
    SDS_NotasFiscaisItens: TFDQuery;
    SDS_NotasFiscaisItensCODIGO_ITEM: TIntegerField;
    SDS_NotasFiscaisItensCODIGO_PRODUTO: TIntegerField;
    SDS_NotasFiscaisItensCODIGO_BARRAS: TStringField;
    SDS_NotasFiscaisItensCODIGO_NOTA: TIntegerField;
    SDS_NotasFiscaisItensDESCRICAO: TStringField;
    SDS_NotasFiscaisItensNCM_SH: TStringField;
    SDS_NotasFiscaisItensCST: TStringField;
    SDS_NotasFiscaisItensCFOP: TStringField;
    SDS_NotasFiscaisItensDESC_UNIDADE: TStringField;
    SDS_NotasFiscaisItensQUANTIDADE: TBCDField;
    SDS_NotasFiscaisItensVALOR_UNI: TBCDField;
    SDS_NotasFiscaisItensVALOR_DESC: TFMTBCDField;
    SDS_NotasFiscaisItensTOTAL_ITEM: TFMTBCDField;
    SDS_NotasFiscaisItensDATA: TDateField;
    SDS_NotasFiscaisItensBASE_ICMS: TFMTBCDField;
    SDS_NotasFiscaisItensVALOR_ICMS: TFMTBCDField;
    SDS_NotasFiscaisItensVALOR_IPI: TFMTBCDField;
    SDS_NotasFiscaisItensPERC_ICMS: TFMTBCDField;
    SDS_NotasFiscaisItensPERC_IPI: TFMTBCDField;
    SDS_NotasFiscaisItensPRECO_VENDA: TFMTBCDField;
    SDS_NotasFiscaisItensPRECO_VENDA2: TFMTBCDField;
    SDS_NotasFiscaisItensDATA_VALIDADE: TDateField;
    SDS_NotasFiscaisItensDATA_FABRICACAO: TDateField;
    SDS_NotasFiscaisItensFRACAO: TIntegerField;
    SDS_NotasFiscaisItensQUANT_FRACIONADA: TBCDField;
    SDS_NotasFiscaisItensLOTE_MED: TStringField;
    SDS_NotasFiscaisItensMARG_LUCRO: TFMTBCDField;
    SDS_NotasFiscaisItensATIVO: TStringField;
    SDS_NotasFiscaisItensBASE_ICMS_ST: TFMTBCDField;
    SDS_NotasFiscaisItensALIC_ICMS_ST: TFMTBCDField;
    SDS_NotasFiscaisItensVALOR_ICMS_ST: TFMTBCDField;
    SDS_NotasFiscaisItensCOD_EMPRESA: TIntegerField;
    SDS_NotasFiscaisItensIMOBILZ: TStringField;
    SDS_NotasFiscaisItensBASE_PIS: TFMTBCDField;
    SDS_NotasFiscaisItensPERC_PIS: TFMTBCDField;
    SDS_NotasFiscaisItensVALOR_PIS: TFMTBCDField;
    SDS_NotasFiscaisItensBASE_COFINS: TFMTBCDField;
    SDS_NotasFiscaisItensPERC_COFINS: TFMTBCDField;
    SDS_NotasFiscaisItensVALOR_COFINS: TFMTBCDField;
    SDS_NotasFiscaisItensBASE_IPI: TFMTBCDField;
    SDS_NotasFiscaisItensUN_FRACAO: TStringField;
    SDS_NotasFiscaisItensITEM: TIntegerField;
    SDS_NotasFiscaisItensCODFORNECEDOR: TIntegerField;
    SDS_NotasFiscaisItensNUM_NOTA: TStringField;
    SDS_NotasFiscaisItensICMS_RETIDO: TStringField;
    SDS_NotasFiscaisItensSUBTOTAL: TFMTBCDField;
    SDS_NotasFiscaisItensDESCONTO_P: TFMTBCDField;
    SDS_NotasFiscaisItensICMS_REDUCAO: TFMTBCDField;
    SDS_NotasFiscaisItensICMS_VALORRETIDO: TFMTBCDField;
    SDS_NotasFiscaisItensICMS_ISENTO: TFMTBCDField;
    SDS_NotasFiscaisItensICMS_NAOTRIBUTADO: TFMTBCDField;
    SDS_NotasFiscaisItensIPI_TIPO: TStringField;
    SDS_NotasFiscaisItensTIPO: TIntegerField;
    SDS_NotasFiscaisItensFRETE: TFMTBCDField;
    SDS_NotasFiscaisItensOUTRAS: TFMTBCDField;
    SDS_NotasFiscaisItensSEGURO: TFMTBCDField;
    SDS_NotasFiscaisItensCLASSIFICACAO_FISCAL: TStringField;
    SDS_NotasFiscaisItensSUB_PRODUTOS: TFMTBCDField;
    SDS_NotasFiscaisItensITEM_ESPECIAL_VALOR: TFMTBCDField;
    SDS_NotasFiscaisItensICMS_OUTRAS: TFMTBCDField;
    SDS_NotasFiscaisItensALTERA_ITEM: TIntegerField;
    SDS_NotasFiscaisItensCREDITO_ICMS: TFMTBCDField;
    SDS_NotasFiscaisItensCREDITO_ICMS_BASE: TFMTBCDField;
    SDS_NotasFiscaisItensPMARGEM: TSingleField;
    SDS_NotasFiscaisItensPRECO_CUSTO: TFMTBCDField;
    SDS_NotasFiscaisItensCODLANCAMENTO: TStringField;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxJPEGExport1: TfrxJPEGExport;
    Sds_produtos_cPROCURA: TStringField;
    SDS_PRODUTOSPROCURA: TStringField;
    SDS_PRODUTOSTEM_MESTRE: TStringField;
    SDS_PRODUTOSCOD_MESTRE: TIntegerField;
    Sds_produtos_cTEM_MESTRE: TStringField;
    Sds_produtos_cCOD_MESTRE: TIntegerField;
    SDS_PRODUTOSDESC_PROD_ANP: TStringField;
    Sds_produtos_cDESC_PROD_ANP: TStringField;
    qryNumerador: TFDQuery;
    SDS_CLICONSUMO_INTERNO: TStringField;
    SDS_ClientesCONSUMO_INTERNO: TStringField;
    procedure SDS_Contas_PagarBeforeInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure Sds_cidades1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure Sds_cidades1AfterPost(DataSet: TDataSet);
    procedure SDS_NotasFiscaisItens1AfterPost(DataSet: TDataSet);
    procedure sds_pedidos_itensAfterPost(DataSet: TDataSet);
    Function  LeIni(sArqIni : string; sSecao : string; sVariavel : string) : string;
    procedure GravaIni(sArqIni : string; sSecao : string; sVariavel : string; sValor : string);
    function  RetornaIntegerTabela(CampoRetorno : string; tabela : string; Campochave : string; ValorChave : integer) : integer;
    function  BuscaEstoqueProduto(const iCodPro : integer; const iCodEmp : integer) : currency;
    procedure IBDatabaseBeforeConnect(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure MensagemErroECF(const sMensagem : string; bMostrar : boolean);
  //  function  RetornaStringTabela(CampoRetorno : string; tabela : string; Campochave : string; ValorChave : integer) : string;
    function RetornaStringTabela(CampoRetorno: string; tabela: string;
        Campochave: string; ValorChave: integer; const Server: Boolean = False ): string;
    procedure AtualizaStatusNfe(const iCodigoNfe : integer; const sCampoStatus, sJustificativa : string);
    procedure AtualizaStatusNfce(const iCodigoNfe : integer; const sCampoStatus, sJustificativa : string);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    //Procedure OpenIBArray(IBSender: array of TIBCustomDataset);
//    Procedure CloseIBArray(IBSender: array of TIBCustomDataset);
    function MovimentoMesmoUF( UF: STring ): Boolean;
    procedure Dts_vendasDataChange(Sender: TObject; Field: TField);
    procedure  ScaleForm (F: TForm; TelaInteira: Boolean ) ;
    function BuscaCodigoProduto(const sCodBarra: string): integer;
    procedure CriaImg;
    procedure DestroyImg;
    procedure CarregaImagem2( Arquivo: string; Var Img: TJPEGImage );
    function VerificaTecla(Tecla: Char): Boolean;
    function IndiceRelGerencial(const sTipo: string): string;

    procedure ConfiguraNFe ;
    procedure ConfiguraNFe_dow;
    procedure ConfiguraNFCe;
    procedure DTS_CLIDataChange(Sender: TObject; Field: TField);
    function NomePlanoConta(ID: String): string;
    function BuscaPlanoConta(codigo: Integer): boolean;
    function Numerador(Tabela, Campo, filtra, where, Valor: String): Integer;

  private
    { Private declarations }

  public
    Libera_Insert, vFechaPrograma: Boolean;

  //  SincronizaMani: TSincronizaManifestacao;
    EMSincronizacaoMani : Boolean;

    FundoCaixa: String;
    Fundotroco: String;
    FundoFechaVenda: String;
    FundoCarrega: String;
    FundoMenTef: String;
    FundoEntradaTef: String;
    FundoMenuTef: STring;
    FundoBalanca: String;
    FundoLogin: String;
    LogoRestaurante: String;
    FundoPosto: String;
    ImgTempCia: TJPEGImage;

 end;

var
 DM: TDM;

  iEmp                : integer;
  iCodUsu             : integer;
  iECF                : Integer;
  iTipoEmp            : string;
  iCaixa              : integer;
  iAtrasoMaximo       : integer;
  iDiasAtrazo         : integer;
  iCodigoNFe          : integer;
  iCodigoCli          : integer;
  cSaldoCliente, limite_disponivel    : currency;
  sAuxString          : string;  //variavel usada para auxiliar nas consultas
  //dDataLiberacao      : TDate;
  bNoEstado           : boolean;
  bEstoqueNegativo    : boolean;
  bExibeMensagensErro : boolean;
  bMFD                : boolean;
  bDemonstracao       : boolean;
  sJustifNFe          : string;
  sCNPJEmpresa        : string;
  sMensagemECF        : string;
  agrupado : Boolean;

  xprod_escolh, xprod_escolh2, VENDA, COD_CRED :string;
  PODEFECHAR, removeservico, ecompra: Boolean;

  iIndiceBalanca, cod_cob: integer;
  iBaud, iPorta: integer;

  //MESAS
  TeclasSemQuantidade: Boolean;
  CodigoMesa :Integer;

  iTabelaPreco, altera_custo: integer;
  ColocaZerosEnter: Boolean;
  ColocaZerosNum : Integer;
  PQSempre: Boolean;
  codigo_it: string;
  atualiza_produto_novo: Boolean;

  serial_entrada: Boolean;

  mascara_valor, mascara_qtde, N_CUPOM, PREVENDA, cod_venda: string;

  vcredito_icms, vpis, vcofins: Double;

  cadastrouch: Boolean;

  atualiza :Boolean;

  iAuxCodPro    : integer;

  confirma_vale, libera_cliente : Boolean;
  Manifesto :integer;


  N_nfe: String;

  codigo_usuario, RESULTADO_PESQUISA1, RESULTADO_PESQUISA2, resultado_pesquisa3, resultado_pesquisa4,
  parametro_pesquisa : string;
  caminho_fotos_clientes : string;
 // IBArray: array of TIBCustomDataSet;

    PW: Double;
    PH: Double;
    
    function GeraNFCe1( nota: INteger; const EnvioOFF: Boolean = false  ): Boolean;

      const
       WOriginal = 1024;
       HOriginal = 768;


implementation

uses Uerro,  Ubibli1, UDialog,  wcrypt2,synacode, pcnNFe,
    ACBrDFeOpenSSL, pcnNFeRTXT, uConexaoBD, ufrmStatus, Clientes;

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

function TDM.Numerador(Tabela, Campo, filtra, where, Valor: String): Integer;
begin
  Result := 0;
  if filtra = 'N' then
  begin
    qryNumerador.Close;

    qryNumerador.sql.Text := 'SELECT MAX(' + Campo + ')MAIOR FROM ' + Tabela;
    qryNumerador.Open;
  end;
  if filtra = 'S' then
  begin
    qryNumerador.Close;
    qryNumerador.sql.Text := 'SELECT MAX(' + Campo + ')MAIOR FROM ' + Tabela +
      ' WHERE ' + where + '=' + Valor;
    qryNumerador.Open;
  end;
  Result := qryNumerador.Fields[0].AsInteger + 1;
end;

procedure TDM.ConfiguraNFe_dow;
var
  AuxB: Boolean;
  amb: Integer;
begin
 // ACBrNFeDANFEFR1.MostrarPreview:= False;

  ACBrNFeDANFEFR1.FastFile:= ExtractFilePath(Application.ExeName) + '\Rel\DANFeRetrato.fr3';
  ACBrNFeDANFEFR1.FastFileEvento:= ExtractFilePath(Application.ExeName) +'\rel\EVENTOS.fr3';
  ACBrNFeDANFEFR1.FastFileInutilizacao := ExtractFilePath(Application.ExeName)+'\rel\INUTILIZACAO.fr3';
  ACBrNFeDANFEFR1.MargemEsquerda := 0;
  ACBrNFeDANFEFR1.MargemDireita := 0;
  ACBrNFeDANFEFR1.MargemSuperior := 0;
  ACBrNFeDANFEFR1.MargemInferior := 0;
  //ACBrNFeDANFeRL1.TipoDANFE := tiRetrato;

  DM.QConsulta.Close;
  with DM.QConsulta do
  begin
    SQL.Clear;
    SQL.Add('select * from configuracoes where cod_empresa =:empresa');
    Params.ParamByName('empresa').AsInteger:= iemp;
    Open;

    DM.ACBrNFe1.Configuracoes.Certificados.URLPFX      := DM.SDS_CONFIGURACOESURLPFX.Text;
    DM.ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := DM.SDS_CONFIGURACOESCAMINHO_CERTIFICADO.Text;
    DM.ACBrNFe1.Configuracoes.Certificados.Senha       := DM.SDS_CONFIGURACOESNFE_SENHA.Text;
    DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := DM.SDS_CONFIGURACOESNFE_CERTIFICAO.Text;

   with DM.ACBrNFe1.Configuracoes.Geral do
   begin
    SSLLib        := TSSLLib(DM.SDS_CONFIGURACOESSSLLib.Value);
    SSLCryptLib   := TSSLCryptLib(DM.SDS_CONFIGURACOESCryptLib.asinteger);
    SSLHttpLib    := TSSLHttpLib(DM.SDS_CONFIGURACOESHttpLib.asinteger);
    SSLXmlSignLib := TSSLXmlSignLib(DM.SDS_CONFIGURACOESXmlSignLib.asinteger);
    IdCSC            := DM.SDS_CONFIGURACOESID_TOKEN.Text;
    CSC              := DM.SDS_CONFIGURACOESTOKEN.Text;
    VersaoQRCode     := veqr200;
    DM.ACBrNFe1.SSL.SSLType := TSSLType(DM.SDS_CONFIGURACOESSSLType.ASINTEGER);
   end;

   // dm.ACBrNFe1.SSL.SSLType := TSSLType(DM.SDS_CONFIGURACOESSSLType.ASINTEGER);

    DM.ACBrNFe1.Configuracoes.Geral.AtualizarXMLCancelado:= True;

    DM.ACBrNFe1.Configuracoes.geral.ModeloDF:= TpcnModeloDF(moNFe);

    DM.ACBrNFe1.Configuracoes.geral.VersaoDF:= TpcnVersaoDF(DM.SDS_CONFIGURACOESVERSAO_NFE.Value);

    DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao:= TpcnTipoEmissao(SDS_CONFIGURACOESTIPO_EMISSAO_NFE.AsInteger) ;

    DM.ACBrNFe1.Configuracoes.Arquivos.PathSchemas := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFE';

    DM.ACBrNFeDANFEFR1.tipoDanfe:= tiRetrato;
 //   DM.ACBrNFeDANFEFR1.ShowDialog:= True;
  //  DM.ACBrNFeDANFEFR1.MostrarPreview:= True;
    DM.ACBrNFe1.Configuracoes.Geral.Salvar:= True;
    DM.ACBrNFe1.Configuracoes.Arquivos.Salvar:= True;
    DM.ACBrNFe1.Configuracoes.Arquivos.SepararPorCNPJ:= false;
    DM.ACBrNFe1.Configuracoes.Arquivos.SepararPorIE:= false;
    DM.ACBrNFe1.Configuracoes.Arquivos.SepararPorAno:= false;
    DM.ACBrNFe1.Configuracoes.Arquivos.SepararPormes:= false;
    DM.ACBrNFe1.Configuracoes.Arquivos.SepararPordia:= false;
    DM.ACBrNFe1.Configuracoes.Arquivos.SepararPormodelo:= false;
    DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar  := ExtractFilePath(Application.ExeName) +'\XML-IMPORTAR';
    DM.ACBrNFe1.Configuracoes.arquivos.PathNFe     := ExtractFilePath(Application.ExeName) +'\XML-IMPORTAR';
    DM.ACBrNFe1.Configuracoes.arquivos.PathInu     := ExtractFilePath(Application.ExeName) +'\XML-IMPORTAR';
    DM.ACBrNFe1.Configuracoes.arquivos.PathEvento  := ExtractFilePath(Application.ExeName) +'\XML-IMPORTAR';
    DM.ACBrNFe1.DANFE.PathPDF:= ExtractFilePath(Application.ExeName) +'\XML-IMPORTAR';
   // DM.ACBrNFe1.Configuracoes.arquivos. :=

    DM.ACBrNFe1.Configuracoes.arquivos.PathSchemas:= ExtractFilePath(Application.ExeName) + '\Schemas\NFe';
    DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie:= FieldByName('NFE_CERTIFICAO').AsString;
    DM.ACBrNFe1.Configuracoes.Certificados.Senha:= FieldByName('NFE_SENHA').AsString;
    if  FieldByName('AMBIENTE_DANFE').AsString = 'P' then
      amb:= 1
    else
      amb:= 2;
    DM.ACBrNFe1.Configuracoes.WebServices.Ambiente:= StrToTpAmb(AuxB, IntToStr(amb));
    DM.ACBrNFe1.Configuracoes.WebServices.UF:= FieldByName('ESTADO_NFE').AsString;
    DM.ACBrNFe1.Configuracoes.WebServices.Visualizar:= False;
    DM.ACBrNFe1.Configuracoes.Geral.ExibirErroSchema:= True;
    DM.ACBrNFe1.Configuracoes.Arquivos.SepararPorMes:= True;
    DM.ACBrNFe1.Configuracoes.Geral.Salvar:= True;
    DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar  := ExtractFilePath(Application.ExeName) +'\XML-IMPORTAR';
    DM.ACBrNFe1.Configuracoes.Arquivos.PathNFe:= ExtractFilePath(Application.ExeName) +'\XML-IMPORTAR';
    DM.ACBrNFe1.Configuracoes.Arquivos.PathEvento:=ExtractFilePath(Application.ExeName) +'\XML-IMPORTAR';
    DM.ACBrNFe1.Configuracoes.Arquivos.PathInu:=  ExtractFilePath(Application.ExeName) +'\XML-IMPORTAR';
    DM.ACBrNFe1.DANFE.PathPDF:= ExtractFilePath(Application.ExeName) +'\XML-IMPORTAR';

    DM.ACBrNFe1.Configuracoes.Arquivos.IniServicos := ExtractFilePath(Application.ExeName)+'ACBrNFeServicos.ini';
  end;
  DM.QConsulta.Close;
end;

procedure TDM.ConfiguraNFe;
var
  AuxB: Boolean;
  amb: Integer;
begin
 // ACBrNFeDANFEFR1.MostrarPreview:= False;

  ACBrNFeDANFEFR1.FastFile:= ExtractFilePath(Application.ExeName) + '\Rel\DANFeRetrato.fr3';
  ACBrNFeDANFEFR1.FastFileEvento:= ExtractFilePath(Application.ExeName) +'\rel\EVENTOS.fr3';
  ACBrNFeDANFEFR1.FastFileInutilizacao := ExtractFilePath(Application.ExeName)+'\rel\INUTILIZACAO.fr3';
  ACBrNFeDANFEFR1.MargemEsquerda := 0;
  ACBrNFeDANFEFR1.MargemDireita := 0;
  ACBrNFeDANFEFR1.MargemSuperior := 0;
  ACBrNFeDANFEFR1.MargemInferior := 0;
  //ACBrNFeDANFeRL1.TipoDANFE := tiRetrato;

  DM.QConsulta.Close;
  with DM.QConsulta do
  begin
    SQL.Clear;
    SQL.Add('select * from configuracoes where cod_empresa =:empresa');
    Params.ParamByName('empresa').AsInteger:= iemp;
    Open;

    DM.ACBrNFe1.Configuracoes.Certificados.URLPFX      := DM.SDS_CONFIGURACOESURLPFX.Text;
    DM.ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := DM.SDS_CONFIGURACOESCAMINHO_CERTIFICADO.Text;
    DM.ACBrNFe1.Configuracoes.Certificados.Senha       := DM.SDS_CONFIGURACOESNFE_SENHA.Text;
    DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := DM.SDS_CONFIGURACOESNFE_CERTIFICAO.Text;

   with DM.ACBrNFe1.Configuracoes.Geral do
   begin
    SSLLib        := TSSLLib(DM.SDS_CONFIGURACOESSSLLib.Value);
    SSLCryptLib   := TSSLCryptLib(DM.SDS_CONFIGURACOESCryptLib.asinteger);
    SSLHttpLib    := TSSLHttpLib(DM.SDS_CONFIGURACOESHttpLib.asinteger);
    SSLXmlSignLib := TSSLXmlSignLib(DM.SDS_CONFIGURACOESXmlSignLib.asinteger);
    IdCSC            := DM.SDS_CONFIGURACOESID_TOKEN.Text;
    CSC              := DM.SDS_CONFIGURACOESTOKEN.Text;
    VersaoQRCode     := veqr200;
    DM.ACBrNFe1.SSL.SSLType := TSSLType(DM.SDS_CONFIGURACOESSSLType.ASINTEGER);
   end;

   // dm.ACBrNFe1.SSL.SSLType := TSSLType(DM.SDS_CONFIGURACOESSSLType.ASINTEGER);

    DM.ACBrNFe1.Configuracoes.Geral.AtualizarXMLCancelado:= True;

    DM.ACBrNFe1.Configuracoes.geral.ModeloDF:= TpcnModeloDF(moNFe);

    DM.ACBrNFe1.Configuracoes.geral.VersaoDF:= TpcnVersaoDF(DM.SDS_CONFIGURACOESVERSAO_NFE.Value);

    DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao:= TpcnTipoEmissao(SDS_CONFIGURACOESTIPO_EMISSAO_NFE.AsInteger) ;

    DM.ACBrNFe1.Configuracoes.Arquivos.PathSchemas := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFE';

    DM.ACBrNFeDANFEFR1.tipoDanfe:= tiRetrato;
 //   DM.ACBrNFeDANFEFR1.ShowDialog:= True;
  //  DM.ACBrNFeDANFEFR1.MostrarPreview:= True;
    DM.ACBrNFe1.Configuracoes.Geral.Salvar:= True;
    DM.ACBrNFe1.Configuracoes.Arquivos.Salvar:= True;
    DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar  := FieldByName('NFE_CAMINHO_XML').AsString;
    DM.ACBrNFe1.Configuracoes.arquivos.PathNFe     := FieldByName('PASTA_TRANSMITIDAS_DANFE').AsString;
    DM.ACBrNFe1.Configuracoes.arquivos.PathInu     := FieldByName('PASTA_INUTILIZADAS_DANFE').AsString;
    DM.ACBrNFe1.Configuracoes.arquivos.PathEvento  := FieldByName('PATHEVENTO_NFE').AsString;
    DM.ACBrNFe1.DANFE.PathPDF:= FieldByName('CAMINHO_ARQUIVOS_PDF').AsString;
   // DM.ACBrNFe1.Configuracoes.arquivos. :=

    DM.ACBrNFe1.Configuracoes.arquivos.PathSchemas:= ExtractFilePath(Application.ExeName) + '\Schemas\NFe';
    DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie:= FieldByName('NFE_CERTIFICAO').AsString;
    DM.ACBrNFe1.Configuracoes.Certificados.Senha:= FieldByName('NFE_SENHA').AsString;
    if  FieldByName('AMBIENTE_DANFE').AsString = 'P' then
      amb:= 1
    else
      amb:= 2;
    DM.ACBrNFe1.Configuracoes.WebServices.Ambiente:= StrToTpAmb(AuxB, IntToStr(amb));
    DM.ACBrNFe1.Configuracoes.WebServices.UF:= FieldByName('ESTADO_NFE').AsString;
    DM.ACBrNFe1.Configuracoes.WebServices.Visualizar:= False;
    DM.ACBrNFe1.Configuracoes.Geral.ExibirErroSchema:= True;
    DM.ACBrNFe1.Configuracoes.Arquivos.SepararPorMes:= True;
    DM.ACBrNFe1.Configuracoes.Geral.Salvar:= True;
    DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar  := FieldByName('NFE_CAMINHO_XML').AsString;
    DM.ACBrNFe1.Configuracoes.Arquivos.PathNFe:= FieldByName('PASTA_TRANSMITIDAS_DANFE').AsString;
    DM.ACBrNFe1.Configuracoes.Arquivos.PathEvento:= FieldByName('PATHEVENTO_NFE').AsString;
    DM.ACBrNFe1.Configuracoes.Arquivos.PathInu:=  FieldByName('PASTA_INUTILIZADAS_DANFE').AsString;
    DM.ACBrNFe1.DANFE.PathPDF:= FieldByName('CAMINHO_ARQUIVOS_PDF').AsString;

    DM.ACBrNFe1.Configuracoes.Arquivos.IniServicos := ExtractFilePath(Application.ExeName)+'ACBrNFeServicos.ini';
  end;
  DM.QConsulta.Close;
end;

procedure TDM.ConfiguraNFCe;
var
  AuxB: Boolean;
  amb: Integer;
begin
 // DM.ACBrNFeDANFEFR1.MostrarPreview:= False;
  ACBrNFeDANFEFR1.FastFile:= ExtractFilePath(Application.ExeName) + '\Rel\DANFeNFCe.fr3';
  ACBrNFeDANFEFR1.FastFileEvento:= ExtractFilePath(Application.ExeName) +'\rel\EventosNFCe.fr3';
  ACBrNFeDANFEFR1.FastFileInutilizacao := ExtractFilePath(Application.ExeName)+'\rel\INUTILIZACAONFCE.fr3';

//  ACBrNFeDANFeRL1.TipoDANFE := tiNFCe;

  DM.ACBrNFe1.Configuracoes.Certificados.URLPFX      := DM.SDS_CONFIGURACOESURLPFX.Text;
  DM.ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := DM.SDS_CONFIGURACOESCAMINHO_CERTIFICADO.Text;
  DM.ACBrNFe1.Configuracoes.Certificados.Senha       := DM.SDS_CONFIGURACOESNFE_SENHA.Text;
  DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie := DM.SDS_CONFIGURACOESNFE_CERTIFICAO.Text;

  DM.ACBrNFe1.Configuracoes.Arquivos.IniServicos := ExtractFilePath(Application.ExeName)+'ACBrNFeServicos.ini';

   with DM.ACBrNFe1.Configuracoes.Geral do
   begin
    SSLLib        := TSSLLib(DM.SDS_CONFIGURACOESSSLLib.Value);
    SSLCryptLib   := TSSLCryptLib(DM.SDS_CONFIGURACOESCryptLib.asinteger);
    SSLHttpLib    := TSSLHttpLib(DM.SDS_CONFIGURACOESHttpLib.asinteger);
    SSLXmlSignLib := TSSLXmlSignLib(DM.SDS_CONFIGURACOESXmlSignLib.asinteger);
    IdCSC            := DM.SDS_CONFIGURACOESID_TOKEN.Text;
    CSC              := DM.SDS_CONFIGURACOESTOKEN.Text;
    VersaoQRCode     := veqr200;
    DM.ACBrNFe1.SSL.SSLType := TSSLType(DM.SDS_CONFIGURACOESSSLType.ASINTEGER);
   end;

   // dm.ACBrNFe1.SSL.SSLType := TSSLType(DM.SDS_CONFIGURACOESSSLType.ASINTEGER);

    DM.ACBrNFe1.Configuracoes.Geral.AtualizarXMLCancelado:= True;

    DM.ACBrNFe1.Configuracoes.geral.ModeloDF:= TpcnModeloDF(moNFCe);

    DM.ACBrNFe1.Configuracoes.geral.VersaoDF:= TpcnVersaoDF(DM.SDS_CONFIGURACOESVERSAO_NFE.Value);

    DM.ACBrNFe1.Configuracoes.Geral.FormaEmissao:= TpcnTipoEmissao(SDS_CONFIGURACOESTIPO_EMISSAO_NFE.AsInteger) ;

    DM.ACBrNFe1.Configuracoes.Arquivos.PathSchemas := PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\NFE';

  DM.QConsulta.Close;
  with DM.QConsulta do
  begin
    SQL.Clear;
    SQL.Add('select * from configuracoes where cod_empresa =:empresa');
    Params.ParamByName('empresa').AsInteger:= DM.SDS_EmpresaCODIGO.AsInteger;
    Open;


 //   DM.ACBrNFeDANFEFR1.MostrarPreview:= DM.SDS_CONFIGURACOESPREVIEW_NFE.Text = 'S';
 //   DM.ACBrNFeDANFEFR1.ShowDialog:= DM.SDS_CONFIGURACOESPREVIEW_NFE.Text = 'S';
    DM.ACBrNFe1.Configuracoes.Geral.Salvar:= True;
    DM.ACBrNFe1.Configuracoes.Arquivos.Salvar:= True;
    DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar  := FieldByName('NFE_CAMINHO_XML').AsString;
    DM.ACBrNFe1.Configuracoes.Arquivos.PathNFe:= FieldByName('PASTA_TRANSMITIDAS_DANFE').AsString;
    DM.ACBrNFe1.Configuracoes.Arquivos.PathEvento:= FieldByName('PATHEVENTO_NFE').AsString;
    DM.ACBrNFe1.Configuracoes.Arquivos.PathInu:=  FieldByName('PASTA_INUTILIZADAS_DANFE').AsString;
    DM.ACBrNFe1.DANFE.PathPDF:= FieldByName('CAMINHO_ARQUIVOS_PDF').AsString;
    DM.ACBrNFe1.Configuracoes.arquivos.PathSchemas:= ExtractFilePath(Application.ExeName) + '\Schemas\NFE';
    DM.ACBrNFe1.Configuracoes.Certificados.NumeroSerie:= FieldByName('NFE_CERTIFICAO').AsString;
    DM.ACBrNFe1.Configuracoes.Certificados.Senha:= FieldByName('NFE_SENHA').AsString;
    if  FieldByName('AMBIENTE_DANFE').AsString = 'P' then
      amb:= 1
    else
      amb:= 2;
    DM.ACBrNFe1.Configuracoes.WebServices.Ambiente:= StrToTpAmb(AuxB, IntToStr(amb));
    DM.ACBrNFe1.Configuracoes.WebServices.UF:= FieldByName('ESTADO_NFE').AsString;
    DM.ACBrNFe1.Configuracoes.WebServices.Visualizar:= False;
    DM.ACBrNFe1.Configuracoes.Geral.ExibirErroSchema:= True;
    DM.ACBrNFe1.Configuracoes.Arquivos.SepararPorMes:= True;
    DM.ACBrNFe1.Configuracoes.Geral.Salvar:= True;
    DM.ACBrNFe1.Configuracoes.arquivos.PathSalvar  := FieldByName('NFE_CAMINHO_XML').AsString;
    DM.ACBrNFe1.Configuracoes.Arquivos.PathNFe:= FieldByName('PASTA_TRANSMITIDAS_DANFE').AsString;
    DM.ACBrNFe1.Configuracoes.Arquivos.PathEvento:= FieldByName('PATHEVENTO_NFE').AsString;
    DM.ACBrNFe1.Configuracoes.Arquivos.PathInu:=  FieldByName('PASTA_INUTILIZADAS_DANFE').AsString;
    DM.ACBrNFe1.DANFE.PathPDF:= FieldByName('CAMINHO_ARQUIVOS_PDF').AsString;
    if Trim(FieldByName('ID_TOKEN').AsString) <> EmptyStr then
    begin
      DM.ACBrNFe1.Configuracoes.Geral.IdCSC:= Trim(FieldByName('TOKEN').AsString);
      DM.ACBrNFe1.Configuracoes.Geral.CSC:= Trim(FieldByName('ID_TOKEN').AsString);
    end;

    if DM.SDS_UsuariosIMP_DARUMA_NFCE.Text ='S'then
    BEGIN
    ACBrNFeDANFeESCPOS.ACBrNFe := DM.ACBrNFe1;
 {   ACBrPosPrinter1.Modelo        := TACBrPosPrinterModelo(cbxModelo.ItemIndex);
    ACBrPosPrinter1.Device.Porta  := cbxPorta.Text;
    ACBrPosPrinter1.Device.Baud   := StrToInt(cbxVelocidade.Text);
    ACBrPosPrinter1.IgnorarTags   := True; // chkIgnorarTagsFormatacao.Checked;
    ACBrPosPrinter1.ControlePorta := True; // True faz com que o componente abra e feche a porta conforme a necessidade automaticamente

    ACBrNFeDANFeESCPOS.ImprimeEmUmaLinha     := FALSE;// chkImprimirItem1Linha.Checked;
    ACBrNFeDANFeESCPOS.ImprimeDescAcrescItem := TRUE;//chkImprimirDescAcresItem.Checked;

    ACBrNFeDANFeESCPOS.PosPrinter.LinhasEntreCupons := 1;//edtLinhasEntreCupom.Value;


              }
  end;
  end;
  DM.QConsulta.Close;
end;


function TDM.IndiceRelGerencial(const sTipo: string): string;
begin
  if DM.IBTransaction.Active then
    DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
  try
    try
      with DM.QConsulta do
      begin
        close;
        sql.Clear;
        sql.Text :=
          'SELECT INDICE_GER_OS, INDICE_GER_ORCAMENTO, INDICE_GER_MESA ' +
          'FROM CAIXA ' + 'WHERE COD_CAI = :CODCAI AND COD_EMP = :CODEMP';
        Parambyname('codcai').AsInteger := iCaixa;
        Parambyname('codemp').AsInteger := iEmp;
        open;
        if trim(sTipo) = 'OS' then
          result := fieldbyname('indice_ger_os').AsString
        else if trim(sTipo) = 'ORCAMENTO' then
          result := fieldbyname('indice_ger_orcamento').AsString
        else if trim(sTipo) = 'MESA' then
          result := fieldbyname('indice_ger_mesa').AsString
        else
          result := '01';
      end;
      DM.IBTransaction.Commit;
    except
      DM.IBTransaction.Rollback;
      result := '01';
      showmessage('Erro ao buscar o índice');
    end;
  finally
    DM.QConsulta.close;
  end;
end;

procedure TDM.CriaImg;
begin
   ImgTempCia := TJPEGImage.Create;
end;

procedure TDM.DestroyImg;
begin
   if Assigned( ImgTempCia ) then
      begin
          ImgTempCia.Free;
          ImgTempCia := nil;
      end;
end;


function TDM.VerificaTecla(Tecla: Char): Boolean;
begin
   Result := False;
   if IBTransaction.Active then
      IBTransaction.Commit;
   IBTransaction.StartTransaction;

   with QConsulta do
      begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from GRUPO_TECLAS where TECLA=:TECLA';
          ParamByName( 'TECLA' ).AsString := Tecla;
          Open;
          if not IsEmpty then
             Result := true
          else
             Result := False;
          Close;
      end;

   IBTransaction.Commit;

end;

procedure TDM.CarregaImagem2(Arquivo: string; var Img: TJPEGImage);
var
   Bmp, BMp2: TBitmap;
   Jpg: TJPEGImage;
begin
  Bmp := TBitmap.Create;
  Bmp2 := TBitmap.Create;
  Jpg := TJPEGImage.Create;
  Jpg.LoadFromFile( Arquivo );
  Bmp2.Assign( Jpg );
  try
    //r := Rect(0, 0, Screen.Width, Screen.Height);
    Bmp.Width := Round( ( BMp2.Width  * Pw ) / 100 );
    Bmp.Height := Round ( ( Bmp2.Height * Ph ) / 100 );
    // R2 := Rect( 0, 0,Larg - Col, Alt - Lin );
    SetStretchBltMode(Bmp.Canvas.Handle, HALFTONE);
    StretchBlt( Bmp.Canvas.Handle, 0, 0, Bmp.Width, Bmp.Height, Bmp2.Canvas.Handle, 0, 0,
    Bmp2.Width,  Bmp2.Height, SRCCOPY);
    Img.Assign( Bmp );

    //Bild.Canvas.CopyRect(r, C, r);
  finally
    Bmp.Free;
    bmp := nil;
    Bmp2.Free;
    bmp2 := nil;
    Jpg.Free;
    Jpg := nil;

  end;
end;


function TDM.BuscaCodigoProduto(const sCodBarra: string): integer;
begin
  if DM.IBTransaction.Active then
    DM.IBTransaction.Commit;
  DM.IBTransaction.StartTransaction;
  try
    try
      with DM.QConsulta do
      begin
        close;
        sql.Clear;
        sql.Add('SELECT CODIGO ' + 'FROM PRODUTOS ' +
          'WHERE CODIGO_BARRAS = :CODBAR');
        Parambyname('codbar').AsString := trim(sCodBarra);
        open;
        result := fieldbyname('codigo').AsInteger;
      end;
      DM.IBTransaction.Commit;
    except
      DM.IBTransaction.Rollback;
      showmessage('Erro ao buscar o código do produto');
      result := 0;
    end;
  finally
    DM.QConsulta.close;
  end;
end;

procedure TDM.ScaleForm (F: TForm; TelaInteira: Boolean) ;
procedure ModifyFontsFor(ctrl: TWinControl);
  procedure ModifyFont(ctrl: TControl);
  var
    f: TFont;

  begin
    if IsPublishedProp(ctrl, 'Parentfont')
      and (GetOrdProp(ctrl, 'Parentfont') = Ord(false))
      and  IsPublishedProp(ctrl, 'font')
      then begin
               f := TFont(GetObjectProp(ctrl, 'font', TFont));
               f.Size := Round( ( F.Size * ( ( PW + PH ) /2 ) ) /100 );
           end;

  end;
var
  i: Integer;
begin
  ModifyFont(ctrl);
  for i := 0 to ctrl.controlcount - 1 do
    if ctrl.controls[i] is Twincontrol then
      ModifyFontsfor(TWincontrol(ctrl.controls[i]))
    else
      Modifyfont(ctrl.controls[i]);
end;

var
ScreenRatio : Double;
I, I2: Integer;
Tam: Double;
propInfo : PPropInfo;
begin
  ScreenRatio := Screen.Height / Screen.Width;
  F.Scaled := True;
  F.AutoScroll := false;
  F.position := poDesigned;
 // F.Font.Name := 'Arial';
  if TelaInteira then
     begin
        F.Left := 0;
        F.Top := 0;
        F.Height := Round( ( F.Height * PH ) /100 );
        F.Width := Round(  (F.Width * Pw ) / 100 );
     end
  else
      begin
        if ScreenRatio >= 0.75 then
           begin
              if PW < 90 then
                      F.Height := Round( ( F.Height *  ( Pw  + 10 )) /100 )
              else
                      F.Height := Round( ( F.Height *  ( Pw  )) /100 )
           end
        else
        F.Height := Round( ( F.Height * ( ( PW + PH ) /2) )  /100 );
        F.Width := Round(  (F.Width * PW )   / 100 );
        F.Left := ( Screen.Width - F.Width ) div 2;
        F.Top := ( Screen.Height - F.Height ) div 2;
      end;
  if ScreenRatio >= 0.75 then
     begin
                for i := F.componentCount - 1 downto 0 do
            begin

                if ( F.Components[I] is TWinControl  )and not ( F.Components[I] is TListView) then
                   begin
//                      TWinControl( F.Components[I] ).Font.Size := (screen.width DIV ScreenWidth) * TCurrencyEdit( F.Components[I] ).font.size;
                      TWinControl( F.Components[I] ).Height := Round(( TWinControl( F.Components[I] ).Height * PH ) /100);
                      TWinControl( F.Components[I] ).Width := Round(( TWinControl( F.Components[I] ).Width * Pw ) /100);
                      TWinControl( F.Components[I] ).Top :=  Round(( TWinControl( F.Components[I] ).Top * Ph ) /100);
                      TWinControl( F.Components[I] ).Left :=  Round(( TWinControl( F.Components[I] ).Left * Pw ) /100);

                   end else
                if ( F.Components[I] is TControl  ) and not ( F.Components[I] is TListView)then
                   begin
//                      TWinControl( F.Components[I] ).Font.Size := (screen.width DIV ScreenWidth) * TCurrencyEdit( F.Components[I] ).font.size;
                      TControl( F.Components[I] ).Height := Round(( TControl( F.Components[I] ).Height * PH ) /100);
                      TControl( F.Components[I] ).Width := Round(( TControl( F.Components[I] ).Width * Pw ) /100);
                      TControl( F.Components[I] ).Top :=  Round(( TControl( F.Components[I] ).Top * Ph ) /100);
                      TControl( F.Components[I] ).Left :=  Round(( TControl( F.Components[I] ).Left * Pw ) /100);
                   end;
                 if ( f.Components[I] is TLabel )  then
                    begin
                       TLabel( f.Components[I] ).Font.Size :=
                       Round( ( TLabel( f.Components[I] ).Font.Size * pw ) / 100 );
                    end;

                 if ( f.Components[I] is TsAlphaImageList ) then
                    begin
                      if not ( F.Components[I].Name = 'ImagensMesas'  ) then
                         begin
                             TsAlphaImageList( f.Components[I] ).Width :=
                                Round( ( TsAlphaImageList( f.Components[I] ).Width * ( ( Pw + Ph )/ 2 ) / 100 ) );
                             TsAlphaImageList( f.Components[I] ).Height :=
                                Round( ( TsAlphaImageList( f.Components[I] ).Height * ( ( Pw + Ph )/ 2 ) / 100 ) );
                         end;

                    end;

                if ( F.Components[I] is TDBGrid  ) then
                   begin
                      TDBGrid( F.Components[I] ).TitleFont.Size :=
                      Round( (  TDBGrid( F.Components[I] ).TitleFont.Size * ( ( Pw + ph) / 2 ) / 100 )  );

                      for I2 := 0 to TDBGrid( F.Components[I] ).Columns.Count - 1 do
                         begin
                          TDBGrid( F.Components[I] ).Columns.Items[I2].Width :=
                           Round( (  TDBGrid( F.Components[I] ).Columns.Items[I2].Width * PW ) / 100 );
                      //    TDBGrid( F.Components[I] ).Font.Size := Round( TDBGrid( F.Components[I] ).Font.Size * ( ( PW + Ph ) / 2) /100 );
                         end;
                   end;
                if ( F.Components[I] is TStatusBar  ) then
                   begin
                      for I2 := 0 to TStatusBar( F.Components[I] ).Panels.Count - 1 do
                          TStatusBar( F.Components[I] ).Panels.Items[I2].Width :=
                          Round( ( TStatusBar( F.Components[I] ).Panels.Items[I2].Width * PW ) / 100  ) ;
                   end;
                if ( f.Components[I] is TListView ) then
                   begin
                       TListView( F.Components[I] ).Height := Round(( TListView( F.Components[I] ).Height * PH ) /100);
                       TListView( F.Components[I] ).Width := Round(( TListView( F.Components[I] ).Width * Pw ) /100);
//                       TListView( F.Components[I] ).Top :=  Round(( TListView( F.Components[I] ).Top * Ph ) /100);
   //                    TListView( F.Components[I] ).Left :=  Round(( TListView( F.Components[I] ).Left * Pw ) /100);

                   end;

             end;

     end
  else
     begin
        for i := F.componentCount - 1 downto 0 do
            begin
                if ( F.Components[I] is TWinControl ) and not ( F.Components[I] is TListView) then
                   begin
//                      TWinControl( F.Components[I] ).Font.Size := (screen.width DIV ScreenWidth) * TCurrencyEdit( F.Components[I] ).font.size;
                      TWinControl( F.Components[I] ).Height := Round(( TWinControl( F.Components[I] ).Height * PH ) /100);
                      TWinControl( F.Components[I] ).Width := Round(( TWinControl( F.Components[I] ).Width * Pw ) /100);
                      TWinControl( F.Components[I] ).Top :=  Round(( TWinControl( F.Components[I] ).Top * Ph ) /100);
                      TWinControl( F.Components[I] ).Left :=  Round(( TWinControl( F.Components[I] ).Left * Pw ) /100);

                   end else
                if ( F.Components[I] is TControl  ) and not ( F.Components[I] is TListView) then
                   begin
//                      TWinControl( F.Components[I] ).Font.Size := (screen.width DIV ScreenWidth) * TCurrencyEdit( F.Components[I] ).font.size;
                      TControl( F.Components[I] ).Height := Round(( TControl( F.Components[I] ).Height * PH ) /100);
                      TControl( F.Components[I] ).Width := Round(( TControl( F.Components[I] ).Width * Pw ) /100);
                      TControl( F.Components[I] ).Top :=  Round(( TControl( F.Components[I] ).Top * Ph ) /100);
                      TControl( F.Components[I] ).Left :=  Round(( TControl( F.Components[I] ).Left * Pw ) /100);
                   end;

                 if ( f.Components[I] is TsAlphaImageList ) then
                    begin
                      if not ( F.Components[I].Name = 'ImagensMesas'  ) then
                         begin
                             TsAlphaImageList( f.Components[I] ).Width :=
                                Round( ( TsAlphaImageList( f.Components[I] ).Width * ( ( Pw + Ph )/ 2 ) / 100 ) );
                             TsAlphaImageList( f.Components[I] ).Height :=
                                Round( ( TsAlphaImageList( f.Components[I] ).Height * ( ( Pw + Ph )/ 2 ) / 100 ) );
                         end;
                    end;

                if ( F.Components[I] is TDBGrid  ) then
                   begin
                      TDBGrid( F.Components[I] ).TitleFont.Size :=
                      Round( (  TDBGrid( F.Components[I] ).TitleFont.Size * ( ( Pw + ph) / 2 ) / 100 )  );

                      for I2 := 0 to TDBGrid( F.Components[I] ).Columns.Count - 1 do
                         begin
                          TDBGrid( F.Components[I] ).Columns.Items[I2].Width :=
                           Round( (  TDBGrid( F.Components[I] ).Columns.Items[I2].Width * PW ) / 100 );
//                          TDBGrid( F.Components[I] ).Font.Size := Round( TDBGrid( F.Components[I] ).Font.Size * ( ( PW + Ph ) / 2) /100 );
                         end;
                   end;
                if ( F.Components[I] is TStatusBar  ) then
                   begin
                      for I2 := 0 to TStatusBar( F.Components[I] ).Panels.Count - 1 do
                          TStatusBar( F.Components[I] ).Panels.Items[I2].Width :=
                          Round( ( TStatusBar( F.Components[I] ).Panels.Items[I2].Width * PW ) / 100  ) ;
                   end;
                if ( f.Components[I] is TListView ) then
                   begin
                       TListView( F.Components[I] ).Height := Round(( TListView( F.Components[I] ).Height * PH ) /100);
                       TListView( F.Components[I] ).Width := Round(( TListView( F.Components[I] ).Width * Pw ) /100);
                     //  TListView( F.Components[I] ).Top :=  Round(( TListView( F.Components[I] ).Top * Ph ) /100);
                       //TListView( F.Components[I] ).Left :=  Round(( TListView( F.Components[I] ).Left * Pw ) /100);

                   end;

             end;

     end;
  ModifyFontsFor( F );
end;


function TDM.MovimentoMesmoUF(UF: STring): Boolean;
begin
  if dm.IBTransaction.active then
     dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;

  dm.QConsulta.Close;
  dm.QConsulta.SQL.Text := 'select uf from EMPRESA where CODigo=:COD_EMP';
  dm.QConsulta.ParamByName( 'COD_EMP' ).AsInteger := iEmp;
  dm.QConsulta.Open;
  if Trim(  dm.QConsulta.FieldByName( 'uf'  ).AsString )= UF then
     result := True
  else
     result := False;

  dm.IBTransaction.Commit;
end;

procedure TDM.AtualizaStatusNfe(const iCodigoNfe : integer; const sCampoStatus, sJustificativa : string);
var
 SQLTemp: String;
begin
   if IBTransaction.Active then
      IBTransaction.Commit;
   IBTransaction.StartTransaction;
   try
     try
       with QConsulta do
          begin
             close;
             sql.Clear;
             if trim(sJustificativa) = 'NULL' then
                begin
                   SQLTemp := 'UPDATE NFE_NOTA ' +
                              'SET ' + trim(sCampoStatus) + '=' + quotedstr('S') +
                              ' WHERE NR_NOTA = :CODNF';
                   sql.Text:= SQLTemp;
                   Parambyname('codnf').AsInteger:= iCodigoNfe;
                end
             else
                begin
                    SQLTemp := 'UPDATE NFE_NOTA ' +
                              'SET JUSTIFICATIVA_CANCEL_INUTIL = :JUST, ' + sCampoStatus + ' = ' + quotedstr( 'S' ) +
                              ' WHERE NR_NOTA = :CODNF';
                   sql.Text:= SQLTemp;
                   Parambyname('codnf').AsInteger := iCodigoNfe;
                   parambyname('just').AsString   := sJustificativa;
                end;
             open;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('Erro atualizando status da NFe');
     end;
   finally
     QConsulta.Close;
   end;
end;

procedure TDM.AtualizaStatusNfCe(const iCodigoNfe : integer; const sCampoStatus, sJustificativa : string);
var
 SQLTemp: String;
begin
   if IBTransaction.Active then
      IBTransaction.Commit;
   IBTransaction.StartTransaction;
   try
     try
       with QConsulta do
          begin
             close;
             sql.Clear;
             if trim(sJustificativa) = 'NULL' then
                begin
                   SQLTemp := 'UPDATE NFECE_NOTA ' +
                              'SET ' + trim(sCampoStatus) + '=' + quotedstr('S') +
                              ' WHERE NR_NOTA = :CODNF';
                   sql.Text:= SQLTemp;
                   Parambyname('codnf').AsInteger:= iCodigoNfe;
                end
             else
                begin
                    SQLTemp := 'UPDATE NFECE_NOTA ' +
                              'SET JUSTIFICATIVA_CANCEL_INUTIL = :JUST, ' + sCampoStatus + ' = ' + quotedstr( 'S' ) +
                              ' WHERE NR_NOTA = :CODNF';
                   sql.Text:= SQLTemp;
                   Parambyname('codnf').AsInteger := iCodigoNfe;
                   parambyname('just').AsString   := sJustificativa;
                end;
             open;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('Erro atualizando status da NFC-e');
     end;
   finally
     QConsulta.Close;
   end;
end;

{function TDM.RetornaStringTabela(CampoRetorno : string; tabela : string; Campochave : string; ValorChave : integer) : string;
begin
   if IBTransaction.Active then
      IBTransaction.Commit;
   IBTransaction.StartTransaction;
   with Consulta do
      begin
         close;
         sql.Clear;
         sql.Add('SELECT ' + CampoRetorno + ' FROM ' + TABELA +
                 ' WHERE ' + CampoChave + ' = :cod');
         Parambyname('cod').AsInteger := ValorChave;
         ExecQuery;
         result := fieldbyname(CampoRetorno).AsString;
      end;
   IBTransaction.Commit;
   Consulta.Close;
end; }

function TDM.RetornaStringTabela(CampoRetorno: string; tabela: string;
  Campochave: string; ValorChave: integer; const Server: Boolean = False ): string;
begin
  if not Server  then
     begin
          if IBTransaction.Active then
            IBTransaction.Commit;
          IBTransaction.StartTransaction;
          with QConsulta do
          begin
            close;
            sql.Clear;
            sql.Add('SELECT ' + CampoRetorno + ' FROM ' + tabela + ' WHERE ' +
              Campochave + ' = :cod');
            Parambyname('cod').AsInteger := ValorChave;
            open;
            result := fieldbyname(CampoRetorno).AsString;
          end;
          IBTransaction.Commit;
          QConsulta.close;
     end
  else
     begin
          if IBTRServer.Active then
            IBTRServer.Commit;
          IBTRServer.StartTransaction;
          with QConsultaServer do
          begin
            close;
            sql.Clear;
            sql.Add('SELECT ' + CampoRetorno + ' FROM ' + tabela + ' WHERE ' +
              Campochave + ' = :cod');
            Parambyname('cod').AsInteger := ValorChave;
            open;
            result := fieldbyname(CampoRetorno).AsString;
          end;
          IBTRServer.Commit;
          QConsultaServer.close;
     end;
end;


function TDM.BuscaEstoqueProduto(const iCodPro : integer; const iCodEmp : integer) : currency;
begin
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.QConsulta do
          begin
             close;
             sql.Clear;
             sql.add('SELECT SUM(ESTOQUE) ESTOQUE ' +
                     'FROM PRODUTOS   ' +
                     'WHERE CODIGO = :CODPRO AND COD_EMPRESA = :CODEMP');
             Parambyname('codpro').AsInteger:= iCodPro;
             Parambyname('codemp').AsInteger:= iCodEmp;
             open;
             result:= fieldbyname('estoque').AsCurrency;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('Erro ao buscar o estoque do produto');
     end;
   finally
     dm.QConsulta.Close;
   end;
end;

function TDM.RetornaIntegerTabela(CampoRetorno : string; tabela : string; Campochave : string; ValorChave : integer) : integer;
begin
   if IBTransaction.Active then
      IBTransaction.Commit;
      IBTransaction.StartTransaction;
      with Consulta do
      begin
         close;
         sql.Clear;
         sql.Add('SELECT ' + CampoRetorno + ' FROM ' + TABELA +
                 ' WHERE ' + CampoChave + ' = :cod');
         Parambyname('cod').AsInteger := ValorChave;
         ExecSQL;
         result:= fieldbyname(CampoRetorno).AsInteger;
      end;
   IBTransaction.Commit;
   Consulta.Close;
end;

Function TDM.LeIni(sArqIni : string; sSecao : string; sVariavel : string) : string;
var ArqIni  : tIniFile;
    sString : string;
begin
   ArqIni := tIniFile.Create( ExtractFilePath( Application.ExeName ) + '\' + sArqIni);
   Try
     result:= ArqIni.ReadString(sSecao, sVariavel, sString);
   Finally
     ArqIni.Free;
   end;
end;

procedure TDM.GravaIni(sArqIni : string; sSecao : string; sVariavel : string; sValor : string);
var ArqIni  : tIniFile;
begin
   ArqIni:= TIniFile.Create( ExtractFilePath( Application.ExeName ) + '\' + sArqini);
   try
     arqini.WriteString(sSecao, sVariavel, sValor);
   finally
     ArqIni.Free;
   end;
end;

function IsFireBirdRunning: boolean;
const
  PROCESS_TERMINATE = $0001;
var
  Co: BOOL;
  FS: THandle;
  FP: TProcessEntry32;
  S: string;
begin
  FS := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FP.dwSize := Sizeof(FP);
  Co := Process32First(FS, FP);
  while Integer(Co) <> 0 do
  begin
    S := S + FP.szExeFile + #13;
    Co := Process32Next(FS, FP);
  end;
  CloseHandle(FS);
  if pos('fbserver', S) > 0 then
    Result := true
  else
    Result := false;
end;

procedure TDM.SDS_Contas_PagarBeforeInsert(DataSet: TDataSet);
begin
if Not Libera_Insert then
Abort;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var
iniConf : TIniFile;
sCaminho, sIPServidor : String;
Arquivo: TIniFile{uses IniFiles};
i: Integer;
  iArq: TIniFile;
  nTentativas: word;
begin

   SQLC.Connected    := false;
   Coneccao.Connected    := FALSE;

   dm.EMSincronizacaoMani := False;

   FundoBalanca := ExtractFilePath( Application.ExeName ) + 'Skins\balanca.jpg';

//   try
//    Arquivo:= TIniFile.Create(ExtractFilePath(Application.ExeName)+'siace.ini');

{    with Coneccao.Params do begin
    Clear;
      Add('DriverID=FB');
      Add('Server=localhost');
      Add('Database='+ trim(LeINI('Siace.ini', 'DADOS', 'DATABASE')) );
      Add('User_Name=sysdba');
      Add('Password=masterkey');
    end;
    Coneccao.Connected := True;
                                   }
    with SQLC do begin
        Close;
    // create temporary connection definition
     with Params do begin
       Clear;
       Add('DriverName=Firebird');
       Add('SQLDialect=3');
       Add('Database=' +trim(LeINI('Siace.ini', 'DADOS', 'DATABASE')) );
       Add('User_Name=sysdba');
       Add('Password=masterkey');
     end;
      Connected := True;
    end;

    Coneccao.Params.Values['DATABASE'] := trim(LeINI('siace.ini', 'DADOS', 'DATABASE'));
    Coneccao.Connected    := true;

    SQLC.Params.Values['DATABASE'] := trim(LeINI('siace.ini', 'DADOS', 'DATABASE'));
    SQLC.Connected    := true;





    caminho_fotos_clientes := '\StartNet_Sistemas\img';

      for I := 0 to Pred(Self.ComponentCount) do
     begin
       if Self.Components[I] is TSimpleDataSet then
       begin
         (Self.Components[I] as TSimpleDataSet).Connection:= SQLC;
       end
       else
       if Self.Components[I] is TSQLQuery then
       begin
          (Self.Components[I] as TSQLQuery).SQLConnection:= SQLC;
       end;
     end;



 {   except
     ShowMessage('Não foi possivel conectar! Nenhum servidor disponível ou banco de dados não Localizado...');
     Exit;
     Abort;
     Application.Terminate;
    end;   }

{
iniConf := TiniFile.Create( ExtractFilePath ( Application.ExeName) + 'Siace.ini');
sIPServidor := iniConf.ReadString('INF_BD','IP_Servidor','');
sCaminho := iniConf.ReadString('INF_BD','Caminho','');

// Depois de Ler as Chaves, vou configurar o DataBase
SQLC.Params.Clear;
//SQLC.Params.LoadFromFile('C:\siace\siace.ini');
SQLC.Params.LoadFromFile('siace.ini');
SQLC.LoginPrompt := false; // Para não pedir a senha do banco!
sqlc.Connected := true; // Abrindo Conexão                    }
{  try
    nTentativas := 1;
    iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'siace.ini');

    Coneccao.Params.Values['DriverID']  := 'FB';
    Coneccao.Params.Values['Protocol']  := iArq.ReadString('DADOS', 'PROTOCOLO', '');
    Coneccao.Params.Values['Port']      := iArq.ReadString('DADOS', 'PORTA', '');
    Coneccao.Params.Values['Server']    :=   iArq.ReadString('DADOS', 'IP', '');
    Coneccao.Params.Values['Database']  := iArq.ReadString('DADOS', 'DATABASE', '');
    FBDriver.VendorLib := ExtractFilePath(Application.ExeName) + 'fbclient.dll';

 while nTentativas <= 2 do
    begin
      if not IsFireBirdRunning then
      begin
        nTentativas := nTentativas + 1;
        if frmConexaoBD = nil then
        begin
          frmConexaoBD := TfrmConexaoBD.Create(Application);
          frmConexaoBD.Show;
        end;
        Application.ProcessMessages;
        sleep(3000);
      end
      else
        nTentativas := 3;
    end;

    if nTentativas = 3 then
    begin
      if frmConexaoBD <> nil then
        frmConexaoBD.Close;
    end;

    try
      Coneccao.Connected := true;
    Except
      ShowMessage('Não foi possivel conectar na base de dados!' + sLineBreak +
        'Verifique e pasta C:\StartNet_Sistemas\STARTNET.FDB' +
        sLineBreak + ' Se não encontrar esse arquivo restaure um backup. ' + sLineBreak + 'Ou contate o suporte do sistema !');
      vFechaPrograma := true;
      Application.Terminate;
    end;

     SQLC.Params.Values['DATABASE'] := trim(LeINI('siace.ini', 'DBX', 'DATABASE'));
     SQLC.Connected    := true;

  Finally
    iArq.Free;
  end; }
end;

procedure TDM.Sds_cidades1ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := HandleReconcileError(Dataset,UpdateKind,E);
end;

procedure TDM.Sds_cidades1AfterPost(DataSet: TDataSet);
begin
 Sds_cidades.ApplyUpdates(0);
end;

procedure TDM.SDS_NotasFiscaisItens1AfterPost(DataSet: TDataSet);
begin
{SDS_NotasFiscaisItens.First;
formnotasfiscais.A := 0;
formnotasfiscais.A := formnotasfiscais.A + SDS_NotasFiscaisItensTOTAL_ITEM.AsFloat;
SDS_NotasFiscaisItens.Next;
formnotasfiscais.Edit60.Text := FloatToStr(formnotasfiscais.A);
While not SDS_NotasFiscaisItens.Eof do
begin
formnotasfiscais.A:= formnotasfiscais.A + SDS_NotasFiscaisItensTOTAL_item.AsFloat;
SDS_NotasFiscaisItens.Next;
formnotasfiscais.Edit60.Text:= FloatToStr(formnotasfiscais.A);
end;
SDS_NotasFiscaisItens.last; }
end;

procedure TDM.sds_pedidos_itensAfterPost(DataSet: TDataSet);
begin
{DM.Sds_pedidos_itens.First;
formvendas.A:= 0;
formvendas.c:= 0;
formvendas.A:= formvendas.A + DM.Sds_pedidos_itensPRECO_TOTAL.AsFloat;
formvendas.C:= formvendas.C + DM.sds_pedidos_itensQUANTIDADE.AsFloat;
DM.Sds_pedidos_itens.Next;
formvendas.Edit60.Text:= FloatToStr(formvendas.A);
formvendas.Edit62.Text:= FloatToStr(formvendas.A);
formvendas.qtde.Text:= FloatToStr(formvendas.c);
While not DM.Sds_pedidos_itens.Eof do
begin
formvendas.A:= formvendas.A + DM.Sds_pedidos_itensPRECO_TOTAL.AsFloat;
formvendas.c:= formvendas.c + DM.sds_pedidos_itensQUANTIDADE.AsFloat;
DM.Sds_pedidos_itens.Next;
formvendas.Edit60.Text:= FloatToStr(formvendas.A);
formvendas.Edit62.Text:= FloatToStr(formvendas.A - formvendas.E_desconto.Value);
formvendas.qtde.Text:= FloatToStr(formvendas.c);
end;
DM.Sds_pedidos_itens.last;   }
end;

procedure TDM.IBDatabaseBeforeConnect(Sender: TObject);
VAR
Arquivo: TIniFile{uses IniFiles};
begin
Try
   {Arquivo:= TIniFile.Create(ExtractFilePath(Application.ExeName)+'siace.ini');
     with DM.IBDatabase do
     begin
       Params.Values['DATABASE'] := Arquivo.ReadString('DADOS','DATABASE','');
      // Params.Values['USERNAME'] := Arquivo.ReadString('DADOS','USERNAME','');
      // Params.Values['PASSWORD'] := Arquivo.ReadString('DADOS','PASSWORD','');
       Arquivo.Free
     end; }
  Except
   // ShowMessage('Não foi possivel conectar! Nenhum servidor disponível...');
  End;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
SQLC.Connected := False;
Coneccao.Connected := False;
end;

procedure TDM.MensagemErroECF(const sMensagem : string; bMostrar : boolean);
begin
   if bMostrar then
      showmessage(sMensagem);
end;

procedure TDM.ACBrNFe1StatusChange(Sender: TObject);
begin
  case ACBrNFe1.Status of
     stIdle : begin
                 if (frmStatus <> nil) then
                    frmStatus.Hide;
              end;

     stNFeStatusServico : begin
                             if (frmStatus = nil) then
                                 frmStatus:= TfrmStatus.Create(Application);
                             frmStatus.lblStatus.Caption:= 'Verificando Status do servico...';
                             frmStatus.Show;
                             frmStatus.BringToFront;
                          end;

     stNFeRecepcao : begin
                        if (frmStatus = nil) then
                            frmStatus := TfrmStatus.Create(Application);
                        frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
                        frmStatus.Show;
                        frmStatus.BringToFront;
                     //   DM.AtualizaStatusNfe(iCodigoNfe, 'STATUS_TRANSMITIDA', 'NULL') ;
                     end;

     stNfeRetRecepcao : begin
                           if (frmStatus = nil) then
                               frmStatus := TfrmStatus.Create(Application);
                           frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
                           frmStatus.Show;
                           frmStatus.BringToFront;
                      //     DM.AtualizaStatusNfe(iCodigoNfe, 'STATUS_RETORNO', 'NULL') ;
                        end;

     stNfeConsulta : begin
                        if (frmStatus = nil) then
                            frmStatus := TfrmStatus.Create(Application);
                        frmStatus.lblStatus.Caption := 'Consultando NFe...';
                        frmStatus.Show;
                        frmStatus.BringToFront;
                     end;


     stNfeCancelamento : begin
                            if (frmStatus = nil) then
                                frmStatus := TfrmStatus.Create(Application);
                            frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
                            frmStatus.Show;
                            frmStatus.BringToFront;
                          //  DM.AtualizaStatusNfe(iCodigoNfe, 'STATUS_CANCELADO', sJustifNFe) ;
                         end;

     stNfeInutilizacao : begin
                            if (frmStatus = nil) then
                                frmStatus := TfrmStatus.Create(Application);
                            frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
                            frmStatus.Show;
                            frmStatus.BringToFront;
                           // DM.AtualizaStatusNfe(iCodigoNfe, 'STATUS_INUTILIZADO', sJustifNFe) ;
                         end;

     stNFeRecibo : begin
                      if (frmStatus = nil) then
                          frmStatus := TfrmStatus.Create(Application);
                      frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
                      frmStatus.Show;
                      frmStatus.BringToFront;
                   end;

     stNFeCadastro : begin
                        if (frmStatus = nil) then
                            frmStatus := TfrmStatus.Create(Application);
                        frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
                        frmStatus.Show;
                        frmStatus.BringToFront;
                     end;

    {  stNFe : begin
                       if (frmStatus = nil) then
                           frmStatus := TfrmStatus.Create(Application);
                       frmStatus.lblStatus.Caption := 'Enviando Carta de Correção ...';
                       frmStatus.Show;
                       frmStatus.BringToFront;
                    end; }

   {  stNFeConsultaDPEC : begin
                            if (frmStatus = nil) then
                                frmStatus := TfrmStatus.Create(Application);
                            frmStatus.lblStatus.Caption := 'Consultando DPEC...';
                            frmStatus.Show;
                            frmStatus.BringToFront;
                         end; }

     stNFeEvento : begin
                            if (frmStatus = nil) then
                                frmStatus := TfrmStatus.Create(Application);
                            frmStatus.lblStatus.Caption := 'Enviando Evento / Cancelamento de NFe...';
                            frmStatus.Show;
                            frmStatus.BringToFront;
                         //   DM.AtualizaStatusNfe(iCodigoNfe, 'STATUS_CANCELADO', sJustifNFe) ;
                         end;

     stNFeEmail : begin
                     if (frmStatus = nil) then
                         frmStatus := TfrmStatus.Create(Application);
                     frmStatus.lblStatus.Caption := 'Enviando Email...';
                     frmStatus.Show;
                     frmStatus.BringToFront;
                 //    AtualizaStatusNfe(iCodigoNfe, 'STATUS_EMAIL', 'NULL') ;
                  end;

      stNFeCCe : begin
                     if (frmStatus = nil) then
                         frmStatus := TfrmStatus.Create(Application);
                     frmStatus.lblStatus.Caption := 'Enviando Carta de Correção...';
                     frmStatus.Show;
                     frmStatus.BringToFront;
                  end;

  end;

  Application.ProcessMessages;

end;

//------ Closes the IB Array ------ Form's OnClose
{Procedure TDM.CloseIBArray(IBSender: array of TIBCustomDataSet);
var
 x, y, pointer, lastpointer:integer;
begin
 for x:=0 to High(IBSender) do
  begin
   for y := 0 to High(IBArray) do
    if IBArray[y] = IBSender[x] then
     IBArray[y]:= nil;

   if IBSender[x].Active then
    begin
     IBSender[x].Tag := IBSender[x].Tag - 1;
     IBSender[x].DisableControls;
     if IBSender[x].Tag = 0 then
      begin
       if IBSender[x].InheritsFrom(TFDQuery) then
        begin
         TIBDataset(IBSender[x]).close;
         if TIBDataset(IBSender[x]).Prepared then
          TIBDataset(IBSender[x]).UnPrepare;
        end
       else if IBSender[x].InheritsFrom(TFDQuery) then
        begin
         TFDQuery(IBSender[x]).close;
         if TFDQuery(IBSender[x]).Prepared then
          TFDQuery(IBSender[x]).UnPrepare;
        end;
      end;
     IBSender[x].EnableControls;
    end;
  end;

 pointer:=-1;
 lastpointer:=-1;
 for x:=0 to High(IBArray) do
  begin
   if TIBCustomDataset(IBArray[x]) <> nil then
    begin
     if pointer <> -1 then
      begin
       IBArray[pointer]:=IBArray[x];
       IBArray[x] := nil;
       lastpointer:=pointer;
       pointer:=pointer + 1;
      end
     else
      lastpointer:=x;
    end
   else
    begin
     if pointer = -1 then
      pointer:= x
    end;
  end;
 setlength(IBArray, LastPointer + 1);
end;    }

procedure TDM.Dts_vendasDataChange(Sender: TObject; Field: TField);
begin
    Sds_Vendas_itens.Close;
    Sds_Vendas_itens.Params.ParamByName('venda').AsInteger := (DM.sds_vendasCODIGO.AsInteger);
    Sds_Vendas_itens.Open;


    VENDA:= IntToStr(DM.sds_vendasCODIGO.AsInteger);
end;

function GeraNFCe1( nota: INteger;  const EnvioOFF: Boolean = false ): Boolean;
var
  NumNF, SerieNF: Integer;
  TotICMS, TotBCICMS, TotDesconto, TotProd: Double;
  DescontoVenda, DescRout: Double;
  AuxB: Boolean;
  TrocoDado: Boolean;
  TemDinheiro: Boolean;
  QuantFormas: Integer;
  Routtroco : Double;
  TrocoSair: Double;
  DescontodaVenda: Double;
  NomeCli, CPFCli, pgto, cfop: String;
//  I: TNFe;
  ITot, iCodClientePadrao, iCodCliente: Integer;
  GerouNumero: Boolean;
begin
      try
  //        GravaFechamentoVenda( CodVenda, 0, 0
           iCodClientePadrao := DM.SDS_CONFIGURACOESCLIENTE_PADRAO.AsInteger;

           GerouNumero := False;
           DescontodaVenda := 0;
           TrocoSair := 0;
           Routtroco := 0;
           TemDinheiro := False;
           QuantFormas := 0;
           TotICMS := 0;
           TotBCICMS := 0;
           DescontoVenda := 0;
           DescRout := 0;
           TotDesconto := 0;
           TotProd := 0;
           dm.ConfiguraNFCe;
           DM.ACBrNFe1.NotasFiscais.Clear;
           DM.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
           DM.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;

            if dm.IBTransaction.Active then
               DM.IBTransaction.Commit;
            DM.IBTransaction.StartTransaction;


           with DM.ACBrNFe1.NotasFiscais.Add.NFe do
           begin
            with dm.QConsulta do
               begin
                  Close;
                  SQL.Text := 'Select * from nfece_nota where nr_nota=:n_nota and cd_empresa=:emp';
                       ParamByName( 'n_nota' ).AsInteger := Nota;
                       ParamByName( 'emp' ).AsInteger := iEmp;
                  Open;
                  NomeCli := FieldByName( 'NOME_CLIENTE_FOR' ).AsString;
                  CPFCli := FieldByName( 'CPF_CNPJ_CLIENTE_FORN' ).AsString;
                  DescontodaVenda := FieldByName( 'VL_DESCONTOS' ).AsFloat;
                  iCodCliente := FieldByName( 'COD_CLIENTE' ).AsInteger;
                 { if Trim( FieldByName( 'NFCE_NUM' ).AsString ) = '' then
                     begin
                        dm.NovoNumeroNFCe(  NumNF , SerieNF);
                        GerouNumero := True;
                        Close;
                        SQL.Text := 'update VENDAS set  NFCE_NUM=:NFCE_NUM,' +
                                    ' OFFLINE=0, NFCE_SERIE=:NFCE_SERIE where cod_ven=:venda and cod_emp=:emp';
                        ParamByName( 'venda' ).AsInteger := CodVenda;
                        ParamByName( 'emp' ).AsInteger := iEmp;
                        ParamByName( 'NFCE_NUM' ).AsInteger := NumNF;
                        ParamByName( 'NFCE_SERIE' ).AsInteger := SerieNF;
                        ExecSQL;
                     end
                  else  }
                     begin
                        NumNF         := FieldByName( 'NR_NOTA' ).AsInteger;
                        SerieNF       := FieldByName( 'SERIE_NF' ).AsInteger;
                        cfop          := FieldByName( 'CFOP_DESC' ).AsString;
                        if FieldByName( 'TP' ).AsString ='A' then
                         Ide.indPag   := ipVista
                        else
                        if FieldByName( 'TP' ).AsString  ='C' then
                        Ide.indPag    := ipPrazo
                        else
                        Ide.indPag    := ipOutras;
                      end;
                  Close;

               end;
            dm.IBTransaction.Commit;

             Ide.cNF := NumNF;
             Ide.serie :=  SerieNF;
             Ide.natOp     := cfop;
             Ide.modelo    := 65;
             Ide.nNF       := NumNF;
             Ide.dEmi      := now;
             Ide.dSaiEnt   := now;
             Ide.hSaiEnt   := now;
             Ide.tpNF      := tnSaida;
             Ide.tpEmis    := teNormal;
             Ide.tpAmb     := DM.ACBrNFe1.Configuracoes.WebServices.Ambiente;

             Ide.finNFe    := fnNormal;
             Ide.tpImp     := tiNFCe;
             Ide.indFinal  := cfConsumidorFinal;
             Ide.indPres   := pcPresencial;


                 if dm.IBTransaction.Active then
                   dm.IBTransaction.Commit;
                 dm.IBTransaction.StartTransaction;

                 with dm.QConsulta do
                    begin
                       Close;
                       SQL.Text := 'select * from empresa where codigo=:cod_emp';
                       ParamByName( 'cod_emp' ).AsInteger := iEmp;
                       Open;
                         Ide.cMunFG := FieldByName( 'COD_CID_IBGE' ).AsInteger;
                         Ide.cUF       := UFtoCUF(FieldByName( 'UF' ).AsString);
                        Emit.CNPJCPF           := RetiraCaracter( FieldByName( 'CNPJ' ).AsString );
                        Emit.IE                := RetiraCaracter( FieldByName( 'IE' ).AsString );
                        Emit.xNome             := FieldByName( 'RAZAO_SOCIAL' ).AsString;
                        Emit.xFant             := FieldByName( 'NOME_FANTASIA' ).AsString;
                        Emit.EnderEmit.fone    := RetiraCaracter( FieldByName( 'TELEFONE' ).AsString );
                        Emit.EnderEmit.CEP     := StrToInt(RetiraCaracter( FieldByName( 'CEP' ).AsString ));
                        Emit.EnderEmit.xLgr    := FieldByName( 'ENDERECO' ).AsString;
                        Emit.EnderEmit.nro     := FieldByName( 'NUMERO' ).AsString;
                        Emit.EnderEmit.xCpl    := FieldByName( 'COMPLEMENTO' ).AsString;
                        Emit.EnderEmit.xBairro := FieldByName( 'BAIRRO' ).AsString;
                        Emit.EnderEmit.cMun    := FieldByName( 'COD_CID_IBGE' ).AsInteger;
                        Emit.EnderEmit.xMun    := FieldByName( 'CIDADE' ).AsString;
                        Emit.EnderEmit.UF      := FieldByName( 'UF' ).AsString;
                        Emit.EnderEmit.cPais   := 1058;
                        Emit.EnderEmit.xPais   := 'BRASIL';

                        Emit.IEST              := '';
                  //      Emitente.IM                := '2648800'; // Preencher no caso de existir serviços na nota
                  //      Emitente.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido
                                                      // a inclusão de serviços na NFe
                        if FieldByName( 'REGIME' ).AsString = 'S' then
                           Emit.CRT := crtSimplesNacional
                        else
                        Emit.CRT            := crtRegimeNormal;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
                        close;

                    end;
                 dm.IBTransaction.Commit;



                 with dm.QConsulta do
                    begin
                       Close;
                       SQL.Text := 'select C.*, E.UF AS UF_EMP from CLIENTES C' +
                                   ' inner join EMPRESA E' +
                                   ' on( E.CODIGO=:EMP )' +
                                   ' where C.CODIGO=:CLI';
                       ParamByName( 'CLI' ).AsInteger := NumNF;
                       ParamByName( 'EMP' ).AsInteger := iEmp;
                       Open;

                       if ( iCodClientePadrao <> iCodCliente ) and ( Trim( FieldByName( 'TIPO' ).AsString) <> 'J')
                       and  ( Trim( FieldByName( 'UF' ).AsString ) = ( Trim( FieldByName( 'UF_EMP' ).AsString )) )  then
                          begin
                                Dest.indIEDest         := inNaoContribuinte;
                                Dest.CNPJCPF           := RetiraCaracter( FieldByName( 'CPF_CNPJ' ).AsString );
                                Dest.ISUF              := '';
                                Dest.xNome             := FieldByName( 'NOME_RS' ).AsString ;
                                Dest.EnderDest.Fone    := FieldByName( 'TELEFONE' ).AsString ;
                                Dest.EnderDest.CEP     := StrToInt( RemoveChar(FieldByName( 'CEP' ).AsString ) );
                                Dest.EnderDest.xLgr    := FieldByName( 'ENDERECO' ).AsString ;
                                Dest.EnderDest.nro     := FieldByName( 'NUMERO' ).AsString ;
                                Dest.EnderDest.xCpl    := '';
                                Dest.EnderDest.xBairro := FieldByName( 'BAIRRO' ).AsString ;
                                Dest.EnderDest.cMun    := FieldByName( 'COD_IBGE' ).AsInteger ;
                                Dest.EnderDest.xMun    := FieldByName( 'CIDADE' ).AsString ;
                                Dest.EnderDest.UF      := FieldByName( 'UF' ).AsString ;
                                Dest.EnderDest.cPais   := 1058;
                                Dest.EnderDest.xPais   := 'BRASIL';
                          end
                        else
                           if ( Trim( NomeCli ) <> '' )
                            and  (  Trim( CPFCli ) <> ''  ) and
                            ( Trim( CPFCli ) <> '000.000.000-00' ) and
                            ( Trim( CPFCli ) <> '' ) then
                              begin
                                 if ValidaCPFCNPJ( Trim( CPFCli ) ) then
                                    begin
                                       Dest.indIEDest         := inNaoContribuinte;
                                       Dest.xNome := NomeCli;
                                       Dest.CNPJCPF := CPFCli;
                                    end;
                              end;
                       Close;
                    end;


                 if not EnvioOFF then
                     DescontoVenda := DescontodaVenda //FrmFechaVenda.EdtValorDesconto.Value
                 else
                 DescontoVenda := DescontodaVenda;

                 dm.IBTransaction.Commit;

                 if dm.IBTransaction.Active then
                   dm.IBTransaction.Commit;
                 dm.IBTransaction.StartTransaction;

                 with dm.QConsulta do
                    begin
                       Close;
                        SQL.Text := 'select * from nfece_itens  where nr_nota =:venda and cod_empresa =:emp order by ITEN';
                      { SQL.Text := 'select I.*, P.*, U.descricao UNIDADE, G.aliquota_grp from itens_venda I' +
                                   ' inner join produto P' +
                                   ' on ( p.cod_pro = I.cod_pro )' +
                                   ' inner join unidade_medida U' +
                                   ' on( U.codigo = P.codigo_unidade_saida )' +
                                   ' inner join grupo_icms G' +
                                   ' on( G.cod_grp = P.icms_cf_est )' +
                                   ' where I.cod_ven =:venda and I.CANCELADO=0 and I.cod_emp=:emp order by i.ordem';}
                       ParamByName( 'venda' ).AsInteger := NumNF;
                       ParamByName( 'emp' ).AsInteger := iEmp;
                       Open;
                       Last;
                       First;
                       if DescontoVenda > 0 then
                           DescRout := DescontoVenda / RecordCount
                        else
                           DescRout := 0;
                       while not Eof do
                            begin
                               with Det.Add do
                                   begin
                                      Prod.nItem := FieldByName( 'ITEN' ).AsInteger;
                                      prod.cProd := FieldByName( 'CODIGO_PROD' ).AsString;
                                      if Length(FieldByName( 'COD_PRODUTO' ).AsString) > 6  then
                                          Prod.cEAN     :=  FieldByName( 'COD_PRODUTO' ).AsString;
                                       Prod.xProd    := FieldByName( 'DESCRICAO_PRODUTO' ).AsString;
                                       Prod.NCM      := IfThen(Trim( FieldByName( 'COD_NCM' ).AsString) = '',
                                       '99999999', FieldByName( 'COD_NCM' ).AsString );
                                       Prod.EXTIPI   := '';
                                       Prod.CFOP     := FieldByName( 'CFOP' ).AsString;
                                       Prod.uCom     := FieldByName( 'DESC_UNIDADE' ).AsString;
                                       Prod.qCom     := FieldByName( 'QT_PRODUTO' ).AsFloat;
                                       Prod.vUnCom   := FieldByName( 'VL_UNITARIO' ).AsFloat;
                                       Prod.vDesc   :=  FieldByName( 'VL_DESCONTO' ).AsFloat; // + DescRout;
                                      { Prod.vProd    :=  ( Prod.qCom *  Prod.vUnCom  ) - Prod.vDesc ;
                                       TotDesconto := TotDesconto +   Prod.vDesc ; }
                                       Prod.vProd  := FieldByName( 'VL_TOTAL' ).AsFloat;

                                        with DM.QBuscaItens do
                                          begin
                                             close;
                                             Parambyname('cod_ven').AsInteger:= FieldByName( 'CD_ATUALIZACAO' ).AsInteger;
                                             Parambyname('codpro').AsInteger := strtoint(FieldByName( 'CODIGO_PROD' ).AsString);
                                             open;
                                             Last;
                                          end;

                                       if Length(FieldByName( 'COD_PRODUTO' ).AsString) > 6  then
                                          Prod.cEANTrib  := FieldByName( 'COD_PRODUTO' ).AsString;

                                       if DM.QBuscaItensML_QUANT_BEB.asfloat >= 0.001 then
                                       begin
                                       Prod.uTrib     := DM.QBuscaItensUND_TRIB.text;
                                       Prod.qTrib     := FieldByName( 'QT_PRODUTO' ).ASFLOAT * DM.QBuscaItensQTD_CAIXA.ASINTEGER * DM.QBuscaItensML_QUANT_BEB.ASFLOAT;
                                       Prod.vUnTrib   := FieldByName( 'VL_TOTAL' ).ASFLOAT / Prod.qTrib;
                                       end else
                                       if (DM.QBuscaItensML_QUANT_BEB.IsNull) or (DM.QBuscaItensML_QUANT_BEB.asfloat = 0)  then
                                       begin
                                       Prod.uTrib     := FieldByName( 'DESC_UNIDADE' ).AsString;
                                       Prod.qTrib     := StrToFloatDef(FieldByName( 'QT_PRODUTO' ).Text,0.00);
                                       Prod.vUnTrib   := StrToFloatDef(FieldByName( 'VL_UNITARIO' ).Text,0.0000000000);
                                       end;

                                       TotProd := TotProd + Prod.vProd ;

                                       Prod.vOutro    := 0;
                                       Prod.vFrete    := 0;
                                       Prod.vSeg      := 0;
                                       with Imposto do
                                        begin
                                          // lei da transparencia nos impostos
                                          vTotTrib := ( Prod.vProd * DM.QBuscaItensALIC_NAC.AsFloat) /100;//ALIQ_IBPT_NAC
                                          if not ( Emit.CRT = crtSimplesNacional ) then
                                          begin
                                                with ICMS do
                                                 begin
                                                   CST          := StrToCSTICMS(AuxB, Copy( FieldByName( 'CST' ).AsString, 2, 2 ) );//cst00;
                                                   ICMS.orig    := StrToOrig( AuxB, Copy( FieldByName( 'CST' ).AsString, 1, 1 ));
                                                   ICMS.modBC   := dbiValorOperacao;
                                                   ICMS.vBC     := Prod.vProd;
                                                   ICMS.pICMS   := FieldByName( 'ALIQ_ICM' ).AsFloat;
                                                   ICMS.vICMS   := ( ICMS.vBC * ICMS.pICMS ) / 100;
                                                   ICMS.modBCST := dbisMargemValorAgregado;
                                                   ICMS.pMVAST  := 0;
                                                   ICMS.pRedBCST:= 0;
                                                   ICMS.vBCST   := 0;
                                                   ICMS.pICMSST := 0;
                                                   ICMS.vICMSST := 0;
                                                   ICMS.pRedBC  := 0;
                                                   TotICMS :=   TotICMS + ICMS.vICMS;
                                                   TotBCICMS := TotBCICMS +  ICMS.vBC;
                                                 end;
                                          end
                                          else
                                          begin
                                                with ICMS do
                                                 begin
                                                    CSOSN := StrToCSOSNICMS( AuxB, FieldByName('CST').AsString);
                                                    orig :=  StrToOrig(AuxB, FieldByName('CST').AsString );
                                                 end;
                                          end;
                                        end;

                                   end;

                               Next;
                            end;
                       close;
                    end;
                 dm.IBTransaction.Commit;
              if not ( Emit.CRT = crtSimplesNacional ) then
                 begin
                  Total.ICMSTot.vBC     := TotBCICMS;
                  Total.ICMSTot.vICMS   := TotICMS;
                 end
                 else
                begin
                  Total.ICMSTot.vBC     := 0;
                  Total.ICMSTot.vICMS   := 0;

                end;
              Total.ICMSTot.vTotTrib := 0;
              for ITot := 0 to Det.Count -1 do
                  begin
                     Total.ICMSTot.vTotTrib := Total.ICMSTot.vTotTrib + Det.Items[ITot].Imposto.vTotTrib;
                  end;
              Total.ICMSTot.vBCST   := 0;
              Total.ICMSTot.vST     := 0;
              Total.ICMSTot.vProd   := TotProd;
              Total.ICMSTot.vFrete  := 0;
              Total.ICMSTot.vSeg    := 0;
              Total.ICMSTot.vDesc   :=  TotDesconto;
              Total.ICMSTot.vII     := 0;
              Total.ICMSTot.vIPI    := 0;
              Total.ICMSTot.vPIS    := 0;
              Total.ICMSTot.vCOFINS := 0;
              Total.ICMSTot.vOutro  := 0;
              Total.ICMSTot.vNF     := TotProd;

              Total.ISSQNtot.vServ   := 0;
              Total.ISSQNTot.vBC     := 0;
              Total.ISSQNTot.vISS    := 0;
              Total.ISSQNTot.vPIS    := 0;
              Total.ISSQNTot.vCOFINS := 0;

              Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE
              InfAdic.infCpl     :=  '';
              InfAdic.infAdFisco :=  '';
            {  if Not EnvioOFF then
              begin
                      FrmVendasCaixa.PagamentosEfetuados.First;
                      TrocoDado := False;
                   FrmVendasCaixa.PagamentosEfetuados.First;
                   while not FrmVendasCaixa.PagamentosEfetuados.Eof do
                      begin
                         if FrmVendasCaixa.PagamentosEfetuadosVALOR.AsCurrency > 0 then
                            begin
                               if ( Pos( 'DINHEIRO', FrmVendasCaixa.PagamentosEfetuadosDESCRICAO.AsString ) > 0 )
                               and ( FrmVendasCaixa.PagamentosEfetuadosVALOR.AsCurrency > FrmFechaVenda.EdtTroco.Value ) then
                                  TemDinheiro := True;
                               Inc( QuantFormas );
                            end;
                         FrmVendasCaixa.PagamentosEfetuados.Next;
                      end;
                   if ( not TemDinheiro ) and (FrmFechaVenda.EdtTroco.Value > 0) then
                      begin
                         Routtroco :=  FrmFechaVenda.EdtTroco.Value/ QuantFormas;
                      end;
                   FrmVendasCaixa.PagamentosEfetuados.First;
                   while not FrmVendasCaixa.PagamentosEfetuados.Eof do
                      begin
                         if FrmVendasCaixa.PagamentosEfetuadosVALOR.AsCurrency > 0 then
                            begin
                               with pag.Add do //PAGAMENTOS apenas para NFC-e
                                   begin
                                       if Pos( 'PRAZO', FrmVendasCaixa.PagamentosEfetuadosDESCRICAO.AsString ) > 0 then
                                          tPag := fpCreditoLoja
                                       else
                                       if Pos( 'CARTAO', FrmVendasCaixa.PagamentosEfetuadosDESCRICAO.AsString ) > 0 then
                                          tPag := fpCartaoCredito
                                       else
                                       if Pos( 'CARTÃO', FrmVendasCaixa.PagamentosEfetuadosDESCRICAO.AsString ) > 0 then
                                          tPag := fpCartaoCredito
                                       else
                                       if Pos( 'DINHEIRO', FrmVendasCaixa.PagamentosEfetuadosDESCRICAO.AsString ) > 0 then
                                          tPag := fpDinheiro
                                        else
                                           tPag := fpOutro;
                                       if TemDinheiro and ( tPag = fpDinheiro ) and ( not TrocoDado )then
                                          begin
                                            vPag := FrmVendasCaixa.PagamentosEfetuadosVALOR.AsExtended -
                                            FrmFechaVenda.EdtTroco.Value;
                                            TrocoDado := True;
                                          end
                                        else
                                       if not TemDinheiro then
                                          begin
                                            vPag := FrmVendasCaixa.PagamentosEfetuadosVALOR.AsExtended -
                                            Routtroco;
                                          end
                                       else
                                           vPag := FrmVendasCaixa.PagamentosEfetuadosVALOR.AsExtended;
                                   end;
                            end;
                         FrmVendasCaixa.PagamentosEfetuados.Next;
                      end;
              end
                else
                   begin
                      if DM.TRFormasNFCe.InTransaction then
                         DM.TRFormasNFCe.Commit;
                      DM.TRFormasNFCe.StartTransaction;
                      dm.QFormasNFCe.Close;
                      dm.QFormasNFCe.ParamByName( 'cod_venda' ).AsInteger := CodVenda;
                      dm.QFormasNFCe.Open;
                      dm.QFormasNFCe.First;
                      TrocoDado := False;
                   dm.QFormasNFCe.First;
                   while not dm.QFormasNFCe.Eof do
                      begin
                         if dm.QFormasNFCeVALOR.AsCurrency > 0 then
                            begin
                               if ( Pos( 'DINHEIRO', dm.QFormasNFCeDESCRICAO.AsString ) > 0 )
                               and ( dm.QFormasNFCeVALOR.AsCurrency > dm.QFormasNFCeTroco.Value ) then
                                  TemDinheiro := True;
                               Inc( QuantFormas );
                            end;
                         dm.QFormasNFCe.Next;
                      end;
                   if ( not TemDinheiro ) and (dm.QFormasNFCeTroco.Value > 0) then
                      begin
                         Routtroco :=  dm.QFormasNFCeTroco.Value/ QuantFormas;
                      end;
                   dm.QFormasNFCe.First;
                   TrocoSair := dm.QFormasNFCeTROCO.AsExtended;
                   while not dm.QFormasNFCe.Eof do
                      begin
                         if dm.QFormasNFCeVALOR.AsCurrency > 0 then
                            begin
                               with pag.Add do //PAGAMENTOS apenas para NFC-e
                                           begin
                                               if Pos( 'PRAZO', dm.QFormasNFCeDESCRICAO.AsString ) > 0 then
                                                  tPag := fpCreditoLoja
                                               else
                                               if Pos( 'CARTAO', dm.QFormasNFCeDESCRICAO.AsString ) > 0 then
                                                  tPag := fpCartaoCredito
                                               else
                                               if Pos( 'CARTÃO', dm.QFormasNFCeDESCRICAO.AsString ) > 0 then
                                                  tPag := fpCartaoCredito
                                               else
                                               if Pos( 'DINHEIRO', dm.QFormasNFCeDESCRICAO.AsString ) > 0 then
                                                  tPag := fpDinheiro
                                                else
                                                   tPag := fpOutro;
                                               if TemDinheiro and ( tPag = fpDinheiro ) and ( not TrocoDado )then
                                                  begin
                                                    vPag := dm.QFormasNFCeVALOR.AsExtended -
                                                    dm.QFormasNFCeTroco.Value;
                                                    TrocoDado := True;
                                                  end
                                                else
                                               if not TemDinheiro then
                                                  begin
                                                    vPag := dm.QFormasNFCeVALOR.AsExtended -
                                                    Routtroco;
                                                  end
                                               else
                                                   vPag := dm.QFormasNFCeVALOR.AsExtended;
                                           end;

                            end;
                         dm.QFormasNFCe.Next;
                      end;
                      dm.QFormasNFCe.Close;
                      DM.TRFormasNFCe.Commit;
                   end; }
              InfAdic.infCpl     :=  '';
              InfAdic.infAdFisco :=  '';

           end;
           //DM.ACBrNFe1.NotasFiscais.GerarNFe;
           DM.ACBrNFe1.NotasFiscais.Assinar;
           DM.ACBrNFe1.NotasFiscais.Validar;
           if not( DM.ACBrNFe1.WebServices.Envia( '1', True ) ) then
              begin
               if not EnvioOFF then
                begin
                if  KDialog( 'Nota Rejeitada, Deseja Imprimir em modo Offline?' + #13 +
                 IntToStr(DM.ACBrNFe1.WebServices.Retorno.cMsg) + ': ' +
                 DM.ACBrNFe1.WebServices.Retorno.xMsg , 'NFCe', 'PERGUNTA' ) then
                     begin
                         DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis := teOffLine;
                         DM.ACBrNFe1.NotasFiscais.GerarNFe;
                         DM.ACBrNFe1.NotasFiscais.Assinar;
                         DM.ACBrNFe1.NotasFiscais.Validar;
                          if dm.IBTransaction.Active then
                             DM.IBTransaction.Commit;
                          DM.IBTransaction.StartTransaction;

                          with dm.QConsulta do
                             begin
                                Close;
                                     SQL.Text := 'update NFECE_NOTA set  CHAVE_ACESSO_NFE=:CHAVE,' +
                                                  'NR_PROTOCOLO_NFE=:PROT, DEPEC=:OFFLINE where NR_NOTA=:venda and cd_empRESA=:emp';
                                      ParamByName( 'venda' ).AsInteger := nota;
                                      ParamByName( 'emp' ).AsInteger := iEmp;
                                      ParamByName( 'CHAVE' ).AsString := DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
                                      ParamByName( 'PROT' ).AsString := DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
                                      ParamByName( 'OFFLINE' ).AsString := 'S';
        //                              ParamByName( 'NFCE_SERIE' ).AsInteger := SerieNF;
                                      ExecSQL;
                             end;
                          dm.IBTransaction.Commit;

                       {  if not EnvioOFF then
                             DM.ACBrNFeDANFEFR1.vTroco := FrmFechaVenda.EdtTroco.Value
                         else
                            DM.ACBrNFeDANFEFR1.vTroco := TrocoSair;
                          dm.ECF.Desativar;
                          while dm.ECF.Ativo do
                              Sleep(1);
                          if GerouNumero then
                             DM.NovoNumeroNFCe( NumNF, SerieNF, True );
                          GerouNumero := False;   }
                        //  DM.ACBrNFeDANFEFR1.ImprimirDANFE( DM.ACBrNFe1.NotasFiscais.Items[0].NFe );

                          DM.ACBrNFeDANFEFR1.ImprimirDANFE( DM.ACBrNFe1.NotasFiscais.Items[0].NFe );
                         // AguardaImpressaDANFCE;
                          Result := True;
                     end
                     else
                         Result := False;
                end
                   else
                   begin
                              KDialog( 'Nota Rejeitada:' + #13 +
                         IntToStr(DM.ACBrNFe1.WebServices.Retorno.cMsg) + ': ' +
                         DM.ACBrNFe1.WebServices.Retorno.xMsg , 'NFCe', 'INFO' );
                       Result := False;
                   end;
                 exit;
              end
           else
             begin
                  if dm.IBTransaction.Active then
                     DM.IBTransaction.Commit;
                  DM.IBTransaction.StartTransaction;

                  with dm.QConsulta do
                     begin
                        Close;
                             SQL.Text := 'update NFECE_NOTA set  CHAVE_ACESSO_NFE=:CHAVE, FL_IMPRESSO=''S'',' +
                                          'DEPEC=''N'', NR_PROTOCOLO_NFE=:PROT, STATUS = ''S'', NR_RECIBO_NFE=:rec, where NR_NOTA=:venda and cd_empRESA=:emp';
                              ParamByName( 'venda' ).AsInteger := nota;
                              ParamByName( 'emp' ).AsInteger := iEmp;
                              ParamByName( 'CHAVE' ).AsString := DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
                              ParamByName( 'PROT' ).AsString := DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
                              ParamByName( 'REC' ).AsString :=  DM.ACBrNFe1.WebServices.Retorno.Recibo;
                              ExecSQL;
                     end;
               {   dm.IBTransaction.Commit;
                  if not EnvioOFF then
                       DM.ACBrNFeDANFEFR1.vTroco := FrmFechaVenda.EdtTroco.Value
                         else
                            DM.ACBrNFeDANFEFR1.vTroco := TrocoSair;
                dm.ECF.Desativar;
                while dm.ECF.Ativo do
                    Sleep(1);
                if GerouNumero then
                   DM.NovoNumeroNFCe( NumNF, SerieNF, True );
                GerouNumero := False; }
                DM.ACBrNFeDANFEFR1.ImprimirDANFE( DM.ACBrNFe1.NotasFiscais.Items[0].NFe );
               // AguardaImpressaDANFCE;

                Result := True;
             end;
   except
       on E: Exception do
          begin
              KDialog( 'Erro ao Enviar Nota:' + #13 +
              E.Message, 'NFCe', 'INFO' );
              if not EnvioOFF then
              begin
              if  KDialog( 'Deseja Imprimir em modo Offline?', 'NFCe', 'PERGUNTA' ) then

                     begin
                         DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis := teOffLine;
                         DM.ACBrNFe1.NotasFiscais.GerarNFe;
                         DM.ACBrNFe1.NotasFiscais.Assinar;
                         DM.ACBrNFe1.NotasFiscais.Validar;
                          if dm.IBTransaction.Active then
                             DM.IBTransaction.Commit;
                          DM.IBTransaction.StartTransaction;

                          with dm.QConsulta do
                             begin
                                Close;
                                     SQL.Text := 'update NFECE_NOTA set  CHAVE_ACESSO_NFE=:CHAVE,' +
                                                  'NR_PROTOCOLO_NFE=:PROT, DEPEC=:OFFLINE where NR_NOTA=:venda and cd_empRESA=:emp';
                                      ParamByName( 'venda' ).AsInteger := nota;
                                      ParamByName( 'emp' ).AsInteger := iEmp;
                                      ParamByName( 'CHAVE' ).AsString := DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
                                      ParamByName( 'PROT' ).AsString := DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
                                      ParamByName( 'OFFLINE' ).AsString := 'S';
                                      // ParamByName( 'NFCE_SERIE' ).AsInteger := SerieNF;
                                      ExecSQL;
                             end;
                       {   dm.IBTransaction.Commit;
                         if not EnvioOFF then
                             DM.ACBrNFeDANFEFR1.vTroco := FrmFechaVenda.EdtTroco.Value
                         else
                            DM.ACBrNFeDANFEFR1.vTroco := TrocoSair;
                          dm.ECF.Desativar;
                          while dm.ECF.Ativo do
                              Sleep(1);
                          if GerouNumero then
                           DM.NovoNumeroNFCe( NumNF, SerieNF, True );
                          GerouNumero := False;  }
                          DM.ACBrNFeDANFefr1.ImprimirDANFE( DM.ACBrNFe1.NotasFiscais.Items[0].NFe );
                          //  AguardaImpressaDANFCE;

                          Result := True;
                     end
                     else
                         Result := False;
              end
              else
                     Result := False;
          end;
   end;
//   DM.ACBrNFe1.Enviar()     }


end;



function TDM.NomePlanoConta(ID: String): string;
var
  qr: TFDQuery;
begin
  qr:= TFDQuery.Create(nil);
  qr.Connection:= DM.Coneccao;
  qr.SQL.Add('SELECT CODIGO,NOME FROM PLANOCONTAS WHERE CODIGO = ' + ID);
  qr.Open;

  if not qr.IsEmpty then
    Result:= qr.fieldbyname('NOME').AsString;

  qr.Destroy;
end;

procedure TDM.DTS_CLIDataChange(Sender: TObject; Field: TField);
begin
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'A' THEN formclientes.wwDBComboBox1.Text := 'CADASTRO APROVADO';
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'O' THEN formclientes.wwDBComboBox1.Text := 'CADASTRO EM OBSERVAÇÃO';
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'B' THEN formclientes.wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'I' THEN formclientes.wwDBComboBox1.Text := 'INATIVO';
      IF DM.SDS_CLI.FIELDBYNAME('ATIVO').AsString = 'S' THEN formclientes.wwDBComboBox1.Text := 'SPC';
end;

function TDM.BuscaPlanoConta(codigo: Integer): boolean;
begin
  Result := true;
  qConsulta.Close;
  qConsulta.sql.Text := 'SELECT CODIGO FROM PLANOCONTAS WHERE CODIGO=:CODIGO';
  qConsulta.Params[0].Value := codigo;
  QConsulta.Open;
  if qConsulta.IsEmpty then
    Result := false;
end;

END.
