unit Ucomissao_resumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLParser, RLReport;

type
  TFormRel_Comissao_resumo = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
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
    RLLabel10: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand8: TRLBand;
    RLLabel27: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand4: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLBand5: TRLBand;
    RLDBText9: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLBand6: TRLBand;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel20: TRLLabel;
    RLBand3: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLBand7: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel35: TRLLabel;
    RLExpressionParser1: TRLExpressionParser;
    procedure RLReport1PageStarting(Sender: TObject);
    procedure RLReport1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRel_Comissao_resumo: TFormRel_Comissao_resumo;

implementation

uses RelatorioComissao, ModulodeDados;

{$R *.dfm}

procedure TFormRel_Comissao_resumo.RLReport1PageStarting(Sender: TObject);
begin
 RLLabel20.Caption := FormatFloat('R$: ##,##0.00',FormRelatorioComissao.TOTAL4);
 RLLabel22.Caption := FormatFloat('R$: ##,##0.00',FormRelatorioComissao.TOTAL2);
 RLLabel6.Caption := FormatFloat('R$: ##,##0.00',FormRelatorioComissao.TOTAl3);
 RLLabel21.Caption := FormatFloat('R$: ##,##0.00',FormRelatorioComissao.TOTAL1);
 RLLabel18.Caption := FormatFloat('R$: ##,##0.00',FormRelatorioComissao.TOTAL6);
 RLLabel19.Caption := FormatFloat('R$: ##,##0.00',FormRelatorioComissao.TOTAL5);
end;

procedure TFormRel_Comissao_resumo.RLReport1AfterPrint(Sender: TObject);
begin
datai.Caption:= FormRelatorioComissao.DateEdit5.Text;
dataf.Caption := FormRelatorioComissao.DateEdit6.Text;
RLLabel2.Caption := FormRelatorioComissao.Edit1.Text;
end;

end.
