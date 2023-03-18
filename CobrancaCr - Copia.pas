unit CobrancaCr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLFilters, RLDraftFilter, RLParser, RLPDFFilter, RLReport,
  RLRichFilter;

type
  TFormCobrancaCr = class(TForm)
    RLRichFilter1: TRLRichFilter;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    rlbl5: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel1: TRLLabel;
    rlbl12: TRLLabel;
    rlbl1: TRLLabel;
    rlbl3: TRLLabel;
    rlbl2: TRLLabel;
    rlbl9: TRLLabel;
    datai: TRLLabel;
    rlbl10: TRLLabel;
    dataf: TRLLabel;
    RLLabel11: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel24: TRLLabel;
    RLBand4: TRLBand;
    RLLabel19: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLGroup1: TRLGroup;
    RLBand5: TRLBand;
    RLLabel14: TRLLabel;
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
    RLDBText1: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText2: TRLDBText;
    RLBand2: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
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
    RLDBText21: TRLDBText;
    RLDBText3: TRLDBText;
    RLPDFFilter1: TRLPDFFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLDraftFilter1: TRLDraftFilter;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCobrancaCr: TFormCobrancaCr;

implementation

uses Udmcob, ModulodeDados, ConsultaContasReceber;

{$R *.dfm}

procedure TFormCobrancaCr.FormShow(Sender: TObject);
begin
datai.Caption:= FormConsultaCR.DateEdit1.Text;
dataf.Caption:= FormConsultaCR.DateEdit2.Text;
datai.Caption:= FormConsultaCR.DateEdit3.Text;
dataf.Caption:= FormConsultaCR.DateEdit4.Text;
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
