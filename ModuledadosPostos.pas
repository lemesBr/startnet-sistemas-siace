unit ModuledadosPostos;

interface

uses
  SysUtils, Classes, DB, DBClient, SimpleDS, Data.DBXFirebird;

type
  TDMP = class(TDataModule)
    sds_frentista: TSimpleDataSet;
    dts_frentista: TDataSource;
    SDS_Tanques: TSimpleDataSet;
    DTS_TANQUES: TDataSource;
    SDS_TanquesCOD_TANQUE: TIntegerField;
    SDS_TanquesID_TANQUE: TIntegerField;
    SDS_TanquesLITROS: TFMTBCDField;
    SDS_TanquesULTATUAL: TSQLTimeStampField;
    SDS_TanquesULTATUALCODSETOR: TIntegerField;
    SDS_TanquesULTATUALCODSETORUSER: TIntegerField;
    SDS_TanquesDATAHORA: TSQLTimeStampField;
    SDS_TanquesENABLED: TIntegerField;
    SDS_TanquesOBS: TStringField;
    SDS_TanquesCOD_PRODUTOS: TIntegerField;
    SDS_TanquesLITROS_ATUAL: TFMTBCDField;
    SDS_BOMBA: TSimpleDataSet;
    DTS_BOMBA: TDataSource;
    SDS_BOMBACOD_BOMBA: TIntegerField;
    SDS_BOMBACOD_FRENTISTA: TIntegerField;
    SDS_BOMBAID_BOMBA: TIntegerField;
    SDS_BOMBAQNT_BICO: TIntegerField;
    SDS_BOMBAPICPATH: TStringField;
    SDS_BOMBAULTATUAL: TSQLTimeStampField;
    SDS_BOMBAULTATUALCODSETOR: TIntegerField;
    SDS_BOMBAULTATUALCODSETORUSER: TIntegerField;
    SDS_BOMBADATAHORA: TSQLTimeStampField;
    SDS_BOMBAENABLED: TIntegerField;
    SDS_BOMBAOBS: TStringField;
    SDS_BOMBAAUTO_AUTORIZA: TSmallintField;
    SDS_BOMBADESAUTORIZA_APOS_VALOR: TFMTBCDField;
    SDS_BOMBADESAUTORIZA_APOS_QNT: TIntegerField;
    SDS_BOMBASERIE: TStringField;
    SDS_BOMBAFABRICANTE: TStringField;
    SDS_BOMBAMODELO: TStringField;
    SDS_BICOS: TSimpleDataSet;
    DTS_BICOS: TDataSource;
    SDS_BICOSCOD_BICO: TIntegerField;
    SDS_BICOSCOD_BOMBA: TIntegerField;
    SDS_BICOSCOD_TANQUE: TIntegerField;
    SDS_BICOSCOD_FRENTISTA: TIntegerField;
    SDS_BICOSULTATUAL: TSQLTimeStampField;
    SDS_BICOSULTATUALCODSETOR: TIntegerField;
    SDS_BICOSULTATUALCODSETORUSER: TIntegerField;
    SDS_BICOSCOD_PRODUTOS: TIntegerField;
    SDS_BICOSDATAHORA: TSQLTimeStampField;
    SDS_BICOSENABLED: TIntegerField;
    SDS_BICOSOBS: TStringField;
    SDS_BICOSID_BICO: TStringField;
    SDS_BICOSPOSICAO: TIntegerField;
    SDS_TanquesVLR_SAI: TFMTBCDField;
    SDS_TanquesVLR_ENT: TFMTBCDField;
    SDS_TanquesEST_INI: TFMTBCDField;
    SDS_TanquesEST_ATU: TFMTBCDField;
    SDS_TanquesDAT_ULT_ENT: TDateField;
    SDS_TanquesNUM_NF: TIntegerField;
    SDS_TanquesDAT_ULT_SAI: TDateField;
    SDS_TanquesESTOQUE_MEDICAO: TFMTBCDField;
    sds_frentistaCOD_FRENTISTA: TIntegerField;
    sds_frentistaID_FRENTISTA: TIntegerField;
    sds_frentistaNOME: TStringField;
    sds_frentistaCOMISSAO: TFMTBCDField;
    sds_frentistaPICPATH: TStringField;
    sds_frentistaULTATUAL: TSQLTimeStampField;
    sds_frentistaULTATUALCODSETOR: TIntegerField;
    sds_frentistaULTATUALCODSETORUSER: TIntegerField;
    sds_frentistaDATAHORA: TSQLTimeStampField;
    sds_frentistaENABLED: TIntegerField;
    sds_frentistaOBS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMP: TDMP;

implementation

uses ModulodeDados;

{$R *.dfm}

end.
