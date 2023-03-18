unit RelatorioVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser, RLFilters, RLDraftFilter, RLHTMLFilter,
  RLPDFFilter, RLRichFilter;

type
  TFormRelatorioVendas = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    rldbtxtDESCRICAO_PRODUTO: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    rldbtxtENC_FINANCEIRO: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand3: TRLBand;
    RLLabel10: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDBResult2: TRLDBResult;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel11: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBText8: TRLDBText;
    rlsbdtl1: TRLSubDetail;
    rlbnd1: TRLBand;
    rlbl1: TRLLabel;
    rlbl2: TRLLabel;
    rldbtxtCODIGO: TRLDBText;
    rldbtxtCODIGO1: TRLDBText;
    rldbtxtCODIGO_CLIENTE: TRLDBText;
    rlbl3: TRLLabel;
    rldbtxtCODIGO2: TRLDBText;
    rlbl4: TRLLabel;
    rlbl5: TRLLabel;
    rlbl6: TRLLabel;
    rlbnd2: TRLBand;
    rlbl7: TRLLabel;
    rldbrslt2: TRLDBResult;
    rldbrslt3: TRLDBResult;
    rldbrslt4: TRLDBResult;
    rlbl8: TRLLabel;
    rlbl9: TRLLabel;
    rlbl10: TRLLabel;
    rlbl11: TRLLabel;
    datai: TRLLabel;
    dataf: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
    RLExpressionParser1: TRLExpressionParser;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLDraftFilter1: TRLDraftFilter;
    RLDBResult6: TRLDBResult;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel12: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dataiAfterPrint(Sender: TObject);
    procedure datafAfterPrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioVendas: TFormRelatorioVendas;

implementation

uses ModulodeDados, ModulodeDadosConsultas, relVendas,
 ModulodeDadosConsultas3;

{$R *.dfm}

procedure TFormRelatorioVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:= caFree;
FormRelatorioVendas:=nil;
FormRelatorioVendas.RLDraftFilter1.Destroy;
end;

procedure TFormRelatorioVendas.dataiAfterPrint(Sender: TObject);
begin
datai.Caption:= FormRelVendas.DateEdit1.Text;
end;

procedure TFormRelatorioVendas.datafAfterPrint(Sender: TObject);
begin
dataf.Caption:= FormRelVendas.DateEdit2.Text;
end;

procedure TFormRelatorioVendas.FormShow(Sender: TObject);
begin
datai.Caption:= FormRelVendas.DateEdit1.Text;
dataf.Caption:= FormRelVendas.DateEdit2.Text;
DM.SDS_Empresa.ACTIVE := True;
//DM.DTS_Empresa.Enabled := FALSE;
end;

end.
