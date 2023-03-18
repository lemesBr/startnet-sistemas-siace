unit ComissaoRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLDraftFilter, RLParser;

type
  TFormComissaoRecebida = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
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
    RLLabel12: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel10: TRLLabel;
    RLDBText1: TRLDBText;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand3: TRLBand;
    RLLabel14: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLLabel7: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLExpressionParser1: TRLExpressionParser;
    RLDraftFilter1: TRLDraftFilter;
    RLSubDetail1: TRLSubDetail;
    RLSubDetail2: TRLSubDetail;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLBand5: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBResult4: TRLDBResult;
    RLBand6: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    procedure RLLabel25AfterPrint(Sender: TObject);
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComissaoRecebida: TFormComissaoRecebida;

implementation

uses RelatorioComissao;

{$R *.dfm}

procedure TFormComissaoRecebida.RLLabel25AfterPrint(Sender: TObject);
begin
RLLabel25.Caption := FormatFloat('R$: ##,##0.00',RLDBResult3.Value + RLDBResult5.Value); //FloatToStr(RLDBResult3.Value + RLDBResult5.Value);
end;

procedure TFormComissaoRecebida.RLReport1PageStarting(Sender: TObject);
begin
datai.Caption:= FormRelatorioComissao.DateEdit3.Text;
dataf.Caption:= FormRelatorioComissao.DateEdit4.Text;
end;

end.
