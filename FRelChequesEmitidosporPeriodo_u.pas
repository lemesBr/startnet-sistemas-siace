unit FRelChequesEmitidosporPeriodo_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, DB, grimgctrl, QuickRpt, QRCtrls, qrpctrls, StdCtrls,
  Buttons, aDvSmoothEdit,
  DBAdvSmoothDatePicker, ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, AdvSmoothEditButton,
  AdvSmoothDatePicker;

type
  TFRelChequesEmitidosporPeriodo = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    dtInicial: TDBAdvSmoothDatePicker;
    dtFinal: TDBAdvSmoothDatePicker;
    BitBtn1: TBitBtn;
    ds_rel_chequesemitidosporperiodo: TDataSource;
    QRPDFFilter1: TQRPDFFilter;
    cds_rel_chequesEmitidosporperiodo: TFDQuery;
    cds_rel_chequesEmitidosporperiodoCOD_CHEQUE: TIntegerField;
    cds_rel_chequesEmitidosporperiodoVALOR: TFMTBCDField;
    cds_rel_chequesEmitidosporperiodoDATA_EMISSAO: TDateField;
    cds_rel_chequesEmitidosporperiodoDATA_VENCIMENTO: TDateField;
    cds_rel_chequesEmitidosporperiodoPAGO: TStringField;
    cds_rel_chequesEmitidosporperiodoORIGEM: TStringField;
    cds_rel_chequesEmitidosporperiodoDOCUMENTO_ORIGEM: TIntegerField;
    cds_rel_chequesEmitidosporperiodoCOD_CONTA: TIntegerField;
    cds_rel_chequesEmitidosporperiodoCOMP_NA_INCLUSAO: TStringField;
    cds_rel_chequesEmitidosporperiodoDATA_COMPENSACAO: TDateField;
    cds_rel_chequesEmitidosporperiodoHISTORICO: TStringField;
    cds_rel_chequesEmitidosporperiodoNUMERO_CHEQUE: TIntegerField;
    cds_rel_chequesEmitidosporperiodoCOD_USUARIO: TIntegerField;
    cds_rel_chequesEmitidosporperiodoCOD_EMPRESA: TIntegerField;
    cds_rel_chequesEmitidosporperiodoTROCO: TStringField;
    cds_rel_chequesEmitidosporperiodoFAVORECIDO: TStringField;
    cds_rel_chequesEmitidosporperiodoCOD_VENDA: TIntegerField;
    cds_rel_chequesEmitidosporperiodoCOD_COMPRA: TIntegerField;
    cds_rel_chequesEmitidosporperiodoOBSERVACAO: TStringField;
    cds_rel_chequesEmitidosporperiodoCOD_CLI: TIntegerField;
    cds_rel_chequesEmitidosporperiodoCOD_FORN: TIntegerField;
    cds_rel_chequesEmitidosporperiodoDATA_RETORNO: TDateField;
    cds_rel_chequesEmitidosporperiodoRETORNADO: TStringField;
    cds_rel_chequesEmitidosporperiodoPL_CONTA: TIntegerField;
    cds_rel_chequesEmitidosporperiodoID_VALE: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ShortDateFormat: string;
  end;

var
  FRelChequesEmitidosporPeriodo: TFRelChequesEmitidosporPeriodo;

implementation

uses ModulodeDados, Urelcheques;



{$R *.dfm}

procedure TFRelChequesEmitidosporPeriodo.BitBtn1Click(Sender: TObject);
var TelaRel : TFRelChequesEmitidosporPeriodo;
begin
   cds_rel_chequesEmitidosporperiodo.active :=true;
try
    cds_rel_chequesEmitidosporperiodo.Params[0].AsDate := DtInicial.Date;
    cds_rel_chequesEmitidosporperiodo.Params[1].AsDate := DtFinal.Date;
      TelaRel := TFRelChequesEmitidosporPeriodo.Create(Self);
   // Quickrep1.Preview;
    TelaRel.Close;
    FreeAndNil(TelaRel);
  finally
    cds_rel_chequesEmitidosporperiodo.Close;
  end;
  try
    cds_rel_chequesEmitidosporperiodo.active :=true;
    cds_rel_chequesEmitidosporperiodo.Params[0].AsDate := DtInicial.Date;
    cds_rel_chequesEmitidosporperiodo.Params[1].AsDate := DtFinal.Date;
   //   TelaRel := TFRelChequesEmitidosporPeriodo.Create(Self);
   FormRelcheques := tFormRelcheques.create(Self);
   FormRelcheques.Quickrep1.Preview;
  //  TelaRel.Close;
   // FreeAndNil(TelaRel);
  finally
    cds_rel_chequesEmitidosporperiodo.Close;
  end;
end;

procedure TFRelChequesEmitidosporPeriodo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFRelChequesEmitidosporPeriodo.FormShow(Sender: TObject);
var data_inicial: TDate;
var data_final: TDate;
begin
  data_inicial:= date;  //inicializa com a data atual
  data_final:= date;
  ShortDateFormat := 'dd/mm/yyyy';
  dtInicial.Text:= datetostr(data_inicial);
  dtFinal.Text:= datetostr(data_final);
end;

end.
