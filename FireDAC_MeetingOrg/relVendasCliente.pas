unit relVendasCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLDraftFilter, RLRichFilter, RLPDFFilter,
  RLParser;

type
  TFormRelVdaCliente = class(TForm)
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
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    rlsbdtl1: TRLSubDetail;
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
    rlbnd2: TRLBand;
    rlbl7: TRLLabel;
    rldbrslt2: TRLDBResult;
    rldbrslt3: TRLDBResult;
    rldbrslt4: TRLDBResult;
    RLRichFilter1: TRLRichFilter;
    RLDraftFilter1: TRLDraftFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLPDFFilter1: TRLPDFFilter;
    RLDBText2: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText9: TRLDBText;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelVdaCliente: TFormRelVdaCliente;

implementation

uses ModulodeDados, ModulodeDadosConsultas, ModulodeDadosConsultas3,
  relVendas;

{$R *.dfm}

procedure TFormRelVdaCliente.FormShow(Sender: TObject);
begin
datai.Caption:= FormRelVendas.DateEdit1.Text;
dataf.Caption:= FormRelVendas.DateEdit2.Text;
DM.DTS_Empresa.Enabled := True;
DM.DTS_Empresa.Enabled := FALSE;
end;

procedure TFormRelVdaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:= caFree;
FormRelVdaCliente:=nil;
FormRelVdaCliente.RLDraftFilter1.Destroy;
end;

end.
