unit RelVendasPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLFilters, RLDraftFilter, RLParser, RLPDFFilter, RLReport;

type
  TFormRelVendasPagto = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel7: TRLLabel;
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
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    rlsbdtl1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    rldbtxtDESCRICAO_PRODUTO: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand3: TRLBand;
    rlbl11: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBResult1: TRLDBResult;
    rlbl6: TRLLabel;
    rlbnd1: TRLBand;
    rlbl4: TRLLabel;
    rldbtxtCODIGO: TRLDBText;
    rldbtxtCODIGO1: TRLDBText;
    rldbtxtCODIGO_CLIENTE: TRLDBText;
    rldbtxtCODIGO2: TRLDBText;
    rlbl8: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText9: TRLDBText;
    rlbnd2: TRLBand;
    RLLabel12: TRLLabel;
    rlbl7: TRLLabel;
    rldbrslt2: TRLDBResult;
    rldbrslt3: TRLDBResult;
    rldbrslt4: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLPDFFilter1: TRLPDFFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLDraftFilter1: TRLDraftFilter;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelVendasPagto: TFormRelVendasPagto;

implementation

uses ModulodeDadosConsultas3, relvendaspgto;

{$R *.dfm}

procedure TFormRelVendasPagto.RLReport1PageStarting(Sender: TObject);
begin
RLLabel5.Caption := FormVendasPagto.Currencyedit1.text;
RLLabel9.Caption := FormVendasPagto.Currencyedit2.text;
RLLabel16.Caption := FormVendasPagto.Currencyedit3.text;
RLLabel18.Caption := FormVendasPagto.Currencyedit4.text;
RLLabel21.Caption := FormVendasPagto.Currencyedit5.text;
RLLabel20.Caption := FormVendasPagto.Currencyedit6.text;
RLLabel23.Caption := FormVendasPagto.Currencyedit7.text;
end;

end.
