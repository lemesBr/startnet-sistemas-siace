unit RelVendasProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLDraftFilter, RLParser, RLHTMLFilter,
  RLRichFilter, RLPDFFilter;

type
  TFormRelVendasProd = class(TForm)
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
    rlbl9: TRLLabel;
    rlbl10: TRLLabel;
    datai: TRLLabel;
    dataf: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
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
    RLExpressionParser1: TRLExpressionParser;
    Matricial: TRLDraftFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLDBText2: TRLDBText;
    RLLabel12: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLBand6: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLBand7: TRLBand;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    procedure datafAfterPrint(Sender: TObject);
    procedure dataiAfterPrint(Sender: TObject);
    procedure RLReport1PageStarting(Sender: TObject);
    procedure RLReport1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelVendasProd: TFormRelVendasProd;

implementation

uses ModulodeDadosConsultas3, Rel_vendas_produtos, ModuleDados1;

{$R *.dfm}

procedure TFormRelVendasProd.datafAfterPrint(Sender: TObject);
begin
dataf.Caption:= FormRel_vendas_produtos.DateEdit2.Text;
end;

procedure TFormRelVendasProd.dataiAfterPrint(Sender: TObject);
begin
datai.Caption:= FormRel_vendas_produtos.DateEdit1.Text;
end;

procedure TFormRelVendasProd.RLReport1PageStarting(Sender: TObject);
begin
if FormRel_vendas_produtos.CheckBox4.Checked = True then
begin
RLSubDetail1.Visible := True;
end ELSE
RLSubDetail1.Visible := False;
end;
procedure TFormRelVendasProd.RLReport1AfterPrint(Sender: TObject);
var
  total1, total2, total3 :Real;
begin
total1 := RLDBResult2.Value;
total2 := RLDBResult6.Value;
total3 := total1 + total2;
RLLabel24.Caption := FloatToStr(total3);
end;

end.
