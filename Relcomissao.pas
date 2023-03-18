unit Relcomissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser;

type
  TFormComissaoRel = class(TForm)
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
    RLExpressionParser1: TRLExpressionParser;
    RLBand4: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLBand8: TRLBand;
    RLLabel27: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand7: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel35: TRLLabel;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLBand6: TRLBand;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel2: TRLLabel;
    procedure dataiAfterPrint(Sender: TObject);
    procedure datafAfterPrint(Sender: TObject);
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComissaoRel: TFormComissaoRel;

implementation

uses RelatorioComissao, ModulodeDados;

{$R *.dfm}

procedure TFormComissaoRel.dataiAfterPrint(Sender: TObject);
begin
datai.Caption:= FormRelatorioComissao.DateEdit5.Text;
end;

procedure TFormComissaoRel.datafAfterPrint(Sender: TObject);
begin
dataf.Caption := FormRelatorioComissao.DateEdit6.Text;
RLLabel2.Caption := FormRelatorioComissao.Edit1.Text;
end;

procedure TFormComissaoRel.RLReport1PageStarting(Sender: TObject);

begin
 RLLabel20.Caption := FormatFloat('R$: ##,##0.00',FormRelatorioComissao.TOTAL4);
 RLLabel22.Caption := FormatFloat('R$: ##,##0.00',FormRelatorioComissao.TOTAL2);
 RLLabel6.Caption := FormatFloat('R$: ##,##0.00',FormRelatorioComissao.TOTAl3);
 RLLabel21.Caption := FormatFloat('R$: ##,##0.00',FormRelatorioComissao.TOTAL1);
 RLLabel18.Caption := FormatFloat('R$: ##,##0.00',FormRelatorioComissao.TOTAL6);
 RLLabel19.Caption := FormatFloat('R$: ##,##0.00',FormRelatorioComissao.TOTAL5);

end;

end.
