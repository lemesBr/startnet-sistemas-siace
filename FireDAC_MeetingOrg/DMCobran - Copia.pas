unit DMCobran;

interface

uses
  SysUtils, Classes, DBXpress, DB, DBClient, SimpleDS, SqlExpr, DBTables,
  FMTBcd;

type
  TDMCobranca = class(TDataModule)
    dts_cedente: TDataSource;
    Dts_Crediario: TDataSource;
    QryTitulos: TSQLQuery;
    QryTitulosCODIGO: TIntegerField;
    QryTitulosCODIGO_CLIENTE: TIntegerField;
    QryTitulosDATA_COMPRA: TDateField;
    QryTitulosDATA_VENCIMENTO: TDateField;
    QryTitulosDATA_BAIXA: TDateField;
    QryTitulosHISTORICO: TStringField;
    QryTitulosUSUARIO_VENDA: TStringField;
    QryTitulosUSUARIO_BAIXA: TStringField;
    QryTitulosSITUACAO: TStringField;
    QryTitulosVALOR_COMPRA: TFMTBCDField;
    QryTitulosVALOR_JUROS: TFMTBCDField;
    QryTitulosVALOR_ACRESCIMO: TFMTBCDField;
    QryTitulosVALOR_DESCONTO: TFMTBCDField;
    QryTitulosVALOR_PAGAR: TFMTBCDField;
    QryTitulosVALOR_PAGO: TFMTBCDField;
    QryTitulosVALOR_TOTAL: TFMTBCDField;
    QryTitulosCODIGO_COMPRA: TIntegerField;
    QryTitulosPARCELA: TStringField;
    QryTitulosNUMBOLETO: TStringField;
    QryTitulosBANCO_PORTADOR: TIntegerField;
    QryTitulosREMESSA: TStringField;
    QryTitulosDATACREDITO: TDateField;
    QryTitulosID_PORTADOR: TIntegerField;
    qryCedentes: TSQLQuery;
    qryCedentesCODIGO_BOLETO: TIntegerField;
    qryCedentesCOD_EMPRESA: TIntegerField;
    qryCedentesDESCRICAO: TStringField;
    qryCedentesBANCO_PORTADOR: TIntegerField;
    qryCedentesQUANT_DIAS_PROTESTO: TSmallintField;
    qryCedentesOBSERVACAO: TStringField;
    qryCedentesLOCAL_PAGAMENTO: TStringField;
    qryCedentesTIPO: TStringField;
    qryCedentesNOMECEDENTE: TStringField;
    qryCedentesCNPJCEDENTE: TStringField;
    qryCedentesTIPOPESSOACEDENTE: TStringField;
    qryCedentesCODIGOAGENCIA: TStringField;
    qryCedentesDIGITOAGENCIA: TStringField;
    qryCedentesNUMEROCONTA: TStringField;
    qryCedentesDIGITOCONTA: TStringField;
    qryCedentesCARTEIRA: TStringField;
    qryCedentesCONVENIO: TStringField;
    qryCedentesVLRABATIMENTO: TFloatField;
    qryCedentesVLRDESCONTO: TFloatField;
    qryCedentesVLRDESPESACOBRANCA: TFloatField;
    qryCedentesVLRIOF: TFloatField;
    qryCedentesVLRMORAJUROS: TFloatField;
    qryCedentesVLROUTRASDEPESAS: TFloatField;
    qryCedentesVLROUTROSCREDITOS: TFloatField;
    qryCedentesFLAG_GERAR_REMESSA: TStringField;
    qryCedentesNOSSONUMERO: TStringField;
    qryCedentesNUMERO_REMESSA: TIntegerField;
    qryCedentesANO_REFERENCIA: TStringField;
    qryCedentesPROTESTAR_AUTOMATICO: TStringField;
    qryCedentesMODELO: TStringField;
    qryCedentesUSERCAD: TStringField;
    qryCedentesDATACAD: TDateField;
    qryCedentesNOME_AGENCIA: TStringField;
    qryCedentesCEDENTECODIGO: TStringField;
    qryCedentesCEDENTECODIGODIGITO: TStringField;
    qryCedentesCIDADE: TStringField;
    qryCedentesENDERECO: TStringField;
    qryCedentesUF: TStringField;
    qryCedentesEMAIL: TStringField;
    qryCedentesNUMERO: TIntegerField;
    qryCedentesCEP: TStringField;
    qryCedentesBAIRRO: TStringField;
    qryCedentesCOMPLEMENTO: TStringField;
    qryCedentesANO: TStringField;
    qryCedentesTP_COBRANCA: TStringField;
    qryCedentesdadosCedente: TStringField;
    SDS_Crediario: TSimpleDataSet;
    Sds_cedente: TSimpleDataSet;
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
    Sds_cedenteCODIGO_BOLETO: TIntegerField;
    Sds_cedenteCOD_EMPRESA: TIntegerField;
    Sds_cedenteDESCRICAO: TStringField;
    Sds_cedenteBANCO_PORTADOR: TIntegerField;
    Sds_cedenteQUANT_DIAS_PROTESTO: TSmallintField;
    Sds_cedenteOBSERVACAO: TStringField;
    Sds_cedenteLOCAL_PAGAMENTO: TStringField;
    Sds_cedenteTIPO: TStringField;
    Sds_cedenteNOMECEDENTE: TStringField;
    Sds_cedenteCNPJCEDENTE: TStringField;
    Sds_cedenteTIPOPESSOACEDENTE: TStringField;
    Sds_cedenteCODIGOAGENCIA: TStringField;
    Sds_cedenteDIGITOAGENCIA: TStringField;
    Sds_cedenteNUMEROCONTA: TStringField;
    Sds_cedenteDIGITOCONTA: TStringField;
    Sds_cedenteCARTEIRA: TStringField;
    Sds_cedenteCONVENIO: TStringField;
    Sds_cedenteVLRABATIMENTO: TFloatField;
    Sds_cedenteVLRDESCONTO: TFloatField;
    Sds_cedenteVLRDESPESACOBRANCA: TFloatField;
    Sds_cedenteVLRIOF: TFloatField;
    Sds_cedenteVLRMORAJUROS: TFloatField;
    Sds_cedenteVLROUTRASDEPESAS: TFloatField;
    Sds_cedenteVLROUTROSCREDITOS: TFloatField;
    Sds_cedenteFLAG_GERAR_REMESSA: TStringField;
    Sds_cedenteNOSSONUMERO: TStringField;
    Sds_cedenteNUMERO_REMESSA: TIntegerField;
    Sds_cedenteANO_REFERENCIA: TStringField;
    Sds_cedentePROTESTAR_AUTOMATICO: TStringField;
    Sds_cedenteMODELO: TStringField;
    Sds_cedenteUSERCAD: TStringField;
    Sds_cedenteDATACAD: TDateField;
    Sds_cedenteNOME_AGENCIA: TStringField;
    Sds_cedenteCEDENTECODIGO: TStringField;
    Sds_cedenteCEDENTECODIGODIGITO: TStringField;
    Sds_cedenteCIDADE: TStringField;
    Sds_cedenteENDERECO: TStringField;
    Sds_cedenteUF: TStringField;
    Sds_cedenteEMAIL: TStringField;
    Sds_cedenteNUMERO: TIntegerField;
    Sds_cedenteCEP: TStringField;
    Sds_cedenteBAIRRO: TStringField;
    Sds_cedenteCOMPLEMENTO: TStringField;
    Sds_cedenteANO: TStringField;
    Sds_cedenteTP_COBRANCA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    end;

var
  DMCobranca: TDMCobranca;

implementation

uses ModulodeDados;

{$R *.dfm}

end.
