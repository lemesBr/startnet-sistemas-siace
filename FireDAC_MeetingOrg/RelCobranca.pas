unit RelCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser, RLFilters, RLDraftFilter, RLPDFFilter,
  RLRichFilter;

type
  TFormRelCobranca = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel1: TRLLabel;
    rlbl12: TRLLabel;
    rlbl1: TRLLabel;
    rlbl3: TRLLabel;
    rlbl2: TRLLabel;
    rlbl5: TRLLabel;
    rlbl9: TRLLabel;
    datai: TRLLabel;
    rlbl10: TRLLabel;
    dataf: TRLLabel;
    RLLabel11: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand3: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLBand4: TRLBand;
    RLExpressionParser1: TRLExpressionParser;
    RLLabel15: TRLLabel;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLLabel16: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel17: TRLLabel;
    RLBand5: TRLBand;
    RLLabel20: TRLLabel;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLLabel19: TRLLabel;
    RLDraftFilter1: TRLDraftFilter;
    RLDBText1: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel14: TRLLabel;
    RLBand2: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLGroup1: TRLGroup;
    RLLabel24: TRLLabel;
    RLDBText3: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelCobranca: TFormRelCobranca;

implementation

uses Udmcob, cobranca, ModulodeDados, Urelboletos;

{$R *.dfm}

procedure TFormRelCobranca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:= caFree;
FormRelCobranca:=nil;
//FormRelCobranca.RLDraftFilter1.Destroy;
end;

procedure TFormRelCobranca.FormShow(Sender: TObject);
begin
IF TAG = 1 then
begin
datai.Caption:= Formcobranca.DateEdit1.Text;
dataf.Caption:= Formcobranca.DateEdit2.Text;
datai.Caption:= Formcobranca.DateEdit3.Text;
dataf.Caption:= Formcobranca.DateEdit4.Text;
end;
IF TAG = 2 then
begin
datai.Caption:= FormRelBoletos.DateEdit3.Text;
dataf.Caption:= FormRelBoletos.DateEdit4.Text;
end;
DM.DTS_Empresa.Enabled := True;
DM.DTS_Empresa.Enabled := FALSE;
//DMCOB.Sds_Clientes_Cobranca.Active := False;
//DMCOB.Sds_Clientes_Cobranca.Active := true;
//DMCOB.sds_crediario.Active := False;
//DMCOB.sds_crediario.Active := true;
DM.SDS_CONFIGURACOES.active := False;
DM.SDS_CONFIGURACOES.active := true;
end;

end.
