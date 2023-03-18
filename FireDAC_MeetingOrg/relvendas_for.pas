unit relvendas_for;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLDraftFilter, RLParser, RLPDFFilter,
  RLRichFilter;

type
  TFormRel_vendas = class(TForm)
    RLRichFilter1: TRLRichFilter;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    rlbl1: TRLLabel;
    rlbl2: TRLLabel;
    rlbl3: TRLLabel;
    rlbl9: TRLLabel;
    rlbl10: TRLLabel;
    datai: TRLLabel;
    dataf: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    rldbtxtDESCRICAO_PRODUTO: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    rldbtxtENC_FINANCEIRO: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand3: TRLBand;
    rlbl11: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult1: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    rlbl6: TRLLabel;
    rlbnd1: TRLBand;
    rlbl4: TRLLabel;
    rldbtxtCODIGO: TRLDBText;
    rldbtxtCODIGO1: TRLDBText;
    rldbtxtCODIGO_CLIENTE: TRLDBText;
    rldbtxtCODIGO2: TRLDBText;
    rlbl8: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText9: TRLDBText;
    rlbnd2: TRLBand;
    rlbl7: TRLLabel;
    rldbrslt2: TRLDBResult;
    rldbrslt3: TRLDBResult;
    rldbrslt4: TRLDBResult;
    RLPDFFilter1: TRLPDFFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLDraftFilter1: TRLDraftFilter;
    RLGroup1: TRLGroup;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRel_vendas: TFormRel_vendas;

implementation

uses relVendas, ModulodeDados;

{$R *.dfm}

procedure TFormRel_vendas.FormShow(Sender: TObject);
begin
datai.Caption:= FormRelVendas.DateEdit1.Text;
dataf.Caption:= FormRelVendas.DateEdit2.Text;
DM.DTS_Empresa.Enabled := True;
DM.DTS_Empresa.Enabled := FALSE;
end;

end.
