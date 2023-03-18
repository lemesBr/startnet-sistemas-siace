unit UInventario_custo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLRichFilter, RLReport, RLPDFFilter, RLFilters, RLHTMLFilter,
  RLParser, RLDraftFilter, RLXLSFilter;

type
  TFormInventario_Custo = class(TForm)
    Matricial: TRLDraftFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
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
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
    RLLabel12: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    rlsbdtl1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    rldbtxtDESCRICAO_PRODUTO: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    rldbtxtENC_FINANCEIRO: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand3: TRLBand;
    rlbl11: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult4: TRLDBResult;
    rlbl6: TRLLabel;
    RLRichFilter1: TRLRichFilter;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel9: TRLLabel;
    RLXLSFilter1: TRLXLSFilter;
    RLDBText6: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLBand4: TRLBand;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInventario_Custo: TFormInventario_Custo;

implementation

uses Uinventario_rel, ModulodeDadosConsultas, RelatorioEstoque;

{$R *.dfm}

procedure TFormInventario_Custo.RLReport1PageStarting(Sender: TObject);
begin
if Tag = 0 then
begin
RLLabel9.Caption := FormInv.dateedit1.text;
end;
if Tag = 1  then
begin
RLLabel9.Caption := FormRelatorioEstoqueAtual.sdateedit1.text;
end;
end;

end.
