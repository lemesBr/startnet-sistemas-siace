unit URelatorioNotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser, RLFilters, RLDraftFilter, RLPDFFilter,
  RLRichFilter, RLHTMLFilter, StdCtrls;

type
  TFormRel_VendasNotas = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
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
    rlbl1: TRLLabel;
    rlbl3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    rlbl11: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBResult1: TRLDBResult;
    rlbl6: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    rldbtxtDESCRICAO_PRODUTO: TRLDBText;
    RLDBText7: TRLDBText;
    rldbtxtCODIGO: TRLDBText;
    rldbtxtCODIGO2: TRLDBText;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    Matricial: TRLDraftFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLLabel7: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBResult2: TRLDBResult;
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRel_VendasNotas: TFormRel_VendasNotas;

implementation

uses Urelvendasnotas;

{$R *.dfm}

procedure TFormRel_VendasNotas.RLReport1PageStarting(Sender: TObject);
begin
datai.Caption:= FormRelVendaNotas.DateEdit1.Text;
dataf.Caption:= FormRelVendaNotas.DateEdit2.Text;
{IF  rldbtxtCODIGO.Caption = '65' then
label1.Caption := 'NFC-e'
ELSE
label1.Caption := 'NF-e' ;  }
end;

end.
